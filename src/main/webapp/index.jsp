<!DOCTYPE html>
<html>
<div align="center" style="border:3px solid #73AD21;">
<title>Unit Conversion Validator</title>
<style>
body {
  // background-color: coral;
}
</style>
<body>

<h2>Unit Conversion Validator</h2>
<p>Enter your values below:</p>
<p>
  <label>Input Numerical Value</label>
  <input id="ir" type="number" placeholder="numerical value"
</p>
<p>
  <label>Student Response</label>
  <input id="sr" type="number" placeholder="numerical value"
</p>
<p>
  <label>Input Unit of Measure</label>
  <input type="text" id=iu name="iunit" list="measure" placeholder="select from dropdown"><br>
    <datalist id="measure">
      <option value="Farenheit">
      <option value="Rankine">
	  <option value="Kelvin">
      <option value="Celsius">
	  <option value="litres">
      <option value="gallons">
      <option value="tablespoons">
      <option value="cubic-inches">
      <option value="cups">
      <option value="cubic-feet">
    </datalist>
</p>
<p>
  <label>Target Unit of Measure</label>
    <input type="text" id ="tu" name="tunit" list="measure"placeholder="select from dropdown"><br>
    <datalist id="measure">
      <option value="Farenheit">
      <option value="Rankine">
	  <option value="Kelvin">
      <option value="Celsius">
	  <option value="litres">
      <option value="gallons">
      <option value="tablespoons">
      <option value="cubic-inches">
      <option value="cups">
      <option value="cubic-feet">
    </datalist>
   
