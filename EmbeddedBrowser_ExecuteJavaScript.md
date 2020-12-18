# Execute JavaScript in Embedded Browser
With  RPA11.1, you can execute JavaScript in the Embedded Browser (Chromium) using the Action **Execute JavaScript**.  
It is found in the right-click menu in the App Tab above the Browser Window.  
![image](https://user-images.githubusercontent.com/47416964/102634150-b6cd5b00-4151-11eb-968b-c8922781a111.png)

The **Execute JavaScript** step requires one **text input** for the javascript and one **text output** to hold the Execution results.  
![image](https://user-images.githubusercontent.com/47416964/102635725-001eaa00-4154-11eb-98e5-e4726ece9100.png)

The JavaScript must be in the form of a [Self-invoking function](https://www.w3schools.com/js/js_function_definition.asp).
The **return** step returns a value back to the robot.  
```JavaScript
(function(){
  let d=document.querySelector("H3");
  d.innerHTML="ABC";
  return "success";
})();  //this final () is what actually executes the self-invoking function
```
## Tip - How to use variables in JavasScript
If your JavaScript is dynamic, use **" \n"** at the end of each line and end each line except the last with **+** for readibility.
*This example replaces the value of the first *H3* in the document with "DEF" and returns the same value to the robot*
```
"(function(){\n"+
"  let d=document.querySelector(\"H3\");\n"+
"  d.innerHTML=\""+value+"\";\n"+
"  return d.innerHTML;\n"+
"})();"
```
![image](https://user-images.githubusercontent.com/47416964/102636811-67892980-4155-11eb-8861-1119073e711d.png)

## Tip - how to easily find Selectors
You can use [CSS Selectors](https://www.w3schools.com/cssref/css_selectors.asp) with [document.querySelector()](https://developer.mozilla.org/en-US/docs/Web/API/Document/querySelector) to find an HTML element in the webpage.  
To easily find a CSS Selector,  click on any element and add a **Found Location Guard**.  
![image](https://user-images.githubusercontent.com/47416964/102635403-8dadca00-4153-11eb-8ff6-87147590482b.png)

Then expand the Guard and you will see the selector in the **Component**.  
![image](https://user-images.githubusercontent.com/47416964/102635524-bcc43b80-4153-11eb-8171-0ada773cc84d.png)



