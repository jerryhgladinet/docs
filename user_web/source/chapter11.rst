########################
Tenant Administrator
########################

Please reference the `Admin Guide`__ for full documentation of the tenant administration. Here we will go over several commonly touched areas for tenant administrators.

.. _Admin_Guide: https://centrestack.com/Library/AdminGuide/ 
__ Admin_Guide_

After you enter the "management console", you will be in the tenant manager. You can access the tenant by clicking on the desired tenant from the options.

.. figure:: _static/image_s7_1_1-03192025.png
    :align: center

Under Management Console, an admin can configure storage, monitor shared objects, create and manage team folders, manage users, configure granular group policies, add new tenant administrators, look at different reports, and under advanced configure AD etc.

After you click a tenant, you will be in the tenant dashboard. You can click through to different managers. You can manage users **(1)** and folders **(2)**. If you are using an Active Directory for importing users and permissions you can connect to your Active Directory by clicking the "Configure Now" **(3)**.

.. figure:: _static/image_s7_1_2-03192025.png
    :align: center

    MANAGE USERS AND FILES



User Manager
===============

You can access the user manager by clicking one of these items in the Tenant Dashboard. 

.. figure:: _static/image_s8_2_2-03192025.png
    :align: center

    ACCESSING THE USER MANAGER


Active Directory - LDAP
--------------------------

When you "Create or Migrate User" **(1)** in user manager, there are some options for adding new users. Click "Active Directory" **(2)**, you can add your local AD settings. Select "Enable Active Directory Integration" **(3)**. 

.. figure:: _static/image_s7_2_1-03192025.png
    :align: center

    CONNECTING TO ACTIVE DIRECTORY (AD)

This gives you access to all the settings fields and the Advanced Settings Tab **(4)**. Once you have filled in the settings with an Administrator User account from your Active Directory, click **APPLY** to accept your changes. 


Add Users
--------------

You can add users from within the User Manager by clicking the "Create or Migrate User" button to open the **"Options for Adding New Users"** panel. In that panel you have several options: add a Native User, Batch Create Users, import Active Directory users and permissions, and if you have Server Agents actively connected, you will also see those servers listed here as well.

.. figure:: _static/image_s8_2_3-03192025.png
    :align: center
    
    ADDING USERS

**Native User** 

    Native user refers to |prodname| user that is not related
    to any Active Directory.
    
**Batch create users**

    These are native users in a comma separated file that can 
    be paste into a text area so the users can be batch created.
    
**Active Directory**

    Active Directory means users from Local Area Network (LAN) 
    that is in the same network as the |prodname| server.
    
**Server-Agent-Name**

    If you already have the "Server Agent" installed and the 
    server agent is actively connected to |prodname|, you will
    also see the server agents listed by name in the Add User page.


Native Users
""""""""""""""""""""""""

When a new user is created, the administrator will specify the amount of cloud storage that the new user is allowed to use. The email address will send a welcome email to the new user and will serve as his/her username.

.. figure:: _static/image_s8_2_4-03192025.png
    :align: center

    ADDING A NATIVE USER
    
.. note::

    When quota is left as zero, it means no limitation until the tenant quota limit is hit.

