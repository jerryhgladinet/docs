.. CentreStack Deployment Guide documentation master file, created by
   sphinx-quickstart on Tue Jul 21 17:55:47 2015.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

==========================================
Getting Started
==========================================

Introduction
------------

Welcome to the CentreStack Server Deployment Guide. This guide describes
deployment tasks for CentreStack, a managed file synchronization
and sharing solution that focuses on local file server cloud-enablement.

CentreStack includes the CentreStack server, which runs on the Microsoft
Windows server platform, and client agent applications for Microsoft Windows, Mac OS X, web browsers, 
Android and Apple iOS operating systems.

.. note::

    This guide is updated to match build 10.1.6296.42951
    
    

Overview
-----------------------

CentreStack is a managed file sync and share solution that focuses on local file server cloud-enablement. It differentiates from other file sync and share solutions (EFSS) by focusing on security, control, file server and team collaboration. CentreStack does really well in the following areas:

    1. provide on-demand access that honors read-only and write permissions in real-time.
    2. mirror local network share on file server to team collaboration in the cloud.
    3. provide virtual drive letter mapping to the files and folders for access.
    4. provide file locking, version control, client encryption and etc features for the virtual drive.
    
.. note::

    In summary, you can think of CentreStack as a way to elevate and turn a Windows File Server in a local area network
    into a Cloud/Internet facing file server solution with remote and mobile access, while at the same time, the drive mapping,
    the NTFS permission, and file locking are preserved before and after the cloud-enablement.

The CentreStack server is pure software built on top of the Microsoft Web Platform, which includes:

    * Windows Server,
    * IIS (Internet Information Server), 
    * .NET Framework and ASP.NET
    * WCF (Windows Communication Foundation)
    
.. note::
    
    The CentreStack server fits the description of Windows
    Server "Web workload" and "Internet Web Solution". If you use
    Windows Server 2008, you can choose the Web Edition. If you use
    Windows Server 2012, Server 2016 or Server 2019, you can use it for "Web workload"
    and for "Internet Web Solution".
    
Since the CentreStack server is built on top of the Microsoft Web Platform,
it integrates very well with Microsoft components such as
NTFS Permission, Active Directory, File Server network shares, file locking and drive mapping.

It provides file access and sharing functionality through client agents for remote PCs, Macs, File Servers, Web Browsers, and Mobile Devices.

The services can be deployed in flexible combinations to meet different needs. There are two primary ways to deploy the CentreStack.

    1. Deploy in the same site as the File Servers and Active Directory domain controllers:
    
    .. image:: _static/SelfHostedCentreStackDirectShare.svg
    
    2. Deploy in a remote site, such as Amazon Web Services EC2, Microsoft Azure, or in a Data Center where the Managed Service Provider (MSP) hosts their infrastructure:
    
    .. image:: _static/SelfHostedCentreStackRemoteShare.svg

        
        
.. note::

    Our Hosted version of CentreStack (as compared to our self-hosted CentreStack), 
    is already deployed on http://www.centrestack.com. In
    this case, you don't need to deploy a CentreStack server. Instead,
    you can start using the hosted-centrestack
    web portal and client agents directly.

    For this document, from this point on, it refers to the 
    deployment of the Self-Hosted CentreStack server and its
    related client agent applications.

There are three different infrastructure components (logical components that can co-exist in the same server).
In the smallest deployment unit, the different components can co-exist in one single machine (all-in-one deployment).


1. Worker Node Component
^^^^^^^^^^^^^^^^^^^^^^^^^^^

      Worker node contains services like Web Browser Based File Manager, Storage Service Connectors, 
      Active Directory connector and other key components. 
      It is responsible for data related activities such as file upload and download,
      permission, control and change notification. Since the data upload and download
      usually go through worker node, thus it is called a "worker" for data transfer.
      
      Additional nodes can be added as the load increases.
      

2. Database Component
^^^^^^^^^^^^^^^^^^^^^^^^

      The database contains persistent information for the system.
      Database is a critical component for the smooth operation of the CentreStack server farm.
      Local database with latency less than 10 milliseconds is recommended.
      
      In order for all worker nodes be in the same server farm,
      they need to point to the same database.
      
      
