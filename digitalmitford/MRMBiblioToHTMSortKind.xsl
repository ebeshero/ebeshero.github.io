<?xml version="1.0" encoding="UTF-8"?>
    <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xs="http://www.w3.org/2001/XMLSchema"
        xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math"
        xmlns="http://www.w3.org/1999/xhtml" version="3.0">
        
        <xsl:output method="xhtml" encoding="utf-8" indent="yes"
            doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"/>
        <xsl:strip-space elements="*"/>

    <xsl:template match="/">

        <html>
            <head>
                <title>Digital Mitford: The Mary Russell Mitford Archive</title>
                <meta name="Description"
                    content="Supported by the University of Pittsburgh at Greensburg and the Mary Russell Mitford Society."/>
                <meta name="keywords"
                    content="Mitford, Mary Russell Mitford, Digital Mitford, Digital Mary Russell Mitford, Digital Mary Russell Mitford Archive, Mitford Archive, digital edition, electronic edition, electronic text, Romanticism, Romantic literature, Victorianism, Victorian literature, humanities computing, electronic editing, Beshero-Bondar"/>
                <link rel="stylesheet" type="text/css" href="mitfordbibliog.css"/>
                <!--<script type="text/javascript" src="imagerotat.js" xml:space="preserve">***</script>-->


            </head>
            <body>

                <div id="title">
                    <h1>Digital Mitford: The Mary Russell Mitford Archive</h1>
                    <hr/>
                </div>
                <div id="menubar">
                    <h2><a href="index.html">Welcome</a> | <a href="about.html">About</a> | <a href="bibliogType.html">Works: Publications and Editions</a> | <a href="lettersData.html">Manuscript Locations</a> | <a href="letters.html">Letters</a> | <a href="visual.html">People, Places, and Networks</a> | <a href="contact.html">Contact</a> | <a href="workshop.html">Workshop Materials</a></h2>
                    
                </div>
                <div id="content">
                    <h2><a id="top"/>Working Bibliography of Mary Russell Mitford&#8217;s
                        Publications</h2>
                    
              
                    <p class="boilerplate">
                        <span>
                            <strong>Maintained by: </strong> Elisa E. Beshero-Bondar (ebb8 at
                            pitt.edu) <a rel="license"
                                href="http://creativecommons.org/licenses/by-nc-sa/3.0/"><img
                                    alt="Creative Commons License" style="border-width:0"
                                    src="http://i.creativecommons.org/l/by-nc-sa/3.0/80x15.png"
                                /></a>
                        </span>
                        
                        <span>
                            <strong>Last modified: </strong>
                            <xsl:value-of select="current-dateTime()"/>
                        </span>
                        
                    </p>
                   
                    <p>The Digital Mitford project team is investigating the print publication history of Mitford's writings in all genres. Our working bibliography records our knowledge of the multiple editions and printings of Mitford's poems, plays, and prose fiction. We also list the anthologies that Mitford edited herself or in which her works appeared, as well as her publications in periodicals and annual gift books. The bibliography is still a work in progress and contains draft notes from the project editors. We have been recording whether we have personally seen physical copies of particular texts, as opposed to digital facsimiles and images on auction sites, and as we proceed we seek to include more of our own observations on each text. We post our work in progress on the bibliography in hope that it will be useful to other researchers.</p>
                 
                    <h4>
                        <a href="bibliogDateFirstPub.html">View the bibliography chronologically, by date of first
                            publication.</a>
                    </h4>
                    <hr/>
                    <h3>View by Type of Text:</h3>


                    <h3>
                        <a href="#ind">Independent Works: Volumes authored by Mitford</a>
                    </h3>
                    <h3>
                        <a href="#coll">Collections edited by Mitford</a>
                    </h3>
                    <h3>
                        <a href="#pd">Publications in Periodicals, Giftbooks, or Annuals</a>
                    </h3>
                    <h3>
                        <a href="#ocll">Other Collections or Reprints (not compiled by Mitford)</a>
                    </h3>
                    <h3>
                        <a href="#corr">Published Collections of Mitford's Correspondence</a>
                    </h3>
                    <h3>
                        <a href="#bio">Biographies of Mitford</a>
                    </h3>

                    <hr/>

                    <h3>
                        <a id="ind">Independent Works: Volumes authored by Mitford</a>
                    </h3>
                    <hr/>
                    <ul>

                      
                        <xsl:apply-templates select="//Work[Type_of_Text='Independent Work']">
                            <xsl:sort select="Column_1st_Pub" data-type="number"/>
                        </xsl:apply-templates>

                        

                    </ul>
                    <hr/>



                    <h3>
                        <a id="coll">Collections edited by Mitford</a>
                    </h3>
                    <a href="#top">return to top</a>
                    <hr/>
                    <ul>

                        
                        <xsl:apply-templates
                            select="//Work[Type_of_Text='Mitford-Edited Collections']">
                            <xsl:sort select="Column_1st_Pub" data-type="number"/>
                        </xsl:apply-templates>

                       

                    </ul>
                    <hr/>

                    <h3>
                        <a id="pd">Publications in Periodicals, Giftbooks, or Annuals</a>
                    </h3>
                    <p>
                        <a href="#top">return to top</a>
                    </p>
                    <hr/>

                    <ul>

                        
                        <xsl:apply-templates
                            select="//Work[Type_of_Text='Periodical &amp; Giftbook/Annual']">
                            <xsl:sort select="Column_1st_Pub" data-type="number"/>
                        </xsl:apply-templates>

                        

                    </ul>
                    <hr/>

                    <h3>
                        <a id="ocll">Other Collections or Reprints (not compiled by Mitford)</a>
                    </h3>
                    <p>
                        <a href="#top">return to top</a>
                    </p>
                    <hr/>
                    <ul>

                        
                        <xsl:apply-templates
                            select="//Work[Type_of_Text='Other Collections / Reprints']">
                            <xsl:sort select="Column_1st_Pub" data-type="number"/>
                        </xsl:apply-templates>

                        

                    </ul>
                    <hr/>

                    <h3>
                        <a id="corr">Published Collections of Mitford's Correspondence</a>
                    </h3>
                    <p>
                        <a href="#top">return to top</a>
                    </p>
                    <hr/>
                    <ul>

                        
                        <xsl:apply-templates select="//Work[Type_of_Text='Published Letters']">
                            <xsl:sort select="Column_1st_Pub" data-type="number"/>
                        </xsl:apply-templates>

                        

                    </ul>
                    <hr/>

                    <h3>
                        <a id="bio">Biographies of Mitford</a>
                    </h3>
                    <p>
                        <a href="#top">return to top</a>
                    </p>
                    <hr/>
                    <ul>

                        
                        <xsl:apply-templates select="//Work[Type_of_Text='Biography']">
                            <xsl:sort select="Column_1st_Pub" data-type="number"/>
                        </xsl:apply-templates>

                        

                    </ul>
                    <hr/>


                </div>
            </body>
        </html>
    </xsl:template>



    <xsl:template match="Work">

        <li>
            <xsl:if test="exists(Image)">
                
                <div class="image">
                    <img src="{Image}" alt="image of this edition"/>
                    
                </div>
