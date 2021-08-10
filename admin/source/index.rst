##############################
Getting Started
##############################

Introduction
^^^^^^^^^^^^^^^^^^^

Welcome to the |prodname| Administration Guide. This guide describes administration tasks for |prodname|, the mobile access and secure file sharing solution that focuses on local file server cloud-enablement. 

|prodname| runs on the Windows Server platform and includes client agent software applications for Microsoft Windows, Mac OS X, and Mobile Clients for the Android and Apple iOS operating systems.

.. important::
  |prodname| includes a client application for Windows File Server, which is named "Server Agent". This document is about |prodname| itself, not about the "Server Agent".

.. attention::
  This admin guide is written for |prodname| version ``12.2.9413.50838``

Overview
^^^^^^^^^^^^^^^^^^^

|prodname| is a mobile access and secure file sharing solution. It differentiates itself from other File Sync and Share solutions by focusing on data security, permission controls and,
file server cloud-enablements including data protection and cloud migration. |prodname| surpasses the competition in the following areas:

   1. Maintaining Active Directory, security and NTFS permissions on files and folders.
   2. Providing live time sync-and-share with versioning and revision controls.
   3. Providing On-Demand access that honors Read-Only, and Write permissions in Real-Time.
   4. Mirroring of local network shares for Team Collaboration in the Cloud.
   5. Provide drive mapping and file locking functionality for files in the Cloud.

|prodname| is a software solution built on top of the Microsoft Web Platform. It provides file access and sharing functionality from PCs, Macs, File Servers, Web Browsers, and Mobile Devices. In addition, it also brings data protection and cloud migration features.

The services can be deployed in flexible combinations to meet different needs. There are two primary ways to deploy |prodname|.

    1. Deploy the |prodname| server in the same site as the File Servers and Active Directory domain controllers:
    
    .. image:: _static/SelfHostedCentreStackDirectShare.svg
    
    See also: `File Server Remote Access <https://www.gladinet.com/hybrid-cloud-with-file-server.html>`_
    
    2. Deploy in a cloud data center, such as Amazon Web Services EC2, Microsoft Azure, or in a Data Center where the Managed Service Provider (MSP) hosts their infrastructure:
    
    .. image:: _static/SelfHostedCentreStackRemoteShare.svg



Please reference the `“Installation Checklist”`__ as well as the `“Installation Guide”`__ for information on how to setup and deploy CentreStack.
This guide is focused on the administration of |prodname|.

.. _Installation_Checklist: https://www.centrestack.com/Library/DeploymentGuide/index.html 
__ Installation_Checklist_

.. _Installation_Guide: https://www.centrestack.com/Library/InstallGuide/index.html 
__ Installation_Guide_

.. note::

    This Administration Guide is for the Self-Hosted |prodname|.
    For Hosted-CentreStack, please reference the Hosted CentreStack Admin Guide.