3. Storage Component
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

    The storage component is the persistent storage location for files and folders. There are 
    two different types of storage services. One is managed by CentreStack, such as the default
    storage for the cluster and the default storage for tenants. The other is imported storage, 
    for example, having existing file server network shares that aren't managed by CentreStack but can be 
    imported into CentreStack for remote and mobile access.

Terminology
------------

CentreStack Partner Portal
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  
  The Partner Portal can be found by going to http://www.centrestack.com. Click on "Partner" to sign up for your partner account log in credentials, and then you can log into your partner account at anytime. From the Partner Portal, You are able to
  download the CentreStack software and can
  start the trial process. Later, you can
  acquire licenses to turn the trial into a
  production environment.
  
  You can manage hosted-tenants from the partner portal.
  
  You can also come back to the partner portal
  any time that your CentreStack software needs to be upgraded to a later version.

CentreStack Cluster - Server Farm
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

  Multiple CentreStack single-machine nodes connect together by pointing to the same database and then share the same configuration information from the database so that CentreStack can indirectly share the persistent storage location in a symmetrical way.
  
  Indirectly, the database contains storage related information so all the nodes
  in the server farm share storage related configuration.
  
  The whole CentreStack cluster operates as if it is a single entity. The smallest cluster is a single
  CentreStack worker node, which contains all the functionality and different logical nodes together.
  
  Another term for the cluster is the **CentreStack server farm**.
  
  .. note::
  
    The smallest cluster can be a single all-in-one worker node.

Master Admin/Cluster Admin
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

  In this guide, we refer to the admin user as the user that manages the whole CentreStack server farm. The server farm can be as
  small as a single CentreStack server. If so, the admin user will
  still need to manage it regardless of the size of the server
  farm.
  
  The Master Admin is the very first user on the CentreStack server farm.
  Typically, it is the user who installs the CentreStack server software.
  
  Since this user later may set up optional Active Directory connections, it is recommended that this user's email address
  is not from the same Active Directory to avoid circular dependency.
  
Tenant
^^^^^^^^^^^^^^^^^^^

    CentreStack is a multi-tenant ready solution. A tenant
    here usually is mapped to: 
    
        1. a company (if you are the company IT) 
        2. a client of yours (if you are a Managed Service Provider/MSP)
        
    Tenants are created by the cluster administrator.
    
    You can use the CentreStack server in a single tenant setup because it is just a special case of multi-tenancy. 
    
.. note::
    
    From a reporting perspective, a tenant contains a number of users and also
    storage quota and storage consumption. 
    
    From the technical side, a tenant is usually connected to an Active Directory
    and can have a bunch of connected file servers either directly or through server agents.

Tenant Admin
^^^^^^^^^^^^^^^^^^^^

  These are the users who actually use the product but are the admins for their teams (tenant or company).
  
  This is the very first tenant account user. Usually, the Tenant User is created by Master Admin.
  
  The Master Admin is also the Tenant Admin for his own team/company (default tenant). Tenant admin can later delegate administrative tasks to other team users.
  
  By default the cluster administrator can help the tenant administrator on the management scope.

Tenant User
^^^^^^^^^^^^^^^^^^^^

  The tenant user (team user) is a user inside a specific Tenant.  Team users are created by the Tenant Admin (or by cluster admin on behalf of the tenant admin). Team users can come from four different places:
  
    1. Native CentreStack User (created from scratch)
    2. Active Directory User from local LDAP
    3. Active Directory User from remote CentreStack Server Agent
    4. Azure AD or other single-sign-on integrated identity provider
    
    Team users always belong to a specific tenant and can't span multiple tenants.
    However, a team user can receive file and folder share from multiple users
    and from multiple tenants.
    
.. note::

    A Native CentreStack user can be mapped to Active Directory user or Azure AD user later
    if necessary.

Guest User
^^^^^^^^^^^^^^^^^

  The guest users are users outside of the tenant users domain but receive file or folder shares from team user.
  The Team user creates guest users through the file sharing or folder sharing activities. Guest users typically
  are external users outside of an organization that are already using CentreStack.
  
Anonymous User
^^^^^^^^^^^^^^^^^^^^^^^

   The anonymous users are a type of the guest user that doesn't require editing permission. They can receive files and folder 
   shares and can view the file and folder share from within a web browser user interface.

