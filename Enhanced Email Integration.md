# Enhanced Email Integration in Kofax RPA 11.1
Kofax RPA can read emails from a folder in GMail, Office365 or IMAP provider. Each email is processed individually by a robot. The robot has access to all headers including timestamps, sender, recipient and CC, subject, Text Body, HTML Body and **all** attachments, both images and files. After your robot has successfully processed the email, the email is moved to the subfolder **Finished**, otherwise to the **Error** folder on your Email Server.

## Configure Email Accounts in Management Console
* Configure IMAP access to GMail, Office365 or IMAP as your email provider in **ManagementConsole/Settings/EmailAccounts**.  
> *If you are using GMail you will need to create a [GMail App Password](https://support.google.com/accounts/answer/185833?hl=en)* to prevent security warnings from Google.
* Press *Test* to ensure that it connects successfully. If it fails, check your password or firewall.
## Build a simple robot to get some emails in EML format.
* You will need to get some emails in EML format so that you can build your robot. This is solving the "chicken & egg" problem in that you need a robot to get an email but you need an email to build the robot.

*Quick Tip : Download an email from your email client in **eml** format. For Office/Exchange, go to the [webclient](https://outlook.office365.com/mail/), create a new email and drag your robot email into the new mail. you can download the attached email in eml format*  
![image](https://user-images.githubusercontent.com/47416964/104707991-6e3b9a00-571d-11eb-8704-c65cb4e35d92.png)
* Run **Start Development Database** from the **Windows Menu/Kofax RPA 11.1** . This will be used to hold the emails you need for building the robot. You can easily delete them later in **ManagementConsole/DataView**.
* Open Design Studio and create a New Web Robot called [**Email_SaveToDatabase.robot**](https://github.com/KofaxRPA/RPA-11.1/tree/main/Email)
* Create a New Type called **EML.type** with one **Long Text** attribute called **Content**.
> *Your robot MUST have one input variable with a single input parameter, and that single parameter MUST have the type **Long Text**. The variable name, the type name and the parameter name can be anything. You can also have a robot with no input, perhaps to tell a person to look in the "Finished" folder for any emails.*
* Add a variable of type **EML** to the robot. You must select **Global** and **Use as Input**. *(You need to select **Global**, so that RPA doesn't copy the entire email for every step of the robot - if your email has attachments this could use a vast amount of memory, and because the email content is unchanging there is no need for it to be a non-global variable. It needs to be an **input** because the Email Trigger will pass in the email as input to the robot)*  
![image](https://user-images.githubusercontent.com/47416964/98934364-409a6080-24e2-11eb-9599-26f3b945079d.png)
* Add a **Store in Database** Step.  
![image](https://user-images.githubusercontent.com/47416964/99876058-9e226180-2bf4-11eb-9122-7cca0d598065.png)
* Download the robot and type from [here](https://github.com/KofaxRPA/RPA-11.1/tree/main/Email)
* Upload the robot to the Management Console.
## Configure *Email Triggers*
* open **ManagementConsole/Repository/EmailTriggers**.  
![EmailTriggers](https://user-images.githubusercontent.com/47416964/98917769-10949280-24cd-11eb-9e4d-e007bb35ded2.png)
* Select an Email account, robot and Email Folder for the trigger.
> NOTE!! Some Email servers, like Domino do not support Subfolders in the **Inbox**. Try to manually create a subfolder in your mail application to check if your chosen watch folder is compatible with Kofax RPA. If your Inbox is not, then create another folder for the emails and make an email rule to move all inbox emails to the other folder.
* When Kofax RPA runs the Trigger for the first time it will create subfolders **Processing**, **Finished** and **Error** in the email folder you chose.  *These names are currently not localizable*.  
![image](https://user-images.githubusercontent.com/47416964/98919114-bf859e00-24ce-11eb-919e-8efbe5f60a8a.png)
* Drag a few sample emails, some with attachments and some without into the watched folder in your email program. Wait up to 2 minutes.
* Leave the trigger running so that it responds to any new emails you put in the watch folder.
* Every 2 minutes Kofax RPA will check the email folder and move every email into the **processing** folder.  
*If you have installed Kofax RPA on Tomcat you can change this polling interval in **mc-service.xml**.* 
```xml
<bean id="robotEmailApplication" class="com.kapowtech.plugging.robotrigger.email.RobotEmailApplication">
      <constructor-arg ref="robotEmailApplicationConfig"/>
      <constructor-arg name="runInterval" value="2"/>
</bean>
```
* A robot will be queued in Management Console with the entire email (headers, subject, text body, html body) given to the robot as text [eml](https://en.wikipedia.org/wiki/Email#Filename_extensions) which is in [MIME](https://en.wikipedia.org/wiki/MIME) format. You can see the Robot Queue in **ManagementConsole/TaskView**.

* If the robot succeeds then the email will be moved to **Finished**, otherwise it will be moved to the **Error** folder.
## Get your "saved" emails ##
You know have a few sample emails in the database.
* Download robot **Email_LoadfromDatabase** from [here](https://github.com/KofaxRPA/RPA-11.1/tree/main/Email). This robot loops through all of the emails you sent to RPA.  
![image](https://user-images.githubusercontent.com/47416964/99875974-f9a01f80-2bf3-11eb-8a4e-404af8a0fbf1.png)  
This robot only shows the content of the emails and you can use it to build your solution. When your robot is ready for production you will need to delete the first two database steps.

# Handling Character Encoding Problems in Subject and Sender

If the subject, sender or recipient fields contain non-ASCII characters they will be encoded in either [Quoted-Printable](https://en.wikipedia.org/wiki/Quoted-printable) or [Base64](https://en.wikipedia.org/wiki/Base64) encoding.  
For example you might see this  
> Subject: =?utf-8?**Q**?Sch=C3=B6nen Tag?=  

or  
> Subject: =?utf-8?**B**?U2Now7ZuZW4gVGFn?=  

instead of this  
> Subject: Schönen Tag  

The robot [SubjectDecode.robot](Email) correctly decodes UTF-8 **Q**uotable and UTF-8 **B**ase64 versions, and generates an error for other encodings.(You can extend the robot to support other encodings that you encounter in your emails, by adding further try branches to your robots)  
![image](https://user-images.githubusercontent.com/47416964/100441567-f949cd80-30a6-11eb-98ff-e4e0092dbb65.png)


# Handling TimeZone conversions in Email Timestamps

Kofax RPA doesn't handle the standard email date format out-of-the box. You will need to convert it with a number of Converters  
![image](https://user-images.githubusercontent.com/47416964/99877749-9f598b80-2c00-11eb-93c1-8d166ad59590.png)

 > Mon, 12 Oct 2020 11:12:48 +0200        **Standard Email Date Format  dd MMM yyyy hh:mm:ss ±ZZZZ**  
* **Replace Pattern** Converter **(.\*?)\+(\d\d)(\d\d).** with **$1+" GMT+"+$2+":"+$3**
 > Mon, 12 Oct 2020 11:12:48  GMT+02:00   **Timezone format**  
* **Replace Text** Converter **GMT+02:00** with **CET**   *(Note: This will fail if the email is from other time zones)*
 > Mon, 12 Oct 2020 11:12:48  CET         **Format that RPA Date Extractor understands for timezone conversion** 
* **Date Converter** with pattern **dd MM yyyy HH:mm:ss Z** configured for timezone conversion.  
 ![image](https://user-images.githubusercontent.com/47416964/99877542-476e5500-2bff-11eb-96a0-f8aed0374679.png)

 > 2020-10-12 09:12:48.0                  **Unambigous, language-independent and time-zone independent Date Format YYYY-MM-DD hh:mm:ss.s used by Kofax RPA internally**  (Note that 2 hours have been subtracted for the time zone)
  
![image](https://user-images.githubusercontent.com/47416964/99877542-476e5500-2bff-11eb-96a0-f8aed0374679.png)

