<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>   
    
    <pattern>
       
        <rule context="//@ref | //@corresp | //@resp">
            
            <let name="tokens" value="for $w in tokenize(., '\s+') return substring-after($w, '#')"/>
            <assert test="every $token in $tokens satisfies $token = //tei:text//@xml:id">
                The attribute of @ref or @corresp (after the hasthtag, #) must match a defined @xml:id in this file. 
                And did you remember to start with a hashtag when pointing to an xml:id? 
            </assert>
         
            
        </rule>
       
    </pattern>
    
    <pattern>
        <rule context="//@xml:id">     
                <report test="matches(., '\s+')">
                @xml:id values may NOT contain white spaces!
            </report>
            <report test="starts-with(., '#')">
                @xml:id values may NOT begin with a hashtag.
            </report>
        </rule> 
    </pattern>
    <pattern>
        <rule context="text//div/*">
            <assert test="@sortKey = ('Mitford_Team', 'archives', 'Past_Editors', 'histOrgs', 'histPersons', 'fictOrgs', 'archOrgs', 'archPersons', 'fictPersons', 'histPlaces', 'fictPlaces', 'plants', 'histEvents', 'art', 'ref_19thc', 'per_19thc', 'literary', 'MRM_Schol', 'other_current_Schol')">
                
            </assert>
        </rule>

           
       
       
    </pattern>
    
</schema>