Client Agent Software
^^^^^^^^^^^^^^^^^^^^^^^^

  CentreStack contains various client agents which include: 
  
    - Web Browser Based File Manager
    - Windows Desktop Client with Mapped Drive
    - Windows File Server Agent with 2-way synchronization 
    - Mac OS X client and 
    - Mobile Applications:
        - iOS
        - Android
        - Windows Phone
  
  These client agents provide file access and sharing
  features from the native client operating systems.
  
  The discussion of the client agents are outside the scope of this deployment guide.

System Requirements
--------------------

CentreStack server is built on top of the Microsoft Web Platform, which includes:

    * Windows Server base operating system
    * Internet Information Server 7/8/10 (IIS)
    * .Net Framework 4.5+ 
    * ASP.NET
    * MySQL, Microsoft SQL Server or Microsoft SQL Server Express

The base operating system can be either: 

    - Windows Server 2008 R2 
    - Windows Server 2012, Windows Server 2012 R2 or 
    - Windows Server 2016
    - Windows Server 2019

We recommend Windows Server 2012/2012 R2/2016/2019 since .Net Framework 4.5+ comes directly with these newer server OS platforms.
It is easier and faster to install CentreStack software on Windows Server 2012/2012 R2 or on Windows Server 2016/2019.

.. note::

    The CentreStack server installer is capable of installing all the dependency system components such as .NET Framework and etc. For installation, a clean machine is recommended.
    
    There is no need to prepare the machine beyond the clean state of the basic Operating System software.


Windows Server 2008 (SP2/R2), 2012/R2, 2016, 2019
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The base operating system provides the base of the Microsoft Web Platform.
It will be loaded with the mentioned Microsoft components before the core CentreStack 
software is installed. 

The CentreStack installer will install and load  all the dependency Windows components.

.. note::

    Base Operating System with English locale is recommended. (The User Interface can be in a different locale.)

SQL Server / MySQL Server
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The Microsoft SQL Server or SQL Server Express or MySQL is used to store static configuration information such as the user name, email,
storage configuration, files and folders, sharing information and others.

It is recommended that the SQL Server has daily backups since it contains configuration information for the service to run properly.

If you have SQL Server Standard Edition or SQL Server Enterprise Edition, you can take advantage of the high availability features
like Always-On Clustering or Always-On Fail Over Group.

MySQL Community Edition is also supported. 

If you are setting CentreStack server up in Amazon AWS, Amazon Aurora DB is also recommended.

.. note::

    The CentreStack server installer is capable of installing SQL Express or MySQL. If you only need an all-in-one deployment for a single server deployment, the installer can install the database automatically.

.Net Framework 4
^^^^^^^^^^^^^^^^^

The CentreStack Server is built with .Net Framework 4, with ASP.NET and WCF.

We recommend .Net Framework 4.5 and above as it works better with remote clients that have Internet Explorer 10 or 11.

.. note::

    The CentreStack server Installer will install .NET 4.5 and other
    dependency components automatically. 

ASP.NET 4.5/4.6/4.7
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

CentreStack web browser portal user interface is written in ASP.NET, HTML and JavaScript.

Internet Information Server (IIS)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

CentreStack Server-side services are hosted inside the Internet Information Server (IIS).
It provides brokerage functionalities and secure gateway between the Client Agents and the back-end storage.
It is also a value-add layer on top of the back-end storage.

.. note::

    The CentreStack Server Installer will enable IIS Service if not already. So no manual step required.

Recommended Hardware Specification
-----------------------------------

:Memory: 

    4GB, (8+GB is better for production environment)

:Hard Drive: 

    100G

:Operating System: 

    Windows 2008 R2, Windows 2012 or R2, Windows 2016, Windows 2019
    
:CPU: 

    Intel, minimum 2-Core, prefer 4-Core (or 2-vCPU/4-vCPU  if on a virtual machine)

.. note:: 

    Virtual Machines are recommended. A Clean machine built from a base OS with English Locale is recommended. After providing the clean machine, the CentreStack Server installer will install the rest of the Windows 
    system components and CentreStack components automatically. 
    The software is hypervisor neutral. The hypervisor can be Hyper-V, VMWare or others. The software can be installed on a physical
    machine as well if needed.

