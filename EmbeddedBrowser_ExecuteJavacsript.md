#Execute Javascript in Embedded Browser
You can now execute javascript in the Embedded Browser using the Action **Execute Javascript**.  It is found in the right-click menu in the App Tab above the Browser  
![image](https://user-images.githubusercontent.com/47416964/102634150-b6cd5b00-4151-11eb-968b-c8922781a111.png)

The **Execute Javascript** step requires text input for the javascript and a text output to hold the Execution results.  
The javascrit must be of this form.
```javascript
(function(){
  let d=document.querySelector("H3");
  d.innerHTML="ABC";
  return "success";
})();
```
# Tip - How to use variables in javascript
If your javascript is dynamic, use **" \n"** for each line and append each line with **+**  
*This example replaces the value of the first *H3* in the document with "DEF" and returns the same value to the robot*
```
"(function(){\n"
+"  let d=document.querySelector(\"H3\");\n"
+"  d.innerHTML=\""+value+"\";\n"
+"  return d.innerHTML;\n"
+"})();"
```
![image](https://user-images.githubusercontent.com/47416964/102634819-aec1eb00-4152-11eb-9cfc-6f2f341ecf34.png)
# Tip - how to easily find Selectors
You can use [CSS Selectors](https://www.w3schools.com/cssref/css_selectors.asp) with [document.querySelector()](https://developer.mozilla.org/en-US/docs/Web/API/Document/querySelector) to find an HTML element in the webpage
