<html>
<html lang="en">
<head>
  <title>Numerical Tellus</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="refresh" content="30" >
  <link rel="stylesheet" href="bootstrap.min.css">
  <script src="jquerymin.js"></script>
  <script src="bootstrap.min.js"></script>
  <style>
        #free {
            position: absolute;
            top: 330px;
            left: 760px;
            font-size: 18em;
            color: white;
            height: 200px;
            width: 400px;
            text-align: center; 
        }
        #update {
            position: absolute;
            top: 985px;
            left: 0px;
            font-size: 4em;
            color: white;
            height: 200px;
            width: 1800px;
            text-align: right; 
        }        
  </style>
</head> 
<body>
<div>
    <img id="bg1" src="tellusBG.png"/>
        <table style="position: absolute; top: 309px; left: 1291px";>
        <tr>
            <td></td><td></td><td></td><td></td>
            
            <td><img src="m{{PAIKKA1}}t.png"/></td>
            <td><img src="m{{PAIKKA2}}t.png"/></td>
            <td><img src="m{{PAIKKA3}}t.png"/></td>
        </tr>
        <tr>
            <td></td><td></td><td></td><td></td>
            <td><img src="m{{PAIKKA4}}t.png"/></td>
            <td><img src="m{{PAIKKA5}}t.png"/></td>
            <td><img src="m{{PAIKKA6}}t.png"/></td>
        </tr>
        <tr>
            <!-- empty row-->
            <td><img src="blank.png"/></td>
        </tr>
        <tr>
            <td></td><td></td><td></td>
            <td><img src="m{{PAIKKA7}}t.png"/></td>
            <td><img src="m{{PAIKKA8}}t.png"/></td>
            <td><img src="m{{PAIKKA9}}t.png"/></td>
            <td><img src="m{{PAIKKA10}}t.png"/></td>
        </tr>
        <tr>
            <td></td><td></td><td></td>
            <td><img src="m{{PAIKKA11}}t.png"/></td>
            <td><img src="m{{PAIKKA12}}t.png"/></td>
            <td><img src="m{{PAIKKA13}}t.png"/></td>
            <td><img src="m{{PAIKKA14}}t.png"/></td>
        </tr>
        <tr>
            <!-- empty row-->
            <td><img src="blank.png"/></td>
        </tr>
        <tr>
            <td></td><td></td>
            <td><img src="m{{PAIKKA15}}t.png"/></td>
            <td><img src="m{{PAIKKA16}}t.png"/></td>
            <td><img src="m{{PAIKKA17}}t.png"/></td>
            <td><img src="m{{PAIKKA18}}t.png"/></td>
            <td><img src="m{{PAIKKA19}}t.png"/></td>
        </tr>
        <tr>
            <td></td><td></td>
            <td><img src="m{{PAIKKA20}}t.png"/></td>
            <td><img src="m{{PAIKKA21}}t.png"/></td>
            <td><img src="m{{PAIKKA22}}t.png"/></td>
            <td><img src="m{{PAIKKA23}}t.png"/></td>
            <td><img src="m{{PAIKKA24}}t.png"/></td>
        </tr>
        <tr>
            <!-- empty row-->
            <td><img src="blank.png"/></td>
        </tr>
        <tr>
            <td></td>
            <td><img src="m{{PAIKKA25}}t.png"/></td>
            <td><img src="m{{PAIKKA26}}t.png"/></td>
            <td><img src="m{{PAIKKA27}}t.png"/></td>
            <td><img src="m{{PAIKKA28}}t.png"/></td>
            <td><img src="m{{PAIKKA29}}t.png"/></td>
            <td><img src="m{{PAIKKA30}}t.png"/></td>
        </tr>      
        <tr>
            <td></td>
            <td><img src="m{{PAIKKA31}}t.png"/></td>
            <td><img src="m{{PAIKKA32}}t.png"/></td>
            <td><img src="m{{PAIKKA33}}t.png"/></td>
            <td><img src="m{{PAIKKA34}}t.png"/></td>
            <td><img src="m{{PAIKKA35}}t.png"/></td>
            <td><img src="m{{PAIKKA36}}t.png"/></td>
        </tr>
        <tr>
            <!-- empty row-->
            <td><img src="blank.png"/></td>
        </tr>
        <tr>
            <td><img src="m{{PAIKKA37}}t.png"/></td>
            <td><img src="m{{PAIKKA38}}t.png"/></td>
            <td><img src="m{{PAIKKA39}}t.png"/></td>
            <td><img src="m{{PAIKKA40}}t.png"/></td>
            <td><img src="m{{PAIKKA41}}t.png"/></td>
            <td><img src="m{{PAIKKA42}}t.png"/></td>
            <td><img src="m{{PAIKKA43}}t.png"/></td>
        </tr>      
        <tr>
            <td><img src="m{{PAIKKA44}}t.png"/></td>
            <td><img src="m{{PAIKKA45}}t.png"/></td>
            <td><img src="m{{PAIKKA46}}t.png"/></td>
            <td><img src="m{{PAIKKA47}}t.png"/></td>
            <td><img src="m{{PAIKKA48}}t.png"/></td>
            <td><img src="m{{PAIKKA49}}t.png"/></td>
            <td><img src="m{{PAIKKA50}}t.png"/></td>
        
        </tr>
        
    <!--<input type="checkbox" value="1">-->
    </table>
    <img id="ws1" src="ws1.png" style="position: absolute; top: 308px; left: 1290px"/>
</div>
<div id="free">{{FREE}}</div>​
<div id="update">Updated {{DELAY}} min ago</div>​
</body>
</html>