Capacity Planning
------------------

For user counts smaller than 1000, a single CentreStack server is enough. Most of the time, an all-in-one server deployment will be sufficient. In this case you will install the CentreStack Server in a single physical or virtual machine.
The default CentreStack installer will install all the components (Database/Web Node/Worker Node) on one machine.

For user counts greater than 1000, it is recommended to have the SQL Server node in a separate physical or virtual machine.

The rest of the worker nodes will share the load for the users in a capacity of 1000 each.

In this case a virtual machine is recommended for each worker node and you should use a wild card SSL certificate for each worker node.

.. note:: 

    In some big deployments, the SSL can be off-loaded to hardware load balancer such as Citrix NetScaler or F5 BIG IP.

The capacity of 1000 is referring to concurrent users. It is possible that you may have 5000 named users but only 1000
of them are using the product concurrently.
So, in this case the per-server capacity can be 5000 named users.

.. note::

    (A Concurrent-User is defined as the users making requests in a 10-second period. For example,
    if you make a request A, and I make a request B, and if the time-difference between request A and request B is less than 10 seconds,
    request A and request B are concurrent).

**EXAMPLE**\:  If you have 300,000 users in your company, you may need between 30-60 worker nodes (5000 – 10,000 named users for each worker node). You can scale up the memory size for each worker node to reduce
the number of worker nodes required.

Load Balancing
----------------

Our recommendation is to have your own load balancing device if possible.
However, CentreStack is capable of using worker nodes (for web function only) for load-balancing if you do not have an existing load balancer. You can pick a worker node to be the node exposed for login/contact
point and pass the actual work to others.

If you have a hardware load balancer such as F5, you can skip web nodes, and have F5 directly load balance to a farm of worker nodes.
You can also use the Network Load Balancing feature which is included in Windows 2012/R2/2016 for load balancing.


Active Directory Integration
-----------------------------

There are three ways to connect Active Directory into
CentreStack.

1. LDAP
^^^^^^^^^^^^^^

For the first way, if the Active Directory is in the same
Local Area Network (LAN), then a direct LDAP/LDAPS connection 
is recommended. 

2. Server Agent Proxy
^^^^^^^^^^^^^^^^^^^^^^

For the Second way, if the Active Directory is in a remote
office, such as on a customer's premise, away from
the CentreStack server, then a client agent software called, "File Server Agent"
can be installed on the remote file server to help
import Active Directory users over to CentreStack.

CentreStack allows you to connect to multiple active directory services.

3. Azure AD Support
^^^^^^^^^^^^^^^^^^^^^^^^^
Via the Azure AD support, you can setup Azure AD so users can be authenticated by Azure AD instead of from a local Active Directory.

.. note::
  
  **"Proxied AD User"**
  
  It is also possible to use the Active Directory from a remote location where the server agent (included client software) is used. In this case "Proxied AD User" will be referred to users 
  imported from server agent's side of the Active Directory.
  
  **"AD User"** 
  
  The "AD user" is reserved 
  to refer to users from local LDAP Active Directory.
  
.. note::

    When should you use LDAP, and when should you use "Server Agent" for AD integration?
    
    If AD is local to the CentreStack server, then LDAP is recommended.
    
    If AD is remote, then Server Agent is recommended.
  

Storage Considerations
--------------------------

In the CentreStack system, for each tenant, there is one mandatory primary storage and there can be multiple,
optional auxiliary storage services. The primary storage is the tenant’s default root storage folder.

If you setup the CentreStack in Amazon EC2 environment, the primary storage usually is an Amazon S3 bucket.

If you setup the CentreStack on-premise, the primary storage can be your file server storage and the auxiliary
storage can be other cloud storage services or other local file server storage. OpenStack Swift is also a popular storage service in private enterprises.

CentreStack can be setup in a Rackspace data center on Cloud Server, Windows Azure VM, IBM SoftLayer Data Center and
connect to Cloud Files, Azure Blob Storage, and SoftLayer Object Storage (OpenStack Swift based) respectively.

CentreStack can also be setup next to a File Server and connect directly to a File Server Network Share.