Active Directory Users from LDAP
"""""""""""""""""""""""""""""""""""""""""

If the Active Directory (LDAP) is not already configured, you will need to configure it first. You can from "Settings" > "Active Directory", or "Create or Migrate User" > "Active Directory" to access the settings. 

.. figure:: _static/image_s8_3_1-03192025.png
    :align: center

    CONFIGURE YOUR ACTIVE DIRECTORY SETTINGS

If the Active Directory (LDAP) is already configured, you will see the Active Directory name at the bottom of the AD icon in the "Add User" view.

Add Active Directory Users where those users are from local area network.

.. figure:: _static/image_s8_2_5.png
    :align: center

    ADDING ACTIVE DIRECTORY USERS


After the Active Directory is configured, you can use the Add User
wizard to import Active Directory users into |prodname|.

.. note::

    For best practice, you will only configure Active Directory via LDAP if the file server is also local
    in the same network as the Active Directory server.


Active Directory Users from Server Agent
""""""""""""""""""""""""""""""""""""""""""""""""

When the Server Agent is available and connects to the specific
tenant in |prodname|, the Server Agent will show up
with the server's name at the bottom of the icon.

Click through the Server Agent icon, you will see the "Add User" wizard and complete the wizard to add users. This is very similar to the add AD user from local LDAP process above. 

.. note::

     When the Active Directory is at a remote location, not directly connected to |prodname| server, Server Agent can be used to facilitate the communication. Server Agent doesn't need to be installed directly on a remote Active Directory server, the Server Agent needs to be installed on a remote file server that is part of the remote Active Directory domain.


Deleting Users
-------------------

When a user leaves the team, administrators can delete the user’s login. Just click the Delete icon in ‘User Manager’ window.

.. figure:: _static/image_s12_1_4-03192025.png
    :align: center

    DELETING A USER


Managing User Quotas
------------------------

Administrators can assign a quota to each user. A user will not be allowed to upload files to |prodname| once their quota has been reached.

If the quota is 0 for the user, there is no limit on how much storage the user can use.

Click the ‘Management Console’ and select ‘Users’. Click the "Edit" icon on an user to manage. On "Storage" tab, select "Edit" icon for storage quota.

.. figure:: _static/image_s12_1_5-03192025.png
    :align: center

    EDITING STORAGE QUOTA


Managing User Credentials
-----------------------------

Admins can change user passwords and login emails, if needed.

* Click ‘Management Console’ and select ‘User Manager’
* Click the "manage user" menu icon in the user block
* After that, can use "Reset Password" link to help the user.

.. figure:: _static/image_s12_1_6-03192025.png
    :align: center

    RESET USER PASSWORD


After changing the login password, an email will be sent to notify the user of the change. Admins can choose to include the new password in the email, or exclude the new password from the email. If the password is not included, the admin will need to convey the new password to the user in some other way.

.. figure:: _static/image_s12_1_7-03192025.png
    :align: center

    PASSWORD OPTIONS


When either the email or password is changed, please update the corresponding login credentials in the |prodname| Cloud Desktop or Cloud Server.

.. warning::

    This only applies to a native |prodname| user. If you have Active Directory users, you will need to manage user's credential the Active Directory way.


Team Folders
================

Adding files and folders can be accomplished by clicking "Add a new team folder" (**+**) icon on "Team Folders" page. Once the **"Team Folder Storage Locations"** view opens you can choose from many options: Existing Tenant Storage, File Servers in Local Area Network, Remote File Servers or Cloud Storage. 

.. figure:: _static/image_s7_5_1-03192025.png
    :align: center

    WAYS TO ADD STORAGE LOCATIONS


**File Servers**

If you have an existing file server in the Local Area Network (LAN), you can import the network share directly to |prodname| **(1)**. Under Remote File Servers, you can install the Server Agent client **(2)** and access your file server remotely.

.. figure:: _static/image_s7_5_2.png
    :align: center

    ADDING REMOTE FILES
    
    .. note::
    
       The Server Agent is only required when the remote file server doesn't have direct LAN (local area network) access
        to |prodname|. The Server Agent will be used in this case to facilitate communication between
        the |prodname| server to the remote file server.

|prodname| enables the creation of team folders which are owned by the administrator and published to other |prodname| users.

Once a folder is published, it is displayed as a team folder to the users who have access permissions. Users can access these folders from |prodname| Web or other client agents. The published folder will appear under the user's root folder, and its name will be appended with
"(Team Folder)".

.. figure:: _static/image_s14_1_4.png
    :align: center

    TEAM FOLDER TAG

.. warning::

    Different upload methods may have different advantage and disadvantage on different web browsers and different web browser configuration, such as whether it is HTML5 enabled,
    Java enabled or Flash enabled.
    
    By default, only one upload method was exposed in the web user interface. However, the tenant administrator, based on the kind of web browser the company is using and the kind of
    configuration the web browser has, can decide which upload method to expose to the end user (Team User).
    
    Below is the Settings -> Clients & Applications -> Web Portal setting administrator can control.
    
    .. figure:: _static/image_s11_2_1-03192025.png
        :align: center

        UPLOADER METHOD OPTIONS
    
    Web Browser - Disable Java Uploader
    
        Deselect this if your companies' desktop system web browsers use a Java Uploader.
    
    Web Browser - Disable Flash Uploader
    
        Deselect this if your company uses browsers that require Flash uploader functionality.  
    
    Web Browser - Disable Local Uploader
    
        Deselect this if your company allows the use of a local executable to upload files. 


Sharing Security
==================

Preventing Users From Sharing
------------------------------

Sometimes for security reasons, users should not be allowed to share files/folders.

There are two types of files and folders a user can access.

*	User's own folders, including versioned folders and attached local folders from the user's desktop.

When an administrator creates new users, he/she can disable sharing home directory content with external party, to prevent the newly
created user from sharing his/her own files and folders.

.. figure:: _static/image_s15_1_10-03192025.png
    :align: center

    MANAGE USER SETTINGS

In the Manage User panel, access the "Storage" settings (4). Once you are in the Storage View you can select (5) the "Disable external sharing of this user's home directory content" option. 

.. figure:: _static/image_s15_1_11-03192025.png
    :align: center

    DISABLE EXTERNAL SHARING


When publishing a team folder, administrator can check 'Disable further sharing', to prevent users from sharing anything in the team folder. You can access this setting after choosing your storage location. Click the "Create Team Folder" **(+)** icon (1) and select your storage type (2), "New Team Folder" window opens, click "Settings" icon (3), then select the "Disable further sharing" option (4). 

.. figure:: _static/image_s15_1_12-03192025.png
    :align: center

    DISABLE FURTHER SHARING


Protecting Shares By Requiring Login
-------------------------------------

When a user shares a file or folder, |prodname| will generate a URL. By default, anyone can use the URL to access the share.

Administrators can protect shares by requiring login credentials. Once enabled, when a user accesses the share URL, he /she will be prompted to
login to the |prodname| Cloud. After login, the user can view the file/folder shared with him/her under 'Files shared with me'.

To access this setting use the "Settings" menu (1) and in the "Data Leak Protection" (2) -> "Sharing" (3) panel, select the "Users must log in to access the content in 'Files shared with me' folder" setting (4). 

.. figure:: _static/image_s15_1_13-03192025.png
    :align: center

    SECURING SHARED FILES AND FOLDERS