</xsl:if>
            <b>
                <span class="firstPub">
                    <xsl:value-of select="Column_1st_Pub"/>
                </span>
                <xsl:text>: </xsl:text>
            </b>

            <!--<span class="type"><xsl:apply-templates select="Type_of_Text"/> </span> <xsl:text>. </xsl:text>-->
            <xsl:if test="exists(Author__if_not_Mitford)">
                
                <span class="AuthorifnotMitford">
                    <xsl:apply-templates select="Author__if_not_Mitford"/>
                    
                    <xsl:choose>
                        <xsl:when test="ends-with(Author__if_not_Mitford, '.')">
                            <xsl:text> </xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text>. </xsl:text>
                        </xsl:otherwise> 
                    </xsl:choose>
                  
                </span>
            </xsl:if>

            <xsl:if test="exists(Title_within_coll___vol)">
             <xsl:choose>   
                 <xsl:when test="exists(External_Link | Digital_Mitford_Link)"><span class="innertitleInfo">
                     <a href="{External_Link | Digital_Mitford_Link}"><xsl:text>&#8220;</xsl:text>
                     <xsl:apply-templates select="Title_within_coll___vol"/>
                     <xsl:text>,&#8221;</xsl:text></a><xsl:text> </xsl:text>
                 </span></xsl:when>
                 <xsl:otherwise><span class="innertitleInfo"><xsl:text>&#8220;</xsl:text>
                
                    <xsl:apply-templates select="Title_within_coll___vol"/>
                    <xsl:text>,&#8221; </xsl:text>
                 </span></xsl:otherwise>
             </xsl:choose>
                
            </xsl:if>

            <xsl:choose>
                <xsl:when test="exists(External_Link | Digital_Mitford_Link)">
                    <span class="volTitleInfo">
                        <a href="{External_Link | Digital_Mitford_Link}"><i><xsl:apply-templates select="Title__Published_Volume"/>
                        </i></a>
                            <xsl:text>. </xsl:text>
                </span></xsl:when>
                <xsl:otherwise><span class="volTitleInfo">
                <i>
                    <xsl:apply-templates select="Title__Published_Volume"/>
                </i>
                <xsl:text>. </xsl:text>
            </span></xsl:otherwise></xsl:choose>
            
           
            
            
            <xsl:if test="exists(Editor_Intro_Series_Info)">
                
                <span class="bookEditInt">
                    <xsl:choose><xsl:when test="contains(Editor_Intro_Series_Info, 'ed.')">
                        <xsl:apply-templates select="Editor_Intro_Series_Info"/>
                        
                    </xsl:when>
                        <xsl:otherwise>
                            <xsl:text>ed. </xsl:text>
                            <xsl:apply-templates select="Editor_Intro_Series_Info"/>
                        </xsl:otherwise>
                        
                    </xsl:choose>
                    <xsl:choose>
                        <xsl:when test="ends-with(Editor_Intro_Series_Info, '.')">
                            <xsl:text> </xsl:text>
                            
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text>. </xsl:text>
                            
                        </xsl:otherwise>
                    </xsl:choose>
                </span>
            </xsl:if>
            
            

            <xsl:if test="exists(illus)">
                <span class="illus">
                    <xsl:apply-templates select="illus"/>
                
                <xsl:choose>
               <xsl:when test="ends-with(illus, '.')">
                   <xsl:text> </xsl:text>
               </xsl:when>
               <xsl:otherwise>
                   <xsl:text>. </xsl:text>
               </xsl:otherwise> 
                </xsl:choose>
                </span>
            </xsl:if>

            <xsl:if test="exists(bookEditionInfo)">
                <span class="bookEditionInfo">
                    <xsl:text>Edition: </xsl:text>
                    <xsl:apply-templates select="Book__edition"/>
               
                <xsl:text>. </xsl:text>
                </span>
            </xsl:if>

            <xsl:if test="exists(Book__How_Many_Vols)">
                <xsl:choose><xsl:when test="contains(Book__How_Many_Vols, 'ol')">
                
                <span class="bookNumVols">
                    <xsl:apply-templates select="Book__How_Many_Vols"/>
                </span>
                </xsl:when>
                <xsl:otherwise>
                    
                    <span class="bookNumVols">
                        <xsl:apply-templates select="Book__How_Many_Vols"/>
                        <xsl:text> vol</xsl:text>
                    </span>
                </xsl:otherwise>
                
                </xsl:choose>
                
                <xsl:choose>
                <xsl:when test="ends-with(Book__How_Many_Vols, '.')">
                    <xsl:text> </xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>. </xsl:text>
                </xsl:otherwise> 
                </xsl:choose>
               
            </xsl:if>

            

            <xsl:if test="exists(of_pages)">
                <span class="pagin">
                    <xsl:text>Pagination: </xsl:text>
                    <xsl:apply-templates select="of_pages"/>
                    <xsl:text>. </xsl:text>
                </span>
            </xsl:if>

            <xsl:if test="exists(city)">
                <span class="pubCity">
                    <xsl:apply-templates select="city"/>
                    <xsl:text>: </xsl:text>
                </span>
            </xsl:if>

            <xsl:if test="exists(publisher___printed_by)">
                <span class="printer">
                    <xsl:text>Printed by </xsl:text>
                    <xsl:apply-templates select="publisher___printed_by"/>
                    <xsl:text>. </xsl:text>
                </span>
            </xsl:if>

            <xsl:if test="exists(sold_by)">
                <xsl:text>Sold by </xsl:text>
               <span class="seller"> <xsl:apply-templates select="sold_by"/></span>
                <xsl:text>, </xsl:text>
            </xsl:if>

            <xsl:if test="exists(date_THIS_edition)">
                <span class="dateThisPub">
                    <xsl:text>Date of This Edition: </xsl:text>
                    <xsl:apply-templates select="date_THIS_edition"/>
                    <xsl:text>. </xsl:text>
                </span>
            </xsl:if>

            <xsl:if test="exists(Prdcl__Vol)">
                <span class="prdclVol">
                    <xsl:text>Volume </xsl:text>
                    <xsl:apply-templates select="Prdcl__Vol"/>
                    <xsl:text>: </xsl:text>
                </span>
            </xsl:if>

            <xsl:if test="exists(Prdcl__No___Issue)">
                <span class="prdclNoIss">
                    <xsl:text>issue </xsl:text>
                    <xsl:apply-templates select="Prdcl__No___Issue"/>
                    <xsl:text>, </xsl:text>
                </span>
            </xsl:if>


            <xsl:if test="exists(Prdcl__Pub)">
                <span class="prdclPubDate">
                    <xsl:apply-templates select="Prdcl__Pub"/>
                    <xsl:text>. </xsl:text>
                </span>
            </xsl:if>
            
            <xsl:if test="exists(genre)">
                <xsl:apply-templates select="genre"/>
                <xsl:text>. </xsl:text>
                
            </xsl:if>
            
