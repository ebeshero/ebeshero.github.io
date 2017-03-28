<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml" version="2.0">
    <xsl:output method="xhtml" indent="yes"/>

    <xsl:template match="/">
  
        <html>
            <head>
                <title>Digital Mitford: The Mary Russell Mitford Archive</title>
                <meta name="Description" content="Supported by the University of Pittsburgh at Greensburg and the Mary Russell Mitford Society."/>
                <meta name="keywords" content="Mitford, Mary Russell Mitford, Digital Mitford, Digital Mary Russell Mitford, Digital Mary Russell Mitford Archive, Mitford Archive, digital edition, electronic edition, electronic text, Romanticism, Romantic literature, Victorianism, Victorian literature, humanities computing, electronic editing, Beshero-Bondar"/>
                <link rel="stylesheet" type="text/css" href="mitfordtable.css"/>
                <!--<script type="text/javascript" src="imagerotat.js" xml:space="preserve">***</script>-->
                
                
            </head>
            <body>  
                
                <div id="title"><h1>Digital Mitford: The Mary Russell Mitford Archive</h1>
                    <hr/></div> 
                <div id="menubar">
                    <h2><a href="index.html">Welcome</a> | <a href="about.html">About</a> | <a href="search.html">Search</a> | <a href="literature.html">Literary Works</a> | <a href="letters.html">Letters</a> | <a href="visual.html">People, Places, and Networks</a> | <a href="maps.html">Maps</a> | <a href="contact.html">Contact</a> | <a href="workshop.html">Workshop Materials</a></h2>
                    
                </div>
                <div id="content">
                <h2>Working List of Archives Holding Mitford's Letters and Papers</h2>
                    <h3>Sorted by Archive</h3>
                    <p>Updated February 4, 2014</p>
                    
                    <hr/>
                
                <table>
                    <tr>
                    <th>Collection</th>
                        
                        <th>Writer</th>
                        <th>Recipient</th>
                        <th>Earliest Date</th>
                        <th>Last Date</th>
                        <th>Collection Title</th>
                        <th>Shelfmark</th>
                        <th>Description</th>
                       
                        <th>Notes</th>
                    </tr>
                  
                    
                          <xsl:apply-templates select="//Row">
                    <xsl:sort select="Collection"/>
                        </xsl:apply-templates>
                      
                
                    
                </table>
              
                    
   
                </div>
            </body>
        </html>
    </xsl:template>



    <xsl:template match="Row">
      <tr> 
        <td>
            
            <b><span class="archive" title="{Collection/@ref}">
                
                <a href="{Link}"><xsl:value-of select="Collection"/></a>
            
            </span></b>
        </td>
        
        <td>
            <span class="writ"><xsl:apply-templates select="Writer"/> </span> 
        </td>
        <td>
            <span class="recip"><xsl:apply-templates select="Recipient"/> </span> 
        </td>
        <td>
            <span class="earliest"><xsl:apply-templates select="Date_First"/> </span> 
        </td>
        <td>
            <span class="last"><xsl:apply-templates select="Date_Last"/> </span> 
        </td>
        <td>
            <div class="scrollable"><span class="cltitle"><xsl:apply-templates select="Title"/> </span> </div>
        </td>
       
            <xsl:choose>
                <xsl:when test="exists(Shelfmark)">
                
                <td><span class="shelfmark">
                    <xsl:apply-templates select="Shelfmark"/>
                    <xsl:text>. </xsl:text>
                </span></td>
            </xsl:when>
                <xsl:otherwise>
                    <td></td>
                </xsl:otherwise>
            </xsl:choose>
            
        <td>
            <span class="desc"><xsl:apply-templates select="Descripton"/> </span> 
        </td>
        <td>
            <div class="scrollable"><span class="notes"><xsl:apply-templates select="Notes"/> </span></div> 
        </td>
      </tr>
        
    </xsl:template>




</xsl:stylesheet>

