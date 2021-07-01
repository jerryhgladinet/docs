.. CentreStack Deployment Guide documentation master file, created by
   sphinx-quickstart on Tue Jul 21 17:55:47 2015.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.


Getting Started
-----------------------


Welcome to the CentreStack Server Installation Checklist. This guide describes
deployment tasks for CentreStack prior to installation, a managed file synchronization
and sharing solution that focuses on local file server cloud-enablement.

CentreStack includes the CentreStack Server, which runs on the Microsoft
Windows server platform, and client agent applications for Microsoft Windows, Mac OS X, web browsers, 
Android and Apple iOS operating systems.

.. note::

    This guide is updated to match build 12.5.9520.51622
    
    

Overview
^^^^^^^^^^^^^^^^^^^^^^^^^^^

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