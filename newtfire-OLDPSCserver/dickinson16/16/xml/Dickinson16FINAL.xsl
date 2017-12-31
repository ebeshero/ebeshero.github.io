<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml" version="3.0">

    <xsl:output method="xhtml" encoding="utf-8" indent="yes" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:variable name="witness" select="//front/descendant::witness/@xml:id" as="xs:string+"/>
    <!--ebb and djb: Witness is anything with a hash that is not df16-->
  
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="../css/styles.css"/>
                <script type="text/javascript" src="../scripts/dickinson.js"/>
                <title>Emily Dickinson: Fascicle 16 | <xsl:value-of select="//idno"/></title>
            </head>
            <body>
                <div class="main">
                    <div class="header">
                        <h1 class="title">
                            <a class="noShowLink" href="../index.html">
                                <span class="nameTitle">Emily Dickinson</span>
                            </a>
                            <a class="noShowLink" href="16home.html">
                                <span class="siteTitle">: Fascicle 16</span>
                            </a>
                        </h1>
                        <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">
                            <img class="cclic" alt="Creative Commons License" style="border-width:0"
                                src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png"/>
                        </a>
                    </div>
                    <div class="mwrapper">
                        <div class="menu">
                            <ul class="cfix">
                                <li>
                                    <a href="../index.html">Home <span class="arrow">▼</span></a>
                                    <ul class="sub">
                                        <li>
                                            <a href="../6/6home.html">Dickinson 6</a>
                                        </li>
                                        <li>
                                            <a href="16home.html">Dickinson 16</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="../about.html">About <span class="arrow">▼</span></a>
                                    <ul class="sub">
                                        <li>
                                            <a href="../members.html">Our Members</a>
                                        </li>
                                        <li>
                                            <a href="../methodology.html">Methodology</a>
                                        </li>
                                        <li>
                                            <a href="../bibliography.html">Bibliography</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="poems.html">Poems <span class="arrow">▼</span></a>
                                    <ul class="sub">
                                        <li>
                                            <a href="1601.html">1601</a>
                                        </li>
                                        <li>
                                            <a href="1602.html">1602</a>
                                        </li>
                                        <li>
                                            <a href="1603.html">1603</a>
                                        </li>
                                        <li>
                                            <a href="1604.html">1604</a>
                                        </li>
                                        <li>
                                            <a href="1605.html">1605</a>
                                        </li>
                                        <li>
                                            <a href="1606.html">1606</a>
                                        </li>
                                        <li>
                                            <a href="1607.html">1607</a>
                                        </li>
                                        <li>
                                            <a href="1608.html">1608</a>
                                        </li>
                                        <li>
                                            <a href="1609.html">1609</a>
                                        </li>
                                        <li>
                                            <a href="1610.html">1610</a>
                                        </li>
                                        <li>
                                            <a href="1611.html">1611</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="../analysis.html">Analysis <span class="arrow"
                                        >▼</span></a>
                                    <ul class="sub">
                                        <li>
                                            <a href="dash.html">Dash Usage Comparison</a>
                                        </li>
                                        <li>
                                            <a href="conclusion.html">Conclusion</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="../contact.html">Contact</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="content">
                        <div class="side-nav">
                            <!-- Tests for existance of variants in the listWit element of each poem's XML-->
                            <button class="df16Key" id="df16Button">Fascicle 16</button>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'poems1')]">
                                <button class="poems1Key" id="poems1Button">1890 Poems</button>
                            </xsl:if>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'poems2')]">
                                <button class="poems2Key" id="poems2Button">1891 Poems</button>
                            </xsl:if>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'poems3')]">
                                <button class="poems3Key" id="poems3Button">1896 Poems</button>
                            </xsl:if>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'fp')]">
                                <button class="fpKey" id="fpButton">Further Poems</button>
                            </xsl:if>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'ce')]">
                                <button class="ceKey" id="ceButton">Centenary Edition</button>
                            </xsl:if>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'fh')]">
                                <button class="fhKey" id="fhButton">Final Harvest</button>
                            </xsl:if>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'bm')]">
                                <button class="bmKey" id="bmButton">Bolts of Melody</button>
                            </xsl:if>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'am')]">
                                <button class="amKey" id="amButton">Atlantic Monthly</button>
                            </xsl:if>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'lSD')]">
                                <button class="lSDKey" id="lSDButton">Susan Dickinson</button>
                            </xsl:if>
                            <a class="origXML" id="origXML"
                                href="{//listRef/ptr/@target[contains(., 'xml')]}">View Original
                                XML</a>
                            <button class="origImg" id="origImg">View Original Variant
                                Images</button>
                            <p class="instruct"><strong>Instructions:</strong> You can turn the
                                variations of the poem on and off at the same time. The button will
                                show as depressed, and the poems will load side by side. The images
                                for the corresponding poem will stack on top of each other if
                                multiple variants are turned on at once.</p>

                        </div>
                        <div class="poem">
                            <xsl:apply-templates select="//body"/>
                        </div>
                        <div class="poemImg"> </div>
                    </div>
                    <div class="footer"> </div>
                    <div id="imgModal" class="modal">
                        <div class="modal-content">
                            <div class="modal-header">
                                <span class="close">×</span>
                                <h2>Variant Poem Images</h2>
                            </div>
                            <div class="modal-body">
                                <xsl:for-each
                                    select="//listRef/ptr/@target[contains(., '.jpg') and not(contains(., 'Map'))]">
                                    <div class="modalImgCont">
                                        <a target="_blank" href="{.}">
                                            <img src="{.}" alt="Poem {//idno} Variant Image"/>
                                        </a>
                                        <!-- Tests for existance of variant image files in the listRef element of each poem's XML-->
                                        <xsl:choose>
                                            <xsl:when
                                                test=".[contains(., 'fs') and not(contains(., 'a.') or contains(., 'b.') or contains(., 'c.'))]">
                                                <div class="modalDesc">Fascicle 16</div>
                                            </xsl:when>
                                            <xsl:when
                                                test=".[contains(., 'fs') and contains(., 'a.')]">
                                                <div class="modalDesc">Fascicle 16 'A'</div>
                                            </xsl:when>
                                            <xsl:when
                                                test=".[contains(., 'fs') and contains(., 'b.')]">
                                                <div class="modalDesc">Fascicle 16 'B'</div>
                                            </xsl:when>
                                            <xsl:when
                                                test=".[contains(., 'fs') and contains(., 'c.')]">
                                                <div class="modalDesc">Fascicle 16 'C'</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'poems1.')]">
                                                <div class="modalDesc">1890 Poems</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'poems2.')]">
                                                <div class="modalDesc">1891 Poems</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'poems3.')]">
                                                <div class="modalDesc">1896 Poems</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'fp')]">
                                                <div class="modalDesc">Further Poems</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'ce.')]">
                                                <div class="modalDesc">Centenary Edition</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'cea.')]">
                                                <div class="modalDesc">Centenary Edition 'A'</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'ceb.')]">
                                                <div class="modalDesc">Centenary Edition 'B'</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'fh.')]">
                                                <div class="modalDesc">Final Harvest</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'fha.')]">
                                                <div class="modalDesc">Final Harvest 'A'</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'fhb.')]">
                                                <div class="modalDesc">Final Harvest 'B'</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'bm.')]">
                                                <div class="modalDesc">Bolts of Melody</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'am.')]">
                                                <div class="modalDesc">Atlantic Monthly</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'lSDa.')]">
                                                <div class="modalDesc">Susan Dickinson Letter
                                                  'A'</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'lSDb.')]">
                                                <div class="modalDesc">Susan Dickinson Letter
                                                  'B'</div>
                                            </xsl:when>
                                        </xsl:choose>
                                    </div>
                                </xsl:for-each>
                            </div>
                        </div>
                    </div>
                </div>

            </body>
        </html>
    </xsl:template>

    <xsl:template match="del[@rend]">
        <xsl:choose>
            <xsl:when test="@rend = 'strikethrough'">
                <span class="strikeThrough">
                    <xsl:apply-templates/>
                </span>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="q[@rend]">
        <xsl:choose>
            <xsl:when test="@rend = 'single'">
                <q class="single">
                    <xsl:apply-templates/>
                </q>
            </xsl:when>
            <xsl:otherwise>
                <q class="double">
                    <xsl:apply-templates/>
                </q>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="emph[@rend]">
        <xsl:choose>
            <xsl:when test="@rend = 'underline'">
                <span class="underline">
                    <xsl:apply-templates/>
                </span>
            </xsl:when>
            <xsl:otherwise>
                <span class="italic">
                    <xsl:apply-templates/>
                </span>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="head">
        <h2>
            <span id="poem{//idno}">
                <xsl:apply-templates select="title"/>
            </span>
        </h2>
    </xsl:template>

    <xsl:template match="lg">
        <div class="para">
            <xsl:apply-templates/>
        </div>
    </xsl:template>

    <xsl:template match="l">
        <div class="line">
            <span class="lineNum">
                <xsl:value-of select="count(preceding::l) + 1"/>
                <xsl:text>: </xsl:text>
            </span>
            <div class="lineContent">
                <xsl:variable name="currentLine" select="current()"/>
                <!--<xsl:sequence select="current()"/>
        </xsl:variable> -->
                <!--2016-04-20 ebb: It doesn't seem to be necessary to declare this variable a sequence because of course current() is going to be a new
           value each time the template match on `<l>` fires.-->

             
                        <xsl:for-each select="$witness">
                            <table>
                                <!-- ebb: removed @class="current()" from table element to output variants only inside cells.-->

                                <!--<xsl:value-of select="current()"/>-->
                             <xsl:choose>   
                                 <xsl:when test="current() = 'df16'">
                                     <xsl:apply-templates select="$currentLine" mode="row_df16"/>
                                </xsl:when>
                                 <xsl:otherwise>
                                     <xsl:apply-templates select="$currentLine" mode="row">
                                         <xsl:with-param name="wit" select="current()" as="xs:string"
                                             tunnel="yes"/>
                                     </xsl:apply-templates>
                                 </xsl:otherwise>
                             </xsl:choose>
                            </table>
                        </xsl:for-each>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="l" mode="row">
        <xsl:param name="wit" tunnel="yes"/>
        <tr class="{$wit}Toggle">
        <xsl:for-each select="node()">
        <xsl:choose>
            <xsl:when test="current()/rdg[contains(@wit, $wit)]">
                                <td class="{$wit}">
                                    <xsl:apply-templates select="." mode="row"/>
                                </td>                
            </xsl:when>
            <xsl:otherwise>
                <td class="{$wit}text">
                    <xsl:apply-templates select="."/>
                </td>
            </xsl:otherwise>
        </xsl:choose>
