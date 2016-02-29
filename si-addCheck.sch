<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>   
    
   
    <pattern>
        <let name="si" value="doc('http://digitalmitford.org/si.xml')//@xml:id"/> 
       
            <rule context="//@ref | //@corresp | //@resp">
                
                <let name="tokens" value="for $w in tokenize(., '\s+') return substring-after($w, '#')"/>
                <assert test="every $token in $tokens satisfies $token = //tei:text//@xml:id | $si">
                    The attribute of @ref or @corresp (after the hasthtag, #) must match a defined @xml:id in this file. 
                    And did you remember to start with a hashtag when pointing to an xml:id? 
                </assert>
                
                
            </rule>
            
            
           <!-- <assert test="substring-after(., '#') = //tei:text//@xml:id | $si">
                
                The attribute of @ref or @corresp (after the hashtag, #) must match a defined @xml:id in this file or the main site index file.. 
            </assert>
         
            <assert test="starts-with(., '#')">
                The attribute values of @ref, @resp, and @corresp must start with a hashtag.
            </assert>
            -->
        
       
    </pattern>
    
    <pattern>
        <rule context="tei:text//@xml:id">
            <report test="matches(., '\s+')">
                @xml:id values may NOT contain white spaces!
            </report>   
           <report test="starts-with(., '#')">
               @xml:id values may NOT begin with a hashtag.
           </report>
        </rule>
    </pattern>
    
</schema>