<xsl:if test="exists(checked)">
   <span class="checked"> <xsl:text>A Mitford Editor Checked this Information: </xsl:text>
    <xsl:apply-templates select="checked"/>
    
    <xsl:choose><xsl:when test="exists(Physical_Text_Seen)">
        <xsl:text>, </xsl:text>
    </xsl:when>
        <xsl:otherwise><xsl:text>. </xsl:text></xsl:otherwise>
    </xsl:choose></span>
</xsl:if>
            
            <xsl:if test="exists(Physical_Text_Seen)">
               <span class="checked"> <xsl:text>Physical Text Witnessed: </xsl:text>
                <xsl:apply-templates select="Physical_Text_Seen"/>
                <xsl:text>. </xsl:text></span>
            </xsl:if>
            
            <xsl:if test="exists(Source_of_Info)">
              <span class="checked">  
                  
                  <xsl:choose> <xsl:when test="contains(Source_of_Info, 'http')"> <a href="{Source_of_Info}"><xsl:text>Information Source</xsl:text></a>
                
              </xsl:when>
                 <xsl:otherwise>
                     <xsl:text>Information Source: </xsl:text>
                     <xsl:apply-templates select="Source_of_Info"/>
                     
                 </xsl:otherwise>
                 
                 </xsl:choose>
                
                <xsl:choose>
                    <xsl:when test="ends-with(Source_of_Info, '.')">
                        <xsl:text> </xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>. </xsl:text>
                    </xsl:otherwise> 
                </xsl:choose>
              </span>
            </xsl:if>


            <xsl:if test="exists(notes_other_versions)">
                <span class="note_1">
                    <xsl:text>Additional info: </xsl:text>
                    <xsl:apply-templates select="notes_other_versions"/>
                    <xsl:text>. </xsl:text>
                </span>
            </xsl:if>

            <xsl:if test="exists(note_2)">
                <span class="note_2">
                    <xsl:apply-templates select="note_2"/>
                    <xsl:text>. </xsl:text>
                </span>
            </xsl:if>

            <xsl:if test="exists(note_3)">
                <span class="note_3">
                    <xsl:apply-templates select="note_3"/>
                    <xsl:text>. </xsl:text>
                </span>
            </xsl:if>

            <xsl:if test="exists(note_4)">
                <span class="note_4">
                    <xsl:apply-templates select="note_4"/>
                    <xsl:text>. </xsl:text>
                </span>
            </xsl:if>

            <xsl:if test="exists(note_5)">
                <span class="note_5">
                    <xsl:apply-templates select="note_5"/>
                    <xsl:text>. </xsl:text>
                </span>
            </xsl:if>




        </li>

    </xsl:template>




</xsl:stylesheet>