</xsl:for-each>
        </tr>


    </xsl:template>
    
    <xsl:template match="l" mode="row_df16">
     
        <tr class="df16Toggle">
            <xsl:for-each select="node()">
                <xsl:choose>
                    <xsl:when test="current()/rdg[@wit[contains(., '#df16')]]">
                        <td class="df16">
                            <xsl:apply-templates select="." mode="row_df16"/>
                        </td>                
                    </xsl:when>
                    <xsl:otherwise>
                        <td class="df16text">
                            <xsl:apply-templates select="." mode="row_df16"/>
                        </td>
                    </xsl:otherwise>
                </xsl:choose>
                
                
                
                
            </xsl:for-each>
        </tr>
          
    </xsl:template>
 <xsl:template match="app" mode="row">
        <xsl:param name="wit" tunnel="yes"/>

        <xsl:apply-templates select="rdg[contains(@wit, $wit)]"/>

    </xsl:template>
    <xsl:template match="app" mode="row_df16">
       <xsl:choose>  
           <xsl:when test="rdg[contains(@type, 'var')]">
               <xsl:if test="rdg[contains(@type, 'var0')]">
            <span class="var">VAR 1: </span>
            <xsl:apply-templates
                select="rdg[contains(@type, 'var0')]"/>
        </xsl:if>
               <xsl:if test="rdg[contains(@type, 'var1')]">
            <span class="var">VAR 2: </span>
            <xsl:apply-templates
                select="rdg[contains(@type, 'var1')]"/>
        </xsl:if>
               <xsl:if test="rdg[contains(@type, 'var2')]">
            <span class="var">VAR 3: </span>
            <xsl:apply-templates
                select="rdg[contains(@type, 'var2')]"/>
        </xsl:if></xsl:when>
        <xsl:otherwise>
            <xsl:apply-templates select="rdg[contains(@wit, 'df16')]"/>
        </xsl:otherwise></xsl:choose>
       
    </xsl:template>
    
</xsl:stylesheet>
