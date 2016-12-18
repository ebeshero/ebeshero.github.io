window.onload = rotate
            var thisImage = 0;
            
            function rotate() {
          var images = new Array ('Images/maryrmitford.png', 'Images/MRMchild.png', 'Images/MRMwrit.png', 'Images/letter.png', 'Images/Flush.png', 'Images/MRMJul.png', 'Images/TMC.png'); 
          
          thisImage++;
          if (thisImage == images.length) {
          thisImage = 0;
          
          }
          document.getElementById("rotator").src = images[thisImage];
          
          setTimeout(rotate, 5 * 1000);
          }
          
  
       