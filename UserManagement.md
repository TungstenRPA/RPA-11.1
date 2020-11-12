# User Management in Kofax RPA 11.1
User Management has been permanently turned on in Kofax RPA 11.1
The default user with all permissions is **admin** with password **admin**.  You can use this user to access the Management Console.  
![image](https://user-images.githubusercontent.com/47416964/98921125-3754c800-24d1-11eb-9c83-56894a77016c.png)  
You can also use this user to log into Design Studio, but you *should* create other users for that.

# Creating Users
* in **ManagementConsole/Admin/Users&Groups** create a group called **developers**.
* Create an account for each Design Studio user and add it to the group **developers**.
* Open the **Default Project** in **ManagementConsole/Admin/Projects** by clicking **⋮** before the project name.  
![image](https://user-images.githubusercontent.com/47416964/98922154-6ae42200-24d2-11eb-816c-b8dc9b6eb041.png)
* Add the group **developers** to the Default Project with role **Developer** on the tab **Permissions**.
![image](https://user-images.githubusercontent.com/47416964/98922416-b696cb80-24d2-11eb-9026-e5ccf635f6be.png)

You can add LDAP for user management, and you should also create users and groups for the Roboservers, Synchronizers, MC Admins, Kapplet Admins, API access, Password Managers, Desktop Accounts, etc. See the documentation for further details.
See [Robot Lifecycle Management Guide](https://github.com/KofaxRPA/Robot-Lifecycle-Management-Guide/releases) for step-by-step instructions of creating many of these accounts.

# How to log-out of Design Studio
* Go to **Menu/Settings/DesignStudioSettings/ManagementConsole** and remove the user name and password or disable *Remember Password*.  
![image](https://user-images.githubusercontent.com/47416964/98921637-d2e63880-24d1-11eb-821b-85c91abb036e.png)
* Close Design Studio
