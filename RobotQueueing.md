# Robot Queueing in Kofax RPA

Kofax RPA 11.1 introduces Robot Queueing. You can now push a robot onto the robot queue with any input paramaters from other Robots or from any other program that supports [REST Service Calls](https://en.wikipedia.org/wiki/Representational_state_transfer)

The official documentation for Robot Queueing is in Chapter 3 (page 59) of the [RPA Developer's Guide](https://docshield.kofax.com/RPA/en_US/11.1.0_vwsnqu4c9o/print/KofaxRPADevelopersGuide_EN.pdf).

Robot Queueing has three steps
* Call **mc/tasks/robotInputExample** to see what inputs the robot requires. The sample robot does this within the robot itself. You can also do this manually in [Swagger](#swagger-ui).
* Call **mc/tasks/queueRobot** to queue your robot. This returns a ticket number for robot tracking.
* Optionally call **/mc/tasks/getRobotOutput/{ticket}** to see the robot progress (**Queued, Running, Finished, Error**) or its results if it has finished.

You can download the sample **QueueRobot.robot**, **Queue.type** and **Test Robot** from [here](https://github.com/KofaxRPA/RPA-11.1/tree/main/QueueRobot)

## Base64 encoding
Robot Queuing is quite easy, but you have to be careful of two things.
* You must use *pre-emptive* [Basic Access Authentication](https://en.wikipedia.org/wiki/Basic_access_authentication#Client_side).  
You cannot enter credentials here, (but this will be fixed in RPA 11.2)  
![image](https://user-images.githubusercontent.com/47416964/100008521-daf58080-2dcd-11eb-9d87-3cac1f88c76a.png)  
you must [Base64 encode](https://en.wikipedia.org/wiki/Base64#Examples) them and enter them here  
![image](https://user-images.githubusercontent.com/47416964/100008642-fe203000-2dcd-11eb-8480-9eedbac12d7d.png)  
The 4th converter adds **Authorization: Basic** before the Text.

You must also [Base64 encode](https://en.wikipedia.org/wiki/Base64#Examples) any binary attachments to robots, eg PDF, Zip, Images, Excel, MP4, MP3, etc.   
See the Robot Step **Set Robot Input - Image** to see how to convert an image to Base64 and add it to the robot input.  
![image](https://user-images.githubusercontent.com/47416964/100009065-9dddbe00-2dce-11eb-81d4-225c5e8bd36f.png)  
![image](https://user-images.githubusercontent.com/47416964/100009145-bc43b980-2dce-11eb-90f9-1554a401803e.png)



* **Test.robot** has 3 inputs (text, number and image) and simply writes the values to the log  
![image](https://user-images.githubusercontent.com/47416964/99886070-ed3eb580-2c39-11eb-986e-ac73f698e54a.png) ![image](https://user-images.githubusercontent.com/47416964/99886078-fb8cd180-2c39-11eb-9948-10249df9a092.png)


![image](https://user-images.githubusercontent.com/47416964/99885930-e794a000-2c38-11eb-9074-b21bc479bc88.png)  
*This robot



## Swagger UI

Kofax RPA 11.1 introduces a user-friendly REST interface tool to help build and test REST service calls. It is available at [http://localhost:50080/api/swagger-ui.html](http://localhost:50080/api/swagger-ui.html)    
![image](https://user-images.githubusercontent.com/47416964/98936352-26ae4d00-24e5-11eb-8e07-910e620dc274.png)
