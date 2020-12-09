# Kapplets in "Embedded" mode with Development Database in Kofax RPA 11.1
Kapplets can be run in Kofax RPA 11.1 in "embedded" mode. This uses the Development Database that is preinstalled in Kofax RPA.  
The [Development Database](http://localhost:8080/kapplets) is useful for learning Kofax RPA and experimenting with your **Non Production** license, but it is not a database intended for production. Do not use "embedded" mode in production.
You will see this warning every time you start Management Console in "embedded" mode.
>> WARNING: running the MC embedded is deprecated and *not* intended for production usage, refer to the Administrators Guide for information about how to install in a Tomcat instance or run the MC in a Docker container.
For production you need to install Kofax RPA and Kapplets inside Apache Tomcat and use an enterprise class SQL Database.
# Installing Kapplets in "Embedded" mode.
## Creating the Kapplets Database Tables
1. **Start Development Database** from Windows Start Menu/Kofax RPA.  
![image](https://user-images.githubusercontent.com/47416964/101611356-b1616980-3a09-11eb-92bb-332131c4eede.png)

1. **Start Management Console** from Windows Start Menu/Kofax RPA.
1. Wait until you see the message *Roboserver successfully activated*.
1. Start **Design Studio** from Windows Start Menu/Kofax RPA.
1. Open any robot *type* from any robot project.
1. You can skip this step if **objectdb.db** is already in the project.  
![image](https://user-images.githubusercontent.com/47416964/101611603-000f0380-3a0a-11eb-9ce2-8c96e385529b.png)  
   * Create a new **Database Mapping**.  
![image](https://user-images.githubusercontent.com/47416964/101610743-f20cb300-3a08-11eb-80b5-05710ea9168d.png)  
   * Select **Development Database**.  
![image](https://user-images.githubusercontent.com/47416964/101610959-3304c780-3a09-11eb-9445-523113c219ec.png)
   * Leave it with the name **objectdb**.  
![image](https://user-images.githubusercontent.com/47416964/101611111-62b3cf80-3a09-11eb-87e6-562ad23bf92b.png)
1. Open **Tools/CreateDatabaseTable** from the Menu.  
![image](https://user-images.githubusercontent.com/47416964/101610355-6eeb5d00-3a08-11eb-824c-b76f39f29152.png)
1. Select **objectdb (Development Database)**. Select any type - it doesn't matter and click **Generate SQL**.  
![image](https://user-images.githubusercontent.com/47416964/101612429-eb7f3b00-3a0a-11eb-9822-23274735f2e8.png)
1. Delete the SQL statement that is there. *We will use this SQL window to create all the Kapplet Tables in the Development Database*.  
![image](https://user-images.githubusercontent.com/47416964/101612548-0fdb1780-3a0b-11eb-9501-3e5e322a96ca.png)
1. Open the folder "C:\Program Files\Kofax RPA 11.1.0.0 287 x64\documentation\sql\kapplets\derby" to find the sql scripts needed to create the Kapplets database.  
![image](https://user-images.githubusercontent.com/47416964/101610264-4b281700-3a08-11eb-8fed-032815e6614b.png)
1. Right-click on **create-kapplets.sql** and Open with Notepad.  
![image](https://user-images.githubusercontent.com/47416964/101623690-1d979980-3a19-11eb-96bf-6e088d37490a.png)
1. Copy the text and paste into **Generated SQL Statement** in Design Studio  
![image](https://user-images.githubusercontent.com/47416964/101623832-47e95700-3a19-11eb-9046-b9cfcb2cd598.png)
1. Copy and Paste  **create-quartz.sql** and **create-session.sql** as well into the **Generated SQL Statement** window.
1. Click the **Execute** button. The Window will close if there were no errors.  
![image](https://user-images.githubusercontent.com/47416964/101623938-7bc47c80-3a19-11eb-88b5-e5436fac0448.png)  
*The Development Database is now ready to run Kapplets*
## Configuring the Kapplets files
1. Create the Folder **Kapplets** in your Kofax RPA installation folder.  
![image](https://user-images.githubusercontent.com/47416964/101624156-d3fb7e80-3a19-11eb-8d55-0067e0d59921.png)
1. Create the file **application.config** in in the Kapplets Folder and give it the following content.  
```
#Stand-alone Kapplets using Development Database
# 1. Start Development Database
# 2. Start kapplets.bat as administrator
#Kapplets address is http://localhost:8080/kapplets

spring.datasource.url=jdbc:derby://localhost:1527/objectdb;create=false
spring.datasource.username=kapow
spring.datasource.password=kapow
spring.datasource.driverClassName=org.apache.derby.jdbc.ClientDriver

#e.g. http://<mc-host>:8080/ManagementConsole
kapplets.services.mc.connection.url=http://localhost:50080/
kapplets.services.mc.connection.username=admin
kapplets.services.mc.connection.password=admin
# kapplets.services.mc.connection.proxy.host=<proxy-host>
# kapplets.services.mc.connection.proxy.port=8888
# kapplets.services.mc.connection.proxy.username=<proxy-user>
# kapplets.services.mc.connection.proxy.password=
# kapplets.services.mc.connection.proxy.enabled=false

#cluster name to execute kapplets on
kapplets.services.execution.cluster-name=Non Production
# maximum robot execution time, in minutes
kapplets.services.execution.max-robot-execution-time=180
kapplets.services.execution.watcher.timeout=190
# days to keep the old executions for
kapplets.services.execution.purge.timeout=365
# Set to enable debug logs.
#debug=true
logging.file=logs/kapplets.log
management.endpoint.logfile.external-file=logs/server.log
```
1. Create the file **kapplets.bat** in the Kapplets Folder and give it the following content.  
```
"%~dp0%..\jre\bin\java.exe" -jar kapplets.war 
```
1. Create the Folder **lib** in your Kapplets folder.  
![image](https://user-images.githubusercontent.com/47416964/101624461-3ce2f680-3a1a-11eb-897e-85a3de243d53.png)
1. copy the file **C:\Program Files\Kofax RPA 11.1.0.0 287 x64\lib\thirdparty\derbyclient-10.14.2.0.jar** into the folder
**C:\Program Files\Kofax RPA 11.1.0.0 287 x64\kapplets\lib\derbyclient-10.14.2.0.jar**
*You have now fully configured Kapplets with the Development Database*
## Starting Kapplets
1. Double-click the file **kapplets.bat**. *You will need to run this as a Administrator if you want the log file in **logs\kapplets.log** to be created.*
1. Wait until you see the message **QuartzScheduler_$_NON_CLUSTERED started.**
1. Open Kapplets at [http://localhost:8080/kapplets] (case sensitive!)
1. Login with admin/admin.  
![image](https://user-images.githubusercontent.com/47416964/101625373-9861b400-3a1b-11eb-84b2-9a8fe9bf8ab0.png)

## Further Steps
1. Create Kapplet Admins in Management Console and login with them. Don't use the admin/admin user to manage Kapplets. Change the username and password in **application.config**
>> kapplets.services.mc.connection.username=admin
>> kapplets.services.mc.connection.password=admin
1. Install Kapplets into Apache Tomcat
  1. You will need to change the password in **application.config**.
2. install Kapplets in Tomcat for Production. See Installation Guide for details.
