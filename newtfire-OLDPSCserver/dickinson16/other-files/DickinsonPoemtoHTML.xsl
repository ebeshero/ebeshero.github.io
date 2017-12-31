<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">  
    
    <html>
        <head><title>Fascicle 16: 
            <xsl:apply-templates select="//teiHeader//title"/>
        </title>
            <link rel="stylesheet" type="text/css" href="Dickinson.css"/>
        </head>
        <body>
            <div class="title"><h1>Emily Dickinson's Fascicle 16: Eleven Poems</h1>
   
                <hr/></div> 
            <div class="menubar">
                <h2><a href="about.html">About</a> | <a href="1601.html">1</a> | <a href="1602.html">2</a> | <a href="1603.html">3</a> | <a href="1604.html">4</a> | <a href="1605.html">5</a> | <a href="1606.html">6</a> | <a href="1607.html">7</a> | <a href="1608.html">8</a> | <a href="1609.html">9</a> | <a href="1610.html">10</a> | <a href="1611.html">11</a> |   <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/"><img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by-nc-sa/3.0/80x15.png" /></a></h2> 
               <hr/> 
            </div>
            
  <div class="container">        
      <div class="poem"> <xsl:apply-templates select="//body"/></div>
      <div class="viewer"> 
      Facsimile from <i>The Manuscript Books of Emily Dickinson</i> edited by R. W. Franklin and published in 1981.
           
               <div class="msimage1">
                   <img src="fs{//idno}.jpg"/>
                <img src="fs{//idno}a.jpg"/>
            </div>
            <div class="msimage2">
                <img src="fs{//idno}b.jpg"/>
            </div>
      </div>
  </div>
            
            <div class="published">
        
                  
                    <div class="1890"><i>Poems</i>, the first collection of Dickinson poems, edited by 
                        Mabel Loomis Todd and Thomas Wentworth Higginson and published in
                        1890 by Roberts Brothers, Boston. Images are from an 1892
                        reprint.
                    <img src="{//idno}90.jpg"/>
                        <img src="{//idno}90a.jpg"/>
                        <img src="{//idno}90b.jpg"/>
                    </div>
                    <div class="1891"><i>Poems, Second Series</i>, the second collection, also
                        edited by Mabel Loomis Todd and Thomas Wentworth Higginson and published
                        in 1891 by Roberts Brothers, Boston. Images are from an
                        1892 reprint.
                    <img src="{//idno}91.jpg"/>
                        <img src="{//idno}91a.jpg"/>
                        <img src="{//idno}91b.jpg"/>
                    </div>
                    <div class="1896"><i>Poems, Third Series</i>, the third collection, edited by Mabel
                        Loomis Todd and published in 1896 by Roberts Brothers, Boston. Images are from a 1917 Little &amp; brown reprint.
                    <img src="{//idno}96.jpg"/>
                        <img src="{//idno}96a.jpg"/>
                        <img src="{//idno}96b.jpg"/>
                    </div>
                    <div class="1929">The <i>Further Poems</i> collection, edited by Martha Dickinson
                        Bianchi and Alfred Leete Hampson and published in 1929 by Little &amp;
                        Brown, Boston.
                    <img src="{//idno}29.jpg"/>
                        <img src="{//idno}29a.jpg"/>
                        <img src="{//idno}29b.jpg"/>
                    </div>
                    <div class="1930">The <i>Centenary Edition</i>, edited by Martha Dickinson
                        Bianchi and Alfred Leete Hampson and published in 1930 by Little &amp;
                        Brown, Boston.
                    <img src="{//idno}30.jpg"/>
                        <img src="{//idno}30a.jpg"/>
                        <img src="{//idno}30b.jpg"/>
                        <img src="{//idno}30b.jpg"/></div>
                    <div class="1945">The <i>Bolts of Melody</i> collections, edited by Mabel Loomis Todd
                        and Millicent Todd Bingham and published in 1945 by Harper &amp; Brothers, New
                        York.
                    <img src="{//idno}45.jpg"/>
                        <img src="{//idno}45a.jpg"/>
                        <img src="{//idno}45b.jpg"/>
                    </div>
                    <div class="1961">The <i>Final Harvest</i> collection, edited by Thomas H. Johnson and published in 1961 by Little &amp; Brown, Boston.
                    <img src="{//idno}harv.jpg"/>
                        <img src="{//idno}harva.jpg"/>  
                        <img src="{//idno}harvb.jpg"/>
                    </div>                                    
            </div>
        </body>
    </html>
    </xsl:template>
    <xsl:template match="text//head/title">
        <h3><xsl:apply-templates/></h3>
        <h4><a href="{//idno}variant.xml">View TEI XML</a></h4>
    </xsl:template>
    <xsl:template match="lg">
        <div class="lg">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="l">
        <div class="line"><div class="nmbr"><xsl:value-of select="count(preceding::l)+1"/>     
        </div>
        <div class="l">
            <xsl:choose>
                <xsl:when test="count(preceding::l)+1 lt 10">
                    <xsl:text>&#160;</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    
                </xsl:otherwise>
            </xsl:choose>
        <xsl:apply-templates/>
             
        <br/>
        </div></div>
    </xsl:template>
    
    <xsl:template match="app">
        <div class="variantSet">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="rdg">
        <div class="{@wit}">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="del">
        <span class="strikethrough"><xsl:apply-templates/></span>
    </xsl:template>
    
</xsl:stylesheet>