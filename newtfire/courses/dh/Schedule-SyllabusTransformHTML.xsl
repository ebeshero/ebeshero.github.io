<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml" version="3.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">

    <xsl:output method="xhtml" doctype-system="about:legacy-compat"/> 
    <!--<xsl:strip-space elements="*"/>-->
   
    <xsl:template match="/">

        <html>
            <head>
                <title>
                    <xsl:apply-templates select="//fileDesc//title"/>
                </title>
                <meta name="Description"
                    content="Supported by the University of Pittsburgh at Greensburg"/>
                <meta name="keywords"
                    content="Digital Humanities, Syllabus, XML, TEI, XSLT, XQuery, Schematron, Relax NG, SVG, digital scholarship, digital edition, electronic edition, electronic text, humanities computing, electronic editing, Beshero-Bondar"/>
                <link rel="stylesheet" type="text/css" href="syllsched.css"/>
                <script type="text/javascript" src="jumpingDateLinks-Test.js">//</script>
            </head>
            <body>

                <xsl:comment>#include virtual="top-index.html" </xsl:comment>
                        <h1>
                            <span class="banner">
                                <xsl:apply-templates
                                    select="//text/front/div[@type='courseID']/head"/>
                            </span>
                        </h1>

                        <h2>
                            <span class="banner">
                                <xsl:apply-templates
                                    select="//text/front/div[@type='courseID']/p/text()"/>
                                <xsl:text>: Autumn 2015 Syllabus</xsl:text>
                            </span>
                        </h2>
                        

                    <div id="main">
                        <div id="courseInfo">
                         <!-- <h3>
                                <a href="CDA.html"> Course Description and Policies</a>
                            </h3>-->

                            <xsl:apply-templates select="//div[@type='meetTimes']"/>
                            <p><a class="dateRef">Jump Down to the Schedule</a></p>


                            <xsl:apply-templates select="//div[@type='courseMtls']"/>

                            <xsl:apply-templates select="//div[@type='online']"/>
                            <!--ebb: Moved to bottom of page as students get into the course. Replace here at start of next course!-->
  <!--<xsl:apply-templates select="//div[@type='courseMtls']"/>-->
                          <!--  <xsl:apply-templates select="//div[@type='projects']"/>-->
                            
                            <xsl:apply-templates select="//div[@type='guides']/head"/>
                       
                        
                    

                        </div>

                        <div id="schedule">

                            <!--<h2> <xsl:apply-templates select="//div[@type='schedule']/head"/></h2>-->

                            <!--    <table>-->

                            <xsl:apply-templates select="//div[@type='schedule']/div[@type='week']"/>


                            <!--</table>-->


                        </div>
                        
                        
                    </div>


              
                <hr/>




            </body>

        </html>

    </xsl:template>



    <xsl:template match="div[@type='week']">
        <xsl:choose>
            <xsl:when test="@n">
                <!--<tr>
         <td>-->
                <table>

                    <tr>
                        <th id="Week{@n}">
                           
                            <h4>
                                <em>
                                    <xsl:text>Week </xsl:text>
                                    <xsl:value-of select="@n"/>
                                </em>
                            </h4>
                        </th>
                        <th>
                            <h4>
                                <em>In Class</em>
                            </h4>
                        </th>
                        <th>
                            <h4>
                                <em>Due Next Time</em>
                            </h4>
                        </th>
                    </tr>
                    <xsl:apply-templates select="div[@type='day']"/>
                </table>
                <!--</td>
           </tr>-->


            </xsl:when>
            <xsl:otherwise>


                <!--<tr><td>-->
                <table>
                    <tr>
                        <td>
                            <h4>
                                <xsl:apply-templates select="div[@type='day']/head/date/text()"/>
                            </h4>
                            <xsl:if test="div[@type='day']/head/date/note">
                                <span class="smaller">
                                    <xsl:apply-templates select="div[@type='day']/head/date/note"/>
                                </span>
                            </xsl:if>
                        </td>
                        <td>
                            <xsl:apply-templates select="div[@type='day']/div[@type='assign']"/>
                        </td>
                    </tr>
                </table>
                <!--</td>
