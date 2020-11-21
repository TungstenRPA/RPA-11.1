# Changing the Admin Password and User Management in Kofax RPA 11.1
User Management has been permanently turned on in Kofax RPA 11.1
The default user with all permissions is **admin** with password **admin**.  You can use this user to access the Management Console and create other users and groups. 
![image](https://user-images.githubusercontent.com/47416964/98921125-3754c800-24d1-11eb-9c83-56894a77016c.png)  
You can also use this user to log into Design Studio, but you *should* create other users for that.

# Creating Users
* in **ManagementConsole/Admin/Users&Groups** create a group called **developers**.
* Create an account and password for each Design Studio user and add them to the group **developers**.
* Create a user called **Roboserver**, give it a password, a group **roboservers** and add the user to the group.
* Open the **Default Project** in **ManagementConsole/Admin/Projects** by clicking **⋮** before the project name.  
![image](https://user-images.githubusercontent.com/47416964/98922154-6ae42200-24d2-11eb-816c-b8dc9b6eb041.png)
* Add the group **developers** to the Default Project with role **Developer** on the tab **Permissions**.
* Add the group **roboservers** to the Default Project with role **Roboserver** on the tab **Permissions**.
![image](https://user-images.githubusercontent.com/47416964/99874702-467ef880-2bea-11eb-8b60-d85dab5fc994.png)
* You will need to add these roles to other projects as you create them.

You can add LDAP for user management, and you should also create users and groups for the Roboservers, Synchronizers, MC Admins, Kapplet Admins, API access, Password Managers, Desktop Accounts, etc. See the documentation for further details.  
See [Robot Lifecycle Management Guide](https://github.com/KofaxRPA/Robot-Lifecycle-Management-Guide/releases) for step-by-step instructions of creating many of these accounts.

# Changing the Admin Password.
There are three places you need to change passwords - inside Management Console, inside the Roboserver Settings and inside the Start Menu command to open the ManagementConsole  
* in MC you can change the admin password under **Admin/Users&Groups**
* Select the User name **admin**  and click  **Reset Password**  
![image](https://user-images.githubusercontent.com/47416964/99874566-429ea680-2be9-11eb-9692-25166f9135a7.png)
* Open **Roboserver Settings** from the Windows Start Menu  
![image](https://user-images.githubusercontent.com/47416964/99874643-f2741400-2be9-11eb-961b-c19dfb4e9f2e.png)
* On the **General** Tab fill in the information as below, so that the Roboserver can connect to the Management Console.  *The Exernal Host Name and Port are the location that the Management Console can find the Roboserver at. They may be on different networks or clouds, or need to find each other via port tunneling or VPN*  
![image](https://user-images.githubusercontent.com/47416964/99874738-7f1ed200-2bea-11eb-843e-b5d3107ee1b5.png)

* Open the Window sshortcut to start Management Console and remove **admin:admin@** from the URL.

# How to log-out of Design Studio
* Go to **Menu/Settings/DesignStudioSettings/ManagementConsole** and remove the user name and password or disable *Remember Password*.  
![image](https://user-images.githubusercontent.com/47416964/98921637-d2e63880-24d1-11eb-821b-85c91abb036e.png)
* Close Design Studio
