<!DOCTYPE html>
<html lang="en">
<head>
  <title>Parking lot admin</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="bootstrap.min.css">
  <script src="jquerymin.js"></script>
  <script src="bootstrap.min.js"></script>
  
    <style>

.center{
width: 150px;
  margin: 40px auto;
  
}


    </style>
  

</head>
<body>
  <!--
<div class="container">
  <h1>My First Bootstrap Page</h1>
  <p>This part is inside a .container class.</p> 
  <p>The .container class provides a responsive fixed width container.</p>           
</div>
-->
<form action="/tadmin" method="post">
    <table>
        <tr>
            <td></td><td></td><td></td><td></td>
            <td><input type="checkbox" name="paikat" value="1" {{PAIKKA1}}></td>
            <td><input type="checkbox" name="paikat" value="2" {{PAIKKA2}}></td>
            <td><input type="checkbox" name="paikat" value="3" {{PAIKKA3}}></td>
        </tr>
        <tr>
            <td></td><td></td><td></td><td></td>
            <td><input type="checkbox" name="paikat" value="4" {{PAIKKA4}}></td>
            <td><input type="checkbox" name="paikat" value="5" {{PAIKKA5}}></td>
            <td><input type="checkbox" name="paikat" value="6" {{PAIKKA6}}></td>
        </tr>
        <tr>
            <!-- empty row-->
            <td>a</td><td></td><td></td><td></td><td></td><td></td><td></td>
        </tr>
        <tr>
            <td></td><td></td><td></td>
            <td><input type="checkbox" name="paikat" value="7" {{PAIKKA7}}></td>
            <td><input type="checkbox" name="paikat" value="8" {{PAIKKA8}}></td>
            <td><input type="checkbox" name="paikat" value="9" {{PAIKKA9}}></td>
            <td><input type="checkbox" name="paikat" value="10" {{PAIKKA10}}></td>
        </tr>
        <tr>
            <td></td><td></td><td></td>
            <td><input type="checkbox" name="paikat" value="11" {{PAIKKA11}}></td>
            <td><input type="checkbox" name="paikat" value="12" {{PAIKKA12}}></td>
            <td><input type="checkbox" name="paikat" value="13" {{PAIKKA13}}></td>
            <td><input type="checkbox" name="paikat" value="14" {{PAIKKA14}}></td>
        </tr>
        <tr>
            <!-- empty row-->
            <td>a</td><td></td><td></td><td></td><td></td><td></td><td></td>
        </tr>
        <tr>
            <td></td><td></td>
            <td><input type="checkbox" name="paikat" value="15" {{PAIKKA15}}></td>
            <td><input type="checkbox" name="paikat" value="16" {{PAIKKA16}}></td>
            <td><input type="checkbox" name="paikat" value="17" {{PAIKKA17}}></td>
            <td><input type="checkbox" name="paikat" value="18" {{PAIKKA18}}></td>
            <td><input type="checkbox" name="paikat" value="19" {{PAIKKA19}}></td>
        </tr>
        <tr>
            <td></td><td></td>
            <td><input type="checkbox" name="paikat" value="20" {{PAIKKA20}}></td>
            <td><input type="checkbox" name="paikat" value="21" {{PAIKKA21}}></td>
            <td><input type="checkbox" name="paikat" value="22" {{PAIKKA22}}></td>
            <td><input type="checkbox" name="paikat" value="23" {{PAIKKA23}}></td>
            <td><input type="checkbox" name="paikat" value="24" {{PAIKKA24}}></td>
        </tr>
        <tr>
            <!-- empty row-->
            <td>a</td><td></td><td></td><td></td><td></td><td></td><td></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="checkbox" name="paikat" value="25" {{PAIKKA25}}></td>
            <td><input type="checkbox" name="paikat" value="26" {{PAIKKA26}}></td>
            <td><input type="checkbox" name="paikat" value="27" {{PAIKKA27}}></td>
            <td><input type="checkbox" name="paikat" value="28" {{PAIKKA28}}></td>
            <td><input type="checkbox" name="paikat" value="29" {{PAIKKA29}}></td>
            <td><input type="checkbox" name="paikat" value="30" {{PAIKKA30}}></td>
        </tr>      
        <tr>
            <td></td>
            <td><input type="checkbox" name="paikat" value="31" {{PAIKKA31}}></td>
            <td><input type="checkbox" name="paikat" value="32" {{PAIKKA32}}></td>
            <td><input type="checkbox" name="paikat" value="33" {{PAIKKA33}}></td>
            <td><input type="checkbox" name="paikat" value="34" {{PAIKKA34}}></td>
            <td><input type="checkbox" name="paikat" value="35" {{PAIKKA35}}></td>
            <td><input type="checkbox" name="paikat" value="36" {{PAIKKA36}}></td>
        </tr>
        <tr>
            <!-- empty row-->
            <td>a</td><td></td><td></td><td></td><td></td><td></td><td></td>
        </tr>
        <tr>
            <td><input type="checkbox" name="paikat" value="37" {{PAIKKA37}}></td>
            <td><input type="checkbox" name="paikat" value="38" {{PAIKKA38}}></td>
            <td><input type="checkbox" name="paikat" value="39" {{PAIKKA39}}></td>
            <td><input type="checkbox" name="paikat" value="40" {{PAIKKA40}}></td>
            <td><input type="checkbox" name="paikat" value="41" {{PAIKKA41}}></td>
            <td><input type="checkbox" name="paikat" value="42" {{PAIKKA42}}></td>
            <td><input type="checkbox" name="paikat" value="43" {{PAIKKA43}}></td>
        </tr>      
        <tr>
            <td><input type="checkbox" name="paikat" value="44" {{PAIKKA44}}></td>
            <td><input type="checkbox" name="paikat" value="45" {{PAIKKA45}}></td>
            <td><input type="checkbox" name="paikat" value="46" {{PAIKKA46}}></td>
            <td><input type="checkbox" name="paikat" value="47" {{PAIKKA47}}></td>
            <td><input type="checkbox" name="paikat" value="48" {{PAIKKA48}}></td>
            <td><input type="checkbox" name="paikat" value="49" {{PAIKKA49}}></td>
            <td><input type="checkbox" name="paikat" value="50" {{PAIKKA50}}></td>
        
        </tr>
        
    <!--<input type="checkbox" value="1">-->
    </table>
    <br>
    <button name="paivita" type="submit" value="paivita">Lähetä</button>
    <br>
    <br>
    <button name="event" type="submit" value="1">Ihminen käveli suoraan paikalle</button>
    <br>
    <button name="event" type="submit" value="2">Ihminen etsi paikkaa epätietoisena ja löysi sen</button>
    <br>
    <button name="event" type="submit" value="3">Ihminen etsi paikkaa mutta ei löytänyt sitä</button>
</form>
</body>
</html>