</p>
<button onclick="LengthConverter()">Validate</button>
<p>Output: <span id="outputMeters"></span></p>
</div>
<script>
function LengthConverter() {

var t=document.getElementById("iu").value
var t1=document.getElementById("tu").value

switch(t){
case "Farenheit":
  if(t1 === "Celsius"){// Farenheit to celsius
       var conv=(document.getElementById("ir").value-32)*(5/9).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
  else if(t1 === "Kelvin"){// Farenheit to kelvin
       var conv=((document.getElementById("ir").value-32)*(5/9)+273.15).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
    else if(t1 === "Rankine"){// Farenheit to Rankine
       var conv=(Number(document.getElementById("ir").value)+459.67).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
    else{
    	output('invalid');   
        }
break;

case "Celsius":
    if(t1 === "Farenheit"){//celsius to Farenheit
       var conv=(document.getElementById("ir").value*1.8 +32).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
  else if(t1 === "Kelvin"){// celsius to kelvin
       var conv=(Number(document.getElementById("ir").value)+273.15).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
  else if(t1 === "Rankine"){// celsius to Rankine
       var conv=(Number(document.getElementById("ir").value)*(9/5)+491.67).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }

    else{
    	output('invalid');   
        }
break;

case "Kelvin":
    if(t1 === "Farenheit"){//Kelvin to Farenheit
       var conv=((Number(document.getElementById("ir").value)-273.15)*      (9/5)+32).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
  else if(t1 === "Celsius"){//kelvin to celsius
       var conv=(Number(document.getElementById("ir").value)-273.15).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
  else if(t1 === "Rankine"){// kelvin to Rankine
       var conv=(Number(document.getElementById("ir").value)*(1.8)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }

         }
   else{
    	output('invalid');   
        }
break;

case "Rankine":
    if(t1 === "Farenheit"){//Rankine to Farenheit
       var conv=(Number(document.getElementById("ir").value)-459.67).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
  else if(t1 === "Celsius"){//Rankine to celsius
       var conv=((Number(document.getElementById("ir").value)-491.67)*(5/9)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
  else if(t1 === "Kelvin"){//Rankine to kelvin
       var conv=(Number(document.getElementById("ir").value)*(5/9)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
   else{
    	output('invalid');   
        }

break;

case "litres":
    if(t1 === "tablespoons"){//Litres to tablespoons
       var conv=((Number(document.getElementById("ir").value))*(67.628)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
  else if(t1 === "cubic-inches"){//Litres to cubic-inches
       var conv=((Number(document.getElementById("ir").value))*(61.024)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
  else if(t1 === "cups"){//Litres to cups
       var conv=((Number(document.getElementById("ir").value))*(4.167)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
  else if(t1 === "cubic-feet"){//Litres to cubic-feet
       var conv=((Number(document.getElementById("ir").value))/(28.317)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
   else if(t1 === "gallons"){//Litres to gallons
       var conv=((Number(document.getElementById("ir").value))/(3.785)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }

   else{
    	output('invalid');   
        }
break;

case "tablespoons":
    if(t1 === "litres"){//tablespoons to Litres
       var conv=((Number(document.getElementById("ir").value))/(67.628)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
  else if(t1 === "cubic-inches"){//tablespoons to cubic-inches
       var conv=((Number(document.getElementById("ir").value))/(1.108)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
  else if(t1 === "cups"){//tablespoons to cups
       var conv=((Number(document.getElementById("ir").value))/(16.231)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
  else if(t1 === "cubic-feet"){//tablespoons to cubic-feet
       var conv=((Number(document.getElementById("ir").value))/(1915)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
   else if(t1 === "gallons"){//tablespoons to gallons
       var conv=((Number(document.getElementById("ir").value))/(256)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
   else{
    	output('invalid');   
        }
break;

case "cubic-inches":
    if(t1 === "litres"){//cubic-inches to Litres
       var conv=((Number(document.getElementById("ir").value))/(61.024)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
  else if(t1 === "tablespoons"){//cubic-inches to tablespoons
       var conv=((Number(document.getElementById("ir").value))*(1.108)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
  else if(t1 === "cups"){//cubic-inches to cups
       var conv=((Number(document.getElementById("ir").value))/(14.646)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
  else if(t1 === "cubic-feet"){//cubic-inches to cubic-feet
       var conv=((Number(document.getElementById("ir").value))/(1728)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
   else if(t1 === "gallons"){//cubic-inches to gallons
       var conv=((Number(document.getElementById("ir").value))/(231)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
   else{
    	output('invalid');   
        }
break;

case "cups":
    if(t1 === "litres"){//cups to Litres
       var conv=((Number(document.getElementById("ir").value))/(4.167)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
  else if(t1 === "tablespoons"){//cups to tablespoons
       var conv=((Number(document.getElementById("ir").value))*(16.231)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
  else if(t1 === "cubic-inches"){//cups to cubic-inches 
       var conv=((Number(document.getElementById("ir").value))*(14.646)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
  else if(t1 === "cubic-feet"){//cups to cubic-feet
       var conv=((Number(document.getElementById("ir").value))/(118)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
   else if(t1 === "gallons"){//cups to gallons
       var conv=((Number(document.getElementById("ir").value))/(15.773)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
   else{
    	output('invalid');   
        }
break;

case "cubic-feet":
    if(t1 === "litres"){//cubic-feet to Litres
       var conv=((Number(document.getElementById("ir").value))*(28.317)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
  else if(t1 === "tablespoons"){//cubic-feet to tablespoons
       var conv=((Number(document.getElementById("ir").value))*(1915)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
  else if(t1 === "cubic-inches"){//cubic-feet to cubic-inches 
       var conv=((Number(document.getElementById("ir").value))*(1728)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
  else if(t1 === "cups"){//cubic-feet to cups
       var conv=((Number(document.getElementById("ir").value))*(118)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
   else if(t1 === "gallons"){//cubic-feet to gallons
       var conv=((Number(document.getElementById("ir").value))*(7.481)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
   else{
    	output('invalid');   
        }
break;

case "gallons":
    if(t1 === "litres"){//gallons to Litres
       var conv=(Number(document.getElementById("ir").value)*(3.785)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
  else if(t1 === "tablespoons"){//gallons to tablespoons
       var conv=(Number(document.getElementById("ir").value)*(256)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
  else if(t1 === "cubic-inches"){//gallons to cubic-inches 
       var conv=(Number(document.getElementById("ir").value)*(231)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
  else if(t1 === "cups"){//gallons to cups
       var conv=(Number(document.getElementById("ir").value)*(15.773)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
   else if(t1 === "cubic-feet"){//gallons to cubic-feet
       var conv=(Number(document.getElementById("ir").value)/(7.481)).toFixed(2);
       var sconv=Number(document.getElementById("sr").value).toFixed(2);
          if(conv==sconv){
                  output('correct');
                         } else {
                                 output('incorrect');
                                }
                      }
   else{
    	output('invalid');   
        }
break;

default:
output('invalid');
}

function output(val){
if(val=='invalid'){
document.getElementById("outputMeters").innerHTML="<span style='color:#FF0000'>"+val+" </span>";
}
else if(val=='incorrect'){
document.getElementById("outputMeters").innerHTML="<span style='color:#FF0000'>"+val+" </span>";
}
else {
document.getElementById("outputMeters").innerHTML="<span style='color:#33cc33'>"+val+" </span>";
}
}  
}
</script>
</body>
</html>
