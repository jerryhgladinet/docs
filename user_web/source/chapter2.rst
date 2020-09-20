############
Background
############

Architectural Background
=========================

Before we examine the capabilities of the solution, let’s review its architectural background. As illustrated in Figure 1, the |prodname| remote and mobile access solution 
has three primary components:

    *	The Storage Layer and the Internal IT infrastructure such as Active Directory and File Server - on the left
    *	The |prodname| Cluster (Server Farm) - at the center 
    *	The |prodname| access client agents - on the right

    .. image:: _static/New027.png

The web portal belongs to the client tier on the right. Web portal functionality includes

    * administration
    * files and folders management
    * download other client agent software
    * files and folders sharing    
   
Two Deployment Scenarios
=========================
The services can be deployed in flexible combinations to meet different needs. There are two primary ways to deploy the |prodname|.

    1. Deploy in the same site as the File Servers and Active Directory domain controllers:
    
    .. image:: _static/New028.png
    
    2. Deploy in a site remote, such as Amazon Web Services EC2, Microsoft Azure, or any other providers resource location that hosts their infrastructure:
    
    .. image:: _static/New029.png 
    
Existing Infrastructure
========================

Active Directory
-----------------
Triofox can connect to existing IT infrastructure such as
current file servers and existing Active Directory. 

Data Storage
-------------
Triofox Storage can actually be powered by any storage service, including:

    *   Local File Server Network Share
    
        - CIFS/SMB Network Share
        - DFS (Microsoft Distributed File System)
        
    *	Cloud Storage Services aka Triofox Cloud File Server
    
        - Amazon S3 (or any S3 compatible service)
        - Amazon S3 (GovCloud)
        - Rackspace CloudFiles US
        - Rackspace CloudFiles UK
        - Internap XipCloud
        - OpenStack
        - OpenStack (KeyStone 2.0/3.0)
        - Microsoft Azure Blob
        - Microsoft Azure Blob (Gov)
        - WebDav
        - Wasabi Storage
        - Microsoft SharePoint
        

When a new Triofox Cluster admin account is created, any of these services can be selected to power the root storage folder. And, regardless of which provider you select here, 
additional services can be mounted below the root of the storage tree where they will appear as a sub-folder in the root folder.

Triofox Server Farm (Cluster)
----------------------------------
 
The Triofox Cluster (One or more |prodname| servers) provides the access infrastructure and management services and acts as a liaison between the user-facing access clients 
and the backend storage services. It consists of a group of web services which include:

    *	Account Management
    *	Login and User Load Balancing
    *	Web Portal UI
    *	Generic Storage Services (powered by backend provider)
    *	Data Persistence
    *	Local Storage/Device Relay

These services can be deployed in flexible combinations to meet different needs. 

The Triofox has an all-in-one installer, so it can easily be self-hosted by you.

Triofox Client Agent Software
----------------------------------------------

The Triofox Clients enable the use of different services. Supported clients include:

    *	Desktop Client for Windows
    *	Desktop Client for MACs
    *	Server Agent for Windows File Servers (background sync for remote file servers)
    *	iOS client for iPhone and iPad
    *	Android Client
    *	Windows Phone Client
    *	Web Client (Internet Explorer, Chrome, Safari, Firefox, Opera and etc.,)

These clients allow native use of cloud storage on the corresponding device through a mapped drive, file share or whatever mechanism is commonly used to access files. 
This makes it easy for a user to access all their files with any device or share them with users of any device.

Each client tries to keep things familiar for the end user. For example, the server client integrates cloud storage with file shares so that shared cloud folders can be 
easily published as file shares with access controls that can be based on existing Active Directory identities and the desktop client maintains a mapped drive view of 
the cloud storage which operates like any other drive on the desktop.


