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

.center{
width: 150px;
  margin: 40px auto;
  
}
    </style>
  
  <script>
//plugin bootstrap minus and plus
//http://jsfiddle.net/laelitenetwork/puJ6G/
$( document ).ready(function() {
    $('.btn-number').click(function(e){
        e.preventDefault();
        
        var fieldName = $(this).attr('data-field');
        var type      = $(this).attr('data-type');
        var input = $("input[name='"+fieldName+"']");
        var currentVal = parseInt(input.val());
        if (!isNaN(currentVal)) {
            if(type == 'minus') {
                var minValue = parseInt(input.attr('min')); 
                if(!minValue) minValue = 1;
                if(currentVal > minValue) {
                    input.val(currentVal - 1).change();
                } 
                if(parseInt(input.val()) == minValue) {
                    $(this).attr('disabled', true);
                }
    
            } else if(type == 'plus') {
                var maxValue = parseInt(input.attr('max'));
                if(!maxValue) maxValue = 9999999999999;
                if(currentVal < maxValue) {
                    input.val(currentVal + 1).change();
                }
                if(parseInt(input.val()) == maxValue) {
                    $(this).attr('disabled', true);
                }
    
            }
        } else {
            input.val(0);
        }
    });
    $('.input-number').focusin(function(){
       $(this).data('oldValue', $(this).val());
    });
    $('.input-number').change(function() {
        
        var minValue =  parseInt($(this).attr('min'));
        var maxValue =  parseInt($(this).attr('max'));
        if(!minValue) minValue = 1;
        if(!maxValue) maxValue = 9999999999999;
        var valueCurrent = parseInt($(this).val());
        
        var name = $(this).attr('name');
        if(valueCurrent >= minValue) {
            $(".btn-number[data-type='minus'][data-field='"+name+"']").removeAttr('disabled')
        } else {
            alert('Sorry, the minimum value was reached');
            $(this).val($(this).data('oldValue'));
        }
        if(valueCurrent <= maxValue) {
            $(".btn-number[data-type='plus'][data-field='"+name+"']").removeAttr('disabled')
        } else {
            alert('Sorry, the maximum value was reached');
            $(this).val($(this).data('oldValue'));
        }
        
        
    });
    $(".input-number").keydown(function (e) {
            // Allow: backspace, delete, tab, escape, enter and .
            if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 190]) !== -1 ||
                 // Allow: Ctrl+A
                (e.keyCode == 65 && e.ctrlKey === true) || 
                 // Allow: home, end, left, right
                (e.keyCode >= 35 && e.keyCode <= 39)) {
                     // let it happen, don't do anything
                     return;
            }
            // Ensure that it is a number and stop the keypress
            if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
                e.preventDefault();
            }
    });
});
  </script>
</head>
<body>
  <!--
<div class="container">
  <h1>My First Bootstrap Page</h1>
  <p>This part is inside a .container class.</p> 
  <p>The .container class provides a responsive fixed width container.</p>           
</div>
-->
<form action="/padmin" method="post">
  <div class="center">
    <p>Alue1</p>
    <div class="input-group">
          <span class="input-group-btn">
              <button type="button" class="btn btn-default btn-number" disabled="disabled" data-type="minus" data-field="quant[1]">
                  <span class="glyphicon glyphicon-minus"></span>
              </button>
          </span>
          <input type="text" name="quant[1]" class="form-control input-number" value="{{freespaces1}}" min="-10">
          <span class="input-group-btn">
              <button type="button" class="btn btn-default btn-number" data-type="plus" data-field="quant[1]">
                  <span class="glyphicon glyphicon-plus"></span>
              </button>
          </span>
    </div>
    <p></p>
    <p>Alue2</p>
    <div class="input-group">
          <span class="input-group-btn">
              <button type="button" class="btn btn-default btn-number" disabled="disabled" data-type="minus" data-field="quant[2]">
                  <span class="glyphicon glyphicon-minus"></span>
              </button>
          </span>
          <input type="text" name="quant[2]" class="form-control input-number" value="{{freespaces2}}" min="-10">
          <span class="input-group-btn">
              <button type="button" class="btn btn-default btn-number" data-type="plus" data-field="quant[2]">
                  <span class="glyphicon glyphicon-plus"></span>
              </button>
          </span>
    </div>
    <p></p>
    <p>Alue3</p>
    <div class="input-group">
          <span class="input-group-btn">
              <button type="button" class="btn btn-default btn-number" disabled="disabled" data-type="minus" data-field="quant[3]">
                  <span class="glyphicon glyphicon-minus"></span>
              </button>
          </span>
          <input type="text" name="quant[3]" class="form-control input-number" value="{{freespaces3}}" min="-10">
          <span class="input-group-btn">
              <button type="button" class="btn btn-default btn-number" data-type="plus" data-field="quant[3]">
                  <span class="glyphicon glyphicon-plus"></span>
              </button>
          </span>
    </div>
    <p></p>
    <p>Alue4</p>
    <div class="input-group">
          <span class="input-group-btn">
              <button type="button" class="btn btn-default btn-number" disabled="disabled" data-type="minus" data-field="quant[4]">
                  <span class="glyphicon glyphicon-minus"></span>
              </button>
          </span>
          <input type="text" name="quant[4]" class="form-control input-number" value="{{freespaces4}}" min="-10">
          <span class="input-group-btn">
              <button type="button" class="btn btn-default btn-number" data-type="plus" data-field="quant[4]">
                  <span class="glyphicon glyphicon-plus"></span>
              </button>
          </span>
    </div>
    <p></p>

</div>
<button type="submit" value="paivita">Lähetä</button>
<button name="kohde" type="submit" value="1">Alue1</button>
<button name="kohde" type="submit" value="2">Alue2</button>
<button name="kohde" type="submit" value="3">Alue3</button>
<button name="kohde" type="submit" value="4">Alue4</button>

<button name="layout" type="submit" value="1">Layout1</button>
<button name="layout" type="submit" value="2">Layout2</button>

<button name="delay" type="submit" value="1">Delay 1min</button>
<button name="delay" type="submit" value="15">Delay 15min</button>


</form>
</body>
</html>