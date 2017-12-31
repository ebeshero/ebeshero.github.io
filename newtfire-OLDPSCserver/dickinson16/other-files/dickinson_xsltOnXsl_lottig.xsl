<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>

    <xsl:variable name="poems" select="collection('Dickinson')"/>
    <xsl:template match="/">
        <html>
            <head><title>Table of Variants</title></head>
            <body>
                <hl>Table of Variants</hl>
                <table>
                    <tr>
                        <th>Title of Poem</th>
                        <th>Presence of Variants</th>
                        <!--<th>Line Number(s)</th>-->
                        <th>Variant 1</th>
                        <th>Variant 2</th>
                        <th>Variant 3</th>
                    </tr>
                    <xsl:apply-templates select="$poems//body"/>
                </table>
            </body>
        </html>
    </xsl:template>
    <!--<xsl:template match="l">
        <xsl:value-of select="count(preceding-sibling::l) + 1"/>
    </xsl:template>-->
    <xsl:template match="body">
        <tr>
            <td><xsl:apply-templates select="./head/title"/></td>
            <td><xsl:apply-templates select=".//l/app/rdg/@wit='var0'"/></td>
            <!--<td><xsl:value-of select="count(preceding-sibling::l) + 1"/></td>-->
            <td><xsl:apply-templates select=".//l/app/rdg[@wit='var0']"/></td>
            <td><xsl:apply-templates select=".//l/app/rdg[@wit='var1']"/></td>
            <td><xsl:apply-templates select=".//l/app/rdg[@wit='var2']"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
<!--nll 10-22: I tried to add the line number of the variant but couldn't figure out how to...-->
