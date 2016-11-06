<!DOCTYPE html>
<html lang="en">
<head>
  <title>Checkmark parking lot</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="bootstrap.min.css">
  <script src="jquerymin.js"></script>
  <script src="bootstrap.min.js"></script>
  
    <style>
        #mark1, #mark2, #mark3, #mark4{
            z-index: 10;
        }     

       body{
            background-color: #004766;
        }
            
        h1 {
            text-align: center;
            color: white;
            font-size: 4em;
            <!--text-transform: uppercase;-->
        }
        #t1, #t2, #t3, #t4 {
           position: absolute;
           top: 425px;

           width: 100%;
           z-index: 11;
           font-size: 10em;
           color: white;
        }
        #t1 {
           left: 370px;        
        }
        #t2 {
           left: 745px;         
        }
        #t3 {
           left: 1120px;        
        }
        #t4 {
           left: 1495px;         
        }

    </style>
  
</head>
<body>

<div>

    <img id="bg1" src="bg1.png"/>
    <img id="mark1" src="m{{freespaces1}}b.png" style="position: absolute; top: 220px; left: 242px;"/>
    <img id="mark2" src="m{{freespaces2}}b.png" style="position: absolute; top: 220px; left: 616px;"/>
    <img id="mark3" src="m{{freespaces3}}b.png" style="position: absolute; top: 220px; left: 991px;"/>
    <img id="mark4" src="m{{freespaces4}}b.png" style="position: absolute; top: 220px; left: 1365px;"/>

    <h1>Päivitetty {{delay}} min sitten</h1>
</div>
<div id="t1">{{freespaces1}}</div>​ <!--Replace these with the real values -->
<div id="t2">{{freespaces2}}</div>​
<div id="t3">{{freespaces3}}</div>​
<div id="t4">{{freespaces4}}</div>​
</body>
</html>



</body>
</html>
