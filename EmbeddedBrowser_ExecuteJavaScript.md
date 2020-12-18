# Execute JavasScript in Embedded Browser
With  RPA11.1, you can execute JavasScript in the Embedded Browser (Chromium) using the Action **Execute JavasScript**.  
It is found in the right-click menu in the App Tab above the Browser Window.  
![image](https://user-images.githubusercontent.com/47416964/102634150-b6cd5b00-4151-11eb-968b-c8922781a111.png)

The **Execute JavasScript** step requires one **text input** for the javascript and one **text output** to hold the Execution results.  
![image](https://user-images.githubusercontent.com/47416964/102635725-001eaa00-4154-11eb-98e5-e4726ece9100.png)

The JavasScript must be in the form of a [Self-invoking function](https://www.w3schools.com/js/js_function_definition.asp).
The **return** step returns a value back to the robot.  
```javascript
(function(){
  let d=document.querySelector("H3");
  d.innerHTML="ABC";
  return "success";
})();
```
## Tip - How to use variables in JavasScript
If your JavasScript is dynamic, use **" \n"** for each line and append each line with **+** for readibility.
*This example replaces the value of the first *H3* in the document with "DEF" and returns the same value to the robot*
```
"(function(){\n"
+"  let d=document.querySelector(\"H3\");\n"
+"  d.innerHTML=\""+value+"\";\n"
+"  return d.innerHTML;\n"
+"})();"
```
![image](https://user-images.githubusercontent.com/47416964/102634819-aec1eb00-4152-11eb-9cfc-6f2f341ecf34.png)
## Tip - how to easily find Selectors
You can use [CSS Selectors](https://www.w3schools.com/cssref/css_selectors.asp) with [document.querySelector()](https://developer.mozilla.org/en-US/docs/Web/API/Document/querySelector) to find an HTML element in the webpage.  
To easily find a CSS Selector,  click on any element and add a **Found Location Guard**.  
![image](https://user-images.githubusercontent.com/47416964/102635403-8dadca00-4153-11eb-8ff6-87147590482b.png)

Then expand the Guard and you will see the selector in the **Component**.  
![image](https://user-images.githubusercontent.com/47416964/102635524-bcc43b80-4153-11eb-8171-0ada773cc84d.png)


