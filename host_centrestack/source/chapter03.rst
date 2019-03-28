#######################
Manage Tenant
#######################

By default, the |prodname| partner account holder has the "Single-pane-of-glass" view of all his tenants in the partner portal and can click through to manage the tenants.

.. figure:: _static/image_s3_1_1.png
    :align: center

    MANAGE TENANT OPTION

After you click through to the "Manage Tenant" option, the tenant dashboard will show.

Tenant Dashboard
====================

The dashboard contains the two most important assets, the ``users`` and the ``Team Folders``.

.. note::

    Basically from a management perspective, you are helping the tenant manage their users and their common work areas - the Team Folders.

.. figure:: _static/image_s3_1_2.png
    :align: center

    TENANT DASHBOARD

There is also a Quick Access panel on the dashboard that you can see the second level of details on the tenant management scope.

.. figure:: _static/image_s3_1_3.png
    :align: center

    QUICK ACCESS PANEL

Reports
============

In ``REPORTS``, you can see reports related to the tenant.

.. figure:: _static/image_s3_1_4.png
    :align: center

    REPORTS

Once you click the **"Reports"** button you will see the **"Upload Report"** by default. You can use the top menu to choose other report options. 

.. figure:: _static/image_s3_1_5.png
    :align: center

    REPORTS MENU

Upload Report 

    the number of files uploaded into hosted |prodname| in the last 30 days or last week.
    
Storage Statistics

     The files and folder number and size and other statistics of files and folders.
    
Team Folders

    All the Team Folders in the tenant.
    
Shared Objects

    All the peer-to-peer share objects in the tenant.
    
Audit Trace

    The management scope events in the tenant.
    
File Change Logging

    The file change events in the tenant.
    

Tenant Branding
===================

After you setup default branding and apply to the tenants, you can continue to fine tune the branding on a per-tenant basis.

.. figure:: _static/image_s3_1_6.png
    :align: center

    TENANT BRANDING

In the ``TENANT BRANDING`` section, you can setup and  change tenant specific branding information.


.. figure:: _static/image_s3_1_7.png
    :align: center

    BRANDING OPTIONS

Customized URL for your business

    Upon creating of the tenant, the tenant is assigned a random string of digits for the custom site. You can change the URL so it is more related to customer's business name.


.. figure:: _static/image_s3_1_8.png
    :align: center

    GENERAL OPTIONS

.. note::

    The ``Customized URL`` field is very important for the tenant branding. It is like a key to a list of information belong to the tenant. For tenant branding to work, the tenant will need to login to the specific URL that is assigned to them.
    
Group Policy
================

.. figure:: _static/image_s3_1_9.png
    :align: center

    GROUP POLICY

``GROUP POLICY`` is documented in the |prodname| Admin Guide. Look for the group policy section in the |prodname| Admin Guide. Please see the `Documentation Page`__ for more information. 

.. _Documentation_Page: https://www.centrestack.com/Documentation/ 
__ Documentation_Page_

.. figure:: _static/image_s3_1_10.png
    :align: center

    DOCUMENTATION WEB PAGE

Control Panel
===============

.. figure:: _static/image_s3_1_11.png
    :align: center

    CONTROL PANEL

In the ``CONTROL PANEL`` section, you will see the following sections.

.. figure:: _static/image_s3_1_12.png
    :align: center

    CONTROL PANEL SETTINGS

Tenant Administrators
------------------------

.. figure:: _static/image_s3_1_13.png
    :align: center

    TENANT ADMINISTRATORS

You can change the tenant's administrator information here and also define delegate administrators.

.. figure:: _static/image_s3_1_14.png
    :align: center

    TENANT ADMINISTRATOR SETTINGS

Single Sign-On
-----------------

.. figure:: _static/image_s3_1_15.png
    :align: center

    SINGLE SIGN ON

It is recommended to setup tenant specific ``custom URL`` before setup Single Sign-On since this is a tenant-specific Single Sign-On setting.


.. figure:: _static/image_s3_1_16.png
    :align: center

    SINGLE SIGN-ON SETTINGS

Check the |prodname| Admin Guide for more details.

Azure AD
-----------

.. figure:: _static/image_s3_1_17.png
    :align: center

    AZURE AD

In Azure AD, you can setup the tenant to login using credentials from Azure AD.


.. figure:: _static/image_s3_1_18.png
    :align: center

    AZURE AD SETTINGS

Check the |prodname| Admin Guide for more details.

Notifications
----------------

.. figure:: _static/image_s3_1_19.png
    :align: center

    NOTIFICATIONS

The Notification section defines what kind of the notifications the tenant wants to get.

.. figure:: _static/image_s3_1_20.png
    :align: center

    NOTIFICATIONS SETTINGS

Device Manager
-----------------

