function turnOn(location)
    	{
    	
    	var node = document.getElementById(location); 

    	node.style.opacity = "0.3";
    	}
    	
function turnOff(location)
    	{
    	
    	var node = document.getElementById(location); 
    	
    	node.style.opacity = "0";
    	
    	}

function goTo(locationID)
    	{
    	
    	document.getElementById('resultsFrame').src=("http://bloodborne.newtfire.org/fetchResults.html?id=" + locationID);
    	
    	}

function getTitle()
           {
           
           var raw = window.location.href;
           
           var url = raw.replace("%27","\'")
           
           document.getElementById("queryString").innerHTML = url;
           
           var queryString = url.split("=")[1];
           
           var newTitle = queryString.replace("_"," ");
           
           document.title = newTitle;
           
           SaxonJS.transform({
                                stylesheetLocation: "XSLT/locationPaneSJS.sef",
                                sourceLocation: "XML/mainXML.xml",
                                stylesheetParams: pQString = window.location.href
                                });
           
           }