# Enhanced Email Integration in Kofax RPA 11.1
Kofax RPA can read emails from a folder in GMail, Office365 or IMAP provider. Each email is processed individually by a robot. The robot has access to all headers including timestamps, sender, recipient and CC, subject, Text Body, HTML Body and **all** attachments, both images and files. On success the email is moved to a subfolder **Finshed**, otherwise to **Error**.

## Configure Email Accounts in Management Console
* Configure IMAP access to GMail, Office365 or IMAP as your email provider in *ManagementConsole/Settings/EmailAccounts*.  
> *If you are using GMail you will need to create a [GMail App Password](https://support.google.com/accounts/answer/185833?hl=en)* to prevent security warnings from Google.
## Build a simple robot to get some emails in EML format. (solving the chicken and the egg problem)
* You will need to get some email in EML format so that you can build your robot.
* Start Development Database. This will be used to hold the emails you need for building the robot. You can easily delete them later in* ManagementConsole/DataView*.
* XXX link to sample robot
* Drag a few sample emails, some with attachments and some without into the watched folder in your email program. Wait XXX seconds.
* Leave the trigger running so that it responds to any new emails you put in the watch folder
## Configure your *Email Triggers* In *ManagementConsole/Repository/EmailTriggers*.  
![EmailTriggers](https://user-images.githubusercontent.com/47416964/98917769-10949280-24cd-11eb-9e4d-e007bb35ded2.png)
  * Kofax RPA will create subfolders **Processing**, **Finished** and **Error** in the email folder you chose.  *These names are currently not localizable*.  
![image](https://user-images.githubusercontent.com/47416964/98919114-bf859e00-24ce-11eb-919e-8efbe5f60a8a.png)

  * Every XXXXX seconds Kofax RPA will check the email folder and move every email into the **processing** folder.
  * A robot will be queued with the entire email (headers, subject, text body, html body) given to the robot as text [eml](https://en.wikipedia.org/wiki/Email#Filename_extensions) which is in [MIME](https://en.wikipedia.org/wiki/MIME) format.
    * Your robot MUST have one input variable with one input parameter with the type **Long Text**. The variable name, the type name and the parameter name can be anything. *You can also have a robot with no input, perhaps to tell a person to look in the "Finished" folder for any emails.*
    * If the robot succeeds then the email will be moved to **processed**, otherwise it will be moved to **error**      
## Build your email robot
* In Design Studio run the first step to see your email in eml format.  
![image](https://user-images.githubusercontent.com/47416964/98920537-81897980-24d0-11eb-8bde-08c618ca9ed3.png)