</tr>-->

            </xsl:otherwise>

        </xsl:choose>
    </xsl:template>


    <xsl:template match="div[@type='day'][parent::div/@n]">

        <tr id="d{head/date/@when}">
            <td><!--ebb delete this <td> if we have to put the commented-out code back, if the JavaScript doesn't work!-->
            <!--2015-10-01 ebb: This should no longer be necessary, now that we have a functioning JavaScript for jumping to the current, or closest preceding date!
                <xsl:variable name="dateToken" select="tokenize(head/date/@when, '-')"/>
            <td><xsl:choose>
                <xsl:when test="head[matches(., '[MW]')][../following-sibling::div[@type='day'][1][head[not(matches(., 'T'))]]]">
                    <a id="d{$dateToken[1]}-{$dateToken[2]}-{number($dateToken[last()]) + 1 }"/>
                </xsl:when>
                <xsl:when test="head[../following-sibling::div[@type='day'][1][head[matches(., 'T')]]]"></xsl:when>
                <xsl:when test="head[matches(., 'T')]"></xsl:when>
                <xsl:when test="head[matches(., 'F')][not(./date[contains(., 'Last Day of Classes')])]"><a id="d{$dateToken[1]}-{$dateToken[2]}-{number($dateToken[last()]) + 1 }"/> 
                    <a id="d{$dateToken[1]}-{$dateToken[2]}-{number($dateToken[last()]) + 2 }"/></xsl:when>
                <xsl:when test="head[matches(., 'W.+?F')]">
                    <a id="d{$dateToken[1]}-{$dateToken[2]}-{number($dateToken[last()]) + 1 }"/>
                    <a id="d{$dateToken[1]}-{$dateToken[2]}-{number($dateToken[last()]) + 2 }"/>
                    <a id="d{$dateToken[1]}-{$dateToken[2]}-{number($dateToken[last()]) + 3 }"/>
                    <a id="d{$dateToken[1]}-{$dateToken[2]}-{number($dateToken[last()]) + 4 }"/>
                </xsl:when>
                <xsl:when test="head/date[contains(., 'Last Day of Classes')]">
                    <a id="d{$dateToken[1]}-{$dateToken[2]}-{number($dateToken[last()]) + 1 }"/>
                    <a id="d{$dateToken[1]}-{$dateToken[2]}-{number($dateToken[last()]) + 2 }"/>
                    <a id="d{$dateToken[1]}-{$dateToken[2]}-{number($dateToken[last()]) + 3 }"/>
                    <a id="d{$dateToken[1]}-{$dateToken[2]}-{number($dateToken[last()]) + 4 }"/>
                    <a id="d{$dateToken[1]}-{$dateToken[2]}-{number($dateToken[last()]) + 5 }"/>
                    <a id="d{$dateToken[1]}-{$dateToken[2]}-{number($dateToken[last()]) + 6 }"/>
                    <a id="d{$dateToken[1]}-{$dateToken[2]}-{number($dateToken[last()]) + 7 }"/>
                    <a id="d{$dateToken[1]}-{$dateToken[2]}-{number($dateToken[last()]) + 8 }"/>
                </xsl:when>
            </xsl:choose>-->
                <h4>
                    <xsl:apply-templates select="head/date/text()"/>
                </h4>
                <xsl:if test="head/date/note">
                    <xsl:text> </xsl:text>
                    <span class="smaller">
                        <xsl:apply-templates select="head/date/note"/>
                    </span>
                </xsl:if>
            </td>

            <td>
                <xsl:apply-templates select="div[@type='inclass']"/>
            </td>
            <td>
                <xsl:apply-templates select="div[@type='assign']"/>
            </td>
        </tr>


    </xsl:template>




    <xsl:template match="div[@style='main']/head">
        <h2>
            <xsl:apply-templates/>
        </h2>

    </xsl:template>

    <!-- <xsl:template match="body//div[not(@style='main')]/head">
        <h4><xsl:apply-templates/></h4>
        
    </xsl:template>-->

    <xsl:template match="list[not(@type='numbered')]">
        <ul>
            <xsl:apply-templates/>

        </ul>

    </xsl:template>

    <xsl:template match="list[@type='numbered']">
        <ol>
            <xsl:apply-templates/>

        </ol>

    </xsl:template>

    <xsl:template match="item">
        <li>
            <xsl:apply-templates/>
        </li>
    </xsl:template>


    <xsl:template match="ref">
        <a href="{@target}">
            <xsl:apply-templates/>
        </a>
    </xsl:template>

    <xsl:template match="p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <xsl:template match="hi">
        <strong>
            <xsl:apply-templates/>
        </strong>

    </xsl:template>

    <xsl:template match="note">
        <xsl:text> </xsl:text>
        <span class="smaller">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="body//title[not(@level)] | body//title[@level='m']">
        <cite><xsl:apply-templates/></cite>
        
    </xsl:template>
    
    <xsl:template match="body//title[@level='a']">
        <cite class="sub"><xsl:apply-templates/></cite>
        
    </xsl:template>
    
    <xsl:template match="q">
        <q><xsl:apply-templates/></q>
    </xsl:template>


</xsl:stylesheet>
