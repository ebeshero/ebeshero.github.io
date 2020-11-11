<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
 
    <!-- Jayna Rowe - xsl:template match"/" section -->  
    <!-- Michael O'Malley - collection creation/other xsl:templates -->
    <!-- Rowyn Hope - CSS -->

    <!-- output -->
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    
    <!-- collection creation -->
    <xsl:variable name="avatarColl" select="collection('xml/book1/?select=*.xml')"/>

    <!-- structure -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Avatar: The Last Airbender Book 1</title>
                <link rel="stylesheet" type="text/css" href="../Avatar/css/Avatar_CSS_7.css"/>
            </head>
            <body>
                <main>
                    <xsl:apply-templates select="$avatarColl//transcript"/>
                </main>
            </body>
        </html>
    </xsl:template>
    
    <!-- h1 = episode title -->
    <xsl:template match="episode">
        <h1>
            <xsl:apply-templates/>
        </h1>       
    </xsl:template>
 
    <!-- h2 = book title -->
    <xsl:template match="book">
        <h2>
            <xsl:apply-templates/>
        </h2>       
    </xsl:template>
 
    <!-- p = dialogue -->
    <xsl:template match="scene">
        <p>
            <xsl:apply-templates/>
        </p>       
    </xsl:template>
 
    <!-- h3 = scene directions (italics) -->
    <xsl:template match="sd">
        <h3><i>
            <xsl:apply-templates/>
        </i>
        </h3>       
    </xsl:template>
    

    <!-- span.Zuko for Zuko and span.Other for all other characters -->
    <xsl:template match="speaker[@ref='Zuko']">
        <span class="Zuko">
            <xsl:apply-templates/>:
        </span>       
    </xsl:template>

    <!-- Problem in 1_19 Seige of North pt1 due to incomplete markup -->
    <xsl:template match="speaker[not(contains(@ref,'Zuko'))]">
        <span class="Other">
            <xsl:apply-templates/>:
        </span>       
    </xsl:template>
    
</xsl:stylesheet>