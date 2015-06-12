<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>   
    
    <pattern>
       
        <rule context="//@ref | //@corresp ">
          <!--  <assert test="substring-after(., '#') = //tei:text//@xml:id">
                The attribute of @ref or @corresp (after the hashtag, #) must match a defined @xml:id in this file. 
            </assert>-->
            <assert test="starts-with(., '#')">
            </assert>
            
            <let name="tokens" value="for $w in tokenize(., '\s+') return substring-after($w, '#')"/>
            <assert test="every $token in $tokens satisfies $token = //tei:text//@xml:id">
                The attribute of @ref or @corresp (after the hasthtag, #) must match a defined @xml:id in this file.
            </assert>
            
        </rule>
       
    </pattern>
    
    <pattern>
        <rule context="//@xml:id">     
                <report test="matches(., '\s+')">
                @xml:id values may NOT contain white spaces!
            </report>
        </rule>
        
        
        
    </pattern>
    
</schema>