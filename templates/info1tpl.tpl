<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="bootstrap.min.css">
  <script src="jquerymin.js"></script>
  <script src="bootstrap.min.js"></script>
  
    <style>

    .text1{
        color: yellow;
    }
    
    .text2{
        color: green;
    }
    
    .text3{
        color: red;
    }

    body{
        background-color: black;
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
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="text-center text1">Parking lot info</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <h1 class="text-center text2">{{freespaces}}/50 free</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <p class="text-right text3">Updated 15 min ago</p>   
        </div>
    </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="progress">
                <div class="progress-bar progress-bar-danger  progress-bar-striped active" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:70%">
                    70% Complete (danger)
                </div>
            </div>
        </div>
    </div>
</div>



</body>
</html>
