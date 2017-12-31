<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    version="3.0">
    <xsl:output method="xhtml" encoding="utf-8"       omit-xml-declaration="yes"/>    
    <xsl:template match="/">
        <html>
            <head>
                <title><xsl:apply-templates select="//titleStmt/title"/></title>
                <meta name="Description"
                    content="Supported by the University of Pittsburgh at Greensburg" />
                <meta name="keywords"
                    content="Fanny Fern, Sara Willis, Sara Willis Parton, 19th century, 19th-century, the nineteenth century, American Renaissance, US literature, women writers, American women newspaper columnists, American women journalists, digital scholarship, digital edition, electronic edition, electronic text, humanities computing, electronic editing, Beshero-Bondar" />
                <link rel="stylesheet" type="text/css" href="lit.css"/>
                <script type="text/javascript" src="notes.js" xml:space="preserve"></script>
            </head>
            <body>
                <xsl:comment>#include virtual="top.html" </xsl:comment>  
                <h1><xsl:apply-templates select="//titleStmt/title"/></h1>
                <div id="headIcon"><img src="fernIcon.png" alt="fractal fern leaf"/></div>
                <xsl:apply-templates select="//titleStmt/author"/>
                
                
                <xsl:apply-templates select="//text"/>
                <div id="footIcon"><img src="fernIcon.png" alt="fractal fern leaf"/></div>
                <span class="smaller"><xsl:apply-templates select="//sourceDesc/p/text()"/> This edition was prepared in <a href="http://www.tei-c.org/index.xml">TEI, the language of the Text Encoding Initiative</a> and transformed to HTML for reading on the web. <a href="FernLeaves.xml">View this document in TEI XML.</a></span>          
            </body>
        </html>     
    </xsl:template>
    <xsl:template match="author">
        <h2>by <xsl:apply-templates select="persName"/></h2>
            <p><span class="smaller"><xsl:apply-templates select="note"/></span></p>
        <xsl:apply-templates select="graphic"/>
    </xsl:template>
    <xsl:template match="graphic">
       <div id="imageHead"><img src="{@url}" alt="{desc}"/></div>
    </xsl:template>
    <xsl:template match="div[@type='article']">
        <div class="article"><xsl:apply-templates select="head"/>
            <span class="publine">
                <xsl:if test="byline"><xsl:apply-templates select="byline"/><xsl:text>. </xsl:text></xsl:if>
                <xsl:apply-templates select="note[bibl]"/><xsl:text>: </xsl:text><xsl:value-of select="descendant::date/@when"/></span>
       <xsl:apply-templates select="p | q | lg | l"/>
        <hr class="article"/>
        </div>
    </xsl:template>
    <xsl:template match="head">
        <h2><xsl:apply-templates/></h2>
    </xsl:template>
    <xsl:template match="note[@resp]">
        <span class="anchor"><xsl:text>&#9880;</xsl:text>
      <span class="note"><xsl:apply-templates/></span>  
        </span>
    </xsl:template>

    <xsl:template match="p">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    <xsl:template match="q[not(descendant::l)] | quote | soCalled">
        <q><xsl:apply-templates/></q>
    </xsl:template>
    
    <xsl:template match="emph">
        <em><xsl:apply-templates/></em>
    </xsl:template>
    <xsl:template match="foreign">
        <span lang="{@xml:lang}"><xsl:apply-templates/></span>
    </xsl:template>
    
    
 <xsl:template match="ref">
     <a href="{@target}"><xsl:apply-templates/></a>
 </xsl:template>
    <xsl:template match="title[@level='m'] | title[@level='j']">
       <cite><xsl:apply-templates/></cite>
    </xsl:template>
    <xsl:template match="title[@level='a']">
    <xsl:text>“</xsl:text><xsl:apply-templates/><xsl:text>”</xsl:text>
    </xsl:template>
    <xsl:template match="biblScope[@unit='page']">
        <xsl:text>pages </xsl:text><xsl:apply-templates/>  </xsl:template>
    
    <xsl:template match="lg">
      <div class="lg"><xsl:apply-templates/></div>
    </xsl:template>
    <xsl:template match="q[lg]">
        <span class="line"><xsl:text>“</xsl:text><xsl:apply-templates select="descendant::l[1]"/></span>
        <span class="line"><xsl:apply-templates select="descendant::l[not(1) and not(last())]"/></span>
        <span class="line"><xsl:apply-templates select="descendant::l[last()]"/><xsl:text>”</xsl:text></span>
    </xsl:template>
    
    <xsl:template match="l">
   <xsl:choose><xsl:when test="ancestor::q"><xsl:apply-templates/></xsl:when><xsl:otherwise><span class="line"><!--<span class="num"><xsl:apply-templates select="@n"/></span>--><xsl:apply-templates/></span></xsl:otherwise></xsl:choose>     </xsl:template>
    
</xsl:stylesheet>