.. figure:: _static/image_s3_1_21.png
    :align: center

    DEVICE MANAGER

.. figure:: _static/image_s3_1_22.png
    :align: center

    DEVICE MANAGER SETTINGS

Application Manager
----------------------

.. figure:: _static/image_s3_1_23.png
    :align: center

    APPLICATION MANAGER

.. figure:: _static/image_s3_1_24.png
    :align: center

    APPLICATION MANAGER SETTINGS

Sharepoint Online
--------------------

.. figure:: _static/image_s3_1_25.png
    :align: center

    SHAREPOINT ONLINE

.. figure:: _static/image_s3_1_26.png
    :align: center

    SHAREPOINT ONLINE SETTINGS

Email Service
----------------

.. figure:: _static/image_s3_1_27.png
    :align: center

    EMAIL SERVICE

.. figure:: _static/image_s3_1_28.png
    :align: center

    EMAIL SERVICE SETTINGS

User Manager
===============

.. figure:: _static/image_s3_1_29.png
    :align: center

    USER MANAGER

User manager is where to manage the users for the tenant.

.. figure:: _static/image_s3_1_30.png
    :align: center

    USER MANAGER SETTINGS

Add User
-----------

Users can be created directly with user name and email. If Server Agent is used, users can also be created from the Server Agent where Active Directory users from a remote Server Agent can be imported into |prodname|.

.. figure:: _static/image_s3_1_30.png
    :align: center

    ADDING USERS
    
Before Server Agent is used, you can see "Native User" and "Batch create users" two options. If you use Server Agent to connect a remote file server to this specific tenant, the remote Active Directory will also show up.

.. figure:: _static/image_s3_1_31.png
    :align: center

    CLICK TO CREATE OR MIGRATE A USER

Guest users are those users that don't have home directory storage, but can receive file and folder shares from regular users.

.. figure:: _static/image_s3_1_32.png
    :align: center

    SOURCES OF USERS

Group Manager
================

You can create native |prodname| groups to help manage the assignment of users to folders and files for read and write permission.

If you have the Server Agent connected, the Server Agent can import Proxy Active Directory group instead.

.. figure:: _static/image_s3_1_33.png
    :align: center

    GROUPS

Role Manager
===============

Role manager can further define what each users in the tenant can do and what they can access.

.. figure:: _static/image_s3_1_34a.png
    :align: center

    ROLES

.. figure:: _static/image_s3_1_34.png
    :align: center

    CREATING A NEW ROLE

Collaboration
^^^^^^^^^^^^^^^^

Collaboration is centered around storage folders and assigning users to folders with specific permissions.

Team Folder
==============

.. figure:: _static/image_s3_1_35.png
    :align: center

    TEAM FOLDERS

The idea of a Team Folder is similar to that of a local network share. Users can be assigned to a Team Folder with read, write permissions at the share level and inside the folder, at the sub-folder level, each sub-folder can define its own folder level permission.

Add a Team Folder
---------------------

.. figure:: _static/image_s3_1_36.png
    :align: center

    CREATING A TEAM FOLDER

In the hosted |prodname| environment, you can create Team Folders in several different ways. 

- Default Storage
    Create a new Team Folder from scratch using default storage. It will be empty to start with and you can put files and folders inside later. 

- Existing Folder(s)
    Create a new folder by selecting one or more existing folders. Those selected folders will show up inside the Team Folder. 

- Publish Tenant Home Storage As a Team Folder
    The tenant's home storage will be published to users in the same tenant so they can see file and folder contents from the home storage. Some specialized folder such as folders from remote file servers or remote cloud storage services are not included in this scope. 

- Remote File Server (with Server Agent)
    Once you install the Server Agent on your remote server, you can create a Team Folder here. 


Initially without remote Server Agent installed, the Remote server section is empty. If there is at least one Server Agent installed, the remote file server will show up under the "Remote File Servers" section and you will be able to import file servers from a remote location, together with Active Directory Identities and the corresponding folder level NTFS permissions.

.. figure:: _static/image_s3_1_37.png
    :align: center

    TEAM FOLDER SETTINGS

Shared Objects
================

.. figure:: _static/image_s3_1_38.png
    :align: center

    REPORTS > SHARED OBJECTS

In |prodname|, you can share files and folders from your file browser. Once a something has been shared it will show up in the Shared Objects view of the Reports section of the portal. The shares can be read-only or full access, and can be controlled by date or shared as a public link. This is how Guest Users are created in |prodname|. 

.. figure:: _static/image_s3_1_39.png
    :align: center

    SHARED OBJECT SETTINGS



Storage Manager
=================

.. figure:: _static/image_s3_1_40.png
    :align: center

    SETTING UP BACKEND STORAGE 

Storage Manager is where you can define more secondary storage services and mount them into |prodname| so you can access them all from one single location.
