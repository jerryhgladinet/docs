###################
1 Getting Started
###################

Introduction
==============

Welcome to the |prodname| Server Installation Guide. This guide describes the installation tasks for |prodname|, the managed file synchronization and sharing solution. 

|prodname| includes the |prodname| server, which runs on the Microsoft Windows server platform, and client agent applications for Web browsers, Microsoft Windows, Mac OS X, and for mobile platforms such as the Android and the Apple iOS operating systems.

Overview
==========

|prodname| is a managed file sync and share solution that focuses on local file server cloud-enablement. It differentiates from other file sync and share solutions (EFSS) by focusing on the security, control, file server and team collaboration. |prodname| does really well in the following areas:

    1. maintain security by migrating files and folders while keeping the NTFS permissions intact.
    2. provide on-demand access that honors read-only and write permission in real-time.
    3. mirror local network shares on file servers to allow for team collaboration in the cloud.
    4. provide virtual drive letter mapping to the files and folders for access.
    5. provide file locking, version control, client encryption, and more advanced features for managing all virtual drives.

|prodname| Server is a software built on top of the Microsoft Web Platform:

    * Windows Server
    * IIS (Internet Information Server)
    * .NET Framework and ASP.NET
    * WCF (Windows Communication Foundation)
    * PostgreSQL, MySQL or SQL Server
    
Since the |prodname| Server is built on top of the Microsoft Web Platform, it integrates very well with other Microsoft components such as the NTFS Permission on files and folders, the Active Directory users and the File Server network shares.

It provides file access and sharing functionality through client agents for PCs, Macs, File Servers, Web Browsers, and Mobile Devices. The client agent software on Windows and Mac provides real drive mapping and volume mounting support that contains advanced optimization for WAN(Wide Area Network) data transfer.

The services can be deployed in flexible combinations to meet different needs. There are two primary ways to deploy the |prodname| Server:

    1. Deploy in the same site as the File Servers and Active Directory domain controllers:
    
    .. image:: _static/SelfHostedCentreStackDirectShare.svg
    
    See also:
    
    `File Server Remote Access <https://www.gladinet.com/hybrid-cloud-with-file-server.html>`_
    
    2. Deploy in a site remotely, such as Amazon Web Services EC2, Microsoft Azure, or in a Data Center where the Managed Service Provider (MSP) hosts their infrastructure:
    
    .. image:: _static/SelfHostedCentreStackRemoteShare.svg

System Components 
===================

There are three different system components (logical components that can co-exist in the same server) in the |prodname| server. In the smallest depl
oyment unit, the three different components can co-exist in one single machine (all-in-one deployment).


1. Web Server Component - The |prodname| Server
------------------------------------------------
    The Web Server component is ASP.NET and WFC code that is hosted by IIS on a Windows Server. The Web Server component is actually comprised of two separate "sub-components":

    * Web Node 
    * Worker Node

    These sub-components exist for historical purposes and there are still elements in the Cluster Manager user interface for configuring these sub-components. 

2. Database - Configuration Information and System Log
--------------------------------------------------------

    The database contains persistent information for the system. This persistent information includes static configuration information such as user name, file storage and active directory connection information. The database also stores dynamic information such as activity log, file change log and audit traces.

    |prodname| supports the MySQL and Microsoft SQL Server Database Management Systems (DMBS). The all-in-one deployment will deploy MySQL Community Edition on the |prodname| server. The all-in-one deployment is useful for evaluating the software but an external database server is recommended for Production deployments.

3. Back-end File Storage - Where Files and Folders are Stored
-------------------------------------------------------------

    The back-end file storage component is the persistent storage location for files and folders. There are two different types of storage services. One is managed by |prodname|, such as the default storage for the cluster and the default storage for tenants. The other is imported storage, for example, existing file server network shares that weren't managed by |prodname| but can be imported to |prodname| for remote and mobile access.

