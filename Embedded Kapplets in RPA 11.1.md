# Kapplets in "Embedded" mode in Kofax RPA 11.1
Kapplets can be run in Kofax RPA 11.1 in "Stand alone" mode. This uses the Development Database that is preinstalled in Kofax RPA.  
The [Development Database](http://localhost:8080/kapplets) is useful for learning Kofax RPA and experimenting with your **Non Production** license, but it is not an database intended for production. Do not use "stand alone" mode in production.
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
1. Open the folder "C:\Program Files\Kofax RPA 11.1.0.0 287 x64\documentation\sql\kapplets\derby" to find the sql scripts needed to create the Kapplets database.  
![image](https://user-images.githubusercontent.com/47416964/101610264-4b281700-3a08-11eb-8fed-032815e6614b.png)
1. 
## Configuring the Kapplets files
## Starting Kapplets
## Further Steps
1. Create Kapplet Admins in Management Console and login with them. Don't use the admin/admin user to manage Kapplets.
  1. You will need to change the password in **application.config**.
2. install Kapplets in Tomcat for Production. See Installation Guide for details.