.. warning::

  If you will later have multiple CentreStack worker nodes in the cluster, make sure you use storage service connector in a way that can be accessed
  from all of the worker nodes.

  For example, C:\\ Drive of a specific worker node is not a good one to be accessed from all worker nodes. However, if it is published as
  a network share, it is good for all worker nodes.

Backup CentreStack
-----------------------

Database
^^^^^^^^^^^^^^^^^^^^^

    Only the CentreStack database contains persistent configuration information.
    All other components are stateless and replaceable.
    In a disaster recovery scenario, as soon as the SQL Server is restored,
    other worker nodes can be re-installed and will start working immediately.
    You can also point the worker node’s database reference to the new SQL Server;
    it will work immediately with the information from the database.

    The worker nodes are stateless so it is not required to backup any worker nodes.
    They can be provisioned by a clean OS with a copy of CentreStack.
    As soon as they are connected to the same database they become a node in the cluster.

Storage (Files and Folders)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

  You will also need to back up your storage services. Most of the time,
  if you are using Cloud Storage services such as Amazon S3 or OpenStack Swift, the service has built-in redundancy. For local storage, DFS replication, RAID array or Microsoft Storage Space
  can all be options to provide storage service redundancy. 

Deployment Scenarios
--------------------------

Private On-premise
^^^^^^^^^^^^^^^^^^^^^^

You can prepare a Windows Server 2008 Service Pack 2 or R2 server or Windows Server 2012/R2/2016 and install CentreStack.
In this scenario, Active Directory is typically at the same site and primary storage is from file server or NAS storage.

In this case, most of the time you are using CentreStack as a way to replace VPN to 
provide access to onsite file server from mobile devices and remote devices.

.. note::

    Business Access use case - provide access to
    file server via CentreStack to mobile devices. When
    employees are in the office, they access
    the file server their normal way without
    noticing any difference, and while on the road
    or from remote location, they can use mobile 
    and remote device to access file server network
    shares.

Private Off-Premise
^^^^^^^^^^^^^^^^^^^^^^^

Normally, a managed service provider (MSP) manages your IT services, such as hosted exchange servers, hosted file servers etc.
You can ask the same managed service provider to install and manage the CentreStack for you in their data center. 

Usually from this deployment scenario, if the file server is already in the same data center,
typically it turned into the "Private On-premise" deployment.  

If on the other hand,
the file servers are away from the data center, this gets turned into 
"Business Continuity" use case, where the server agent can be installed on the local file server
and connects the local file servers to the remote CentreStack server in the data center.

Virtual Private Cloud
^^^^^^^^^^^^^^^^^^^^^^^

In this deployment scenario, you would deploy the CentreStack solution in a virtual private cloud environment such as Amazon EC2.
CentreStack is also available in the form of AMI image to facilitate creation of EC2 instances.
In this deployment scenario, the typical primary storage connection is to the Amazon S3 storage.
You can also setup CentreStack solution in an environment like HP Helion (OpenStack) Cloud, with a Windows Server 2012 connecting to OpenStack Swift
storage.

Multi-Site Deployment
^^^^^^^^^^^^^^^^^^^^^^^^
Please reference multi-site deployment.

Security Consideration
--------------------------

Firewall Settings
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The CentreStack Server only needs port 80 (HTTP) and port 443 (HTTPS). If you unbind port 80 for external IP address
on the “Default Web Site”, you can also close port 80 (HTTP) and leave 443 (HTTPS) as the only open port.

The best practice is if you leave both port 80 and port 443 open on the CentreStack server, and use
a firewall fronting the CentreStack server to control the access from the firewall.

Access Clients and CentreStack
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The access client agents will be configured with an access end point in the form of https://cloud.acme.com,
where cloud.acme.com is the DNS name of your CentreStack server.
The communication from the access clients, such as login request will be protected by SSL over HTTP (HTTPS).

.. note::

    We recommend using https://www.ssllabs.com/ to check out the strength of your SSL certificate and whether
    or not it is compatible with iOS 9 and above devices.

CentreStack and Active Directory
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If the CentreStack is configured with Active Directory,
CentreStack will authenticate users on behalf of the active directory by contacting the Active Directory over LDAP or LDAPS.
There is no direct communication between the access clients and the Active Directory.
