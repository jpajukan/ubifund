<!DOCTYPE html>
<html lang="en">
<head>
  <title>Checkmark parking lot</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="refresh" content="30" >
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
           top: 372px;
           z-index: 11;
           font-size: 14em;
           color: white;
           height: 200px;
           width: 333px;
           text-align: center; 
        }
        #t1 {
           left: 242px;        
        }
        #t2 {
           left: 616px;         
        }
        #t3 {
           left: 991px;        
        }
        #t4 {
        }

    </style>
  
</head>

<body>

<div>
    <img id="bg1" src="bg1.png"/>
    <img id="mark1" src="m{{freespaces1binary}}b.png" style="position: absolute; top: 220px; left: 242px;"/>
    <img id="mark2" src="m{{freespaces2binary}}b.png" style="position: absolute; top: 220px; left: 616px;"/>
    <img id="mark3" src="m{{freespaces3binary}}b.png" style="position: absolute; top: 220px; left: 991px;"/>
    <img id="mark4" src="m{{freespaces4binary}}b.png" style="position: absolute; top: 220px; left: 1365px;"/>

    <h1>Päivitetty {{delay}} min sitten</h1>
</div>

<div id="t1">{{freespaces1}}</div>​
<div id="t2">{{freespaces2}}</div>​
<div id="t3">{{freespaces3}}</div>​
<div id="t4">{{freespaces4}}</div>​

</body>

</html>

