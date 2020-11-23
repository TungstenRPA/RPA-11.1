# Robot Queueing in Kofax RPA

Kofax RPA 11.1 introduces Robot Queueing. You can now push a robot onto the robot queue with any input paramaters from other Robots or from any other program that supports [REST Service Calls](https://en.wikipedia.org/wiki/Representational_state_transfer)

Robot Queueing has two steps
* Call **mc/tasks/robotInputExample** to see what inputs the robot requires. The sample robot does this within the robot itself. You can also do this manually in swagger

* Download **QueueRobot.robot**, **Queue.type** and **Test Robot** from [here](https://github.com/KofaxRPA/RPA-11.1/tree/main/QueueRobot)


* **Test.robot** has 3 inputs (text, number and image) and simply writes the values to the log  
![image](https://user-images.githubusercontent.com/47416964/99886070-ed3eb580-2c39-11eb-986e-ac73f698e54a.png) ![image](https://user-images.githubusercontent.com/47416964/99886078-fb8cd180-2c39-11eb-9948-10249df9a092.png)


![image](https://user-images.githubusercontent.com/47416964/99885930-e794a000-2c38-11eb-9074-b21bc479bc88.png)  
*This robot



## Swagger UI

Kofax RPA 11.1 introduces a user-friendly REST interface tool to help build and test REST service calls. It is available at [http://localhost:50080/api/swagger-ui.html](http://localhost:50080/api/swagger-ui.html)    
![image](https://user-images.githubusercontent.com/47416964/98936352-26ae4d00-24e5-11eb-8e07-910e620dc274.png)
