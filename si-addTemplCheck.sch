<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>   
    
   
    <pattern>
        <let name="si" value="doc('http://mitford.pitt.edu/si.xml')//@xml:id"/> 
        <rule context="//@ref | //@corresp">
            <assert test="substring-after(., '#') = //tei:text//@xml:id | $si">
                
                The attribute of @ref or @corresp (after the hashtag, #) must match a defined @xml:id in this file or the main site index file.. 
            </assert>
         
            
            
        </rule>
       
    </pattern>
    
    <pattern>
        <rule context="tei:text//@xml:id">
            <report test="matches(., '\s+')">
                @xml:id values may NOT contain white spaces!
            </report>
            
            
            
        </rule>
        
    </pattern>
    
</schema>