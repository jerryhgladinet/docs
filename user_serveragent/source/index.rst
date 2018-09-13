################
1 Introduction
################


|prodname| File Server Agent is a client agent software that runs on Windows 
machines and connect network shares on the Windows machine to 
|prodname|. 

It is a file server enablement to allow remote and mobile access, while at the same time, provide business continuity through file synchronization and version control. 

It is also a hybrid cloud setup that allows files and folders to 
be accessed from both local area network (file server map drive) and
from remote locations/Cloud/Internet (via virtual mapped drive).

This is |prodname| File Server Agent Administration Guide.

.. note::

    **File Server Agent** version 9.7.2576 or later


****************
1.1 Background
****************


Security or Mobility?
-----------------------

Businesses need ways to access local file server over the Internet from mobile devices and remote locations for productivity gain. This trend is pushing local file server content outward towards public file-sharing services such as Dropbox and OneDrive. Employees are using 3rd-party file-sharing services on their own to improve productivity. 

Security and control is a big concern for businesses that are sensitive to regulation and data leakage problems. The lack of granular permissions and control over file sharing in public file-sharing services is forcing companies to give up on these 3rd-party services. 

They then revert to the use of virtual private networks (VPNs) to provide remote access to corporate data. However, VPN has its own problems; it is not a good fit for the modern mobility, nor is it productivity friendly. Most of the time, VPN is a headache for managed service providers and company IT department, for the number of VPN related support tickets.


Security + Mobility
---------------------

This is why you need |prodname|; resolving issues between file-sharing requirements, mobility and remote access, while preventing the leakage of your critical data through security and control. |prodname| takes care of the following objectives:

* Make the Windows file server mobility and remote-access friendly
* Maintain file-server accessing paradigm for local and remote access

    - Provide NTFS security permissions
    - Allow Active Directory integration
    - Drive Mapping and on-demand access
    
* File sync and share features integrated into a traditional Windows file server network share


Overview
----------

|prodname| is the overall solution, and the File Server Agent client application is software that connects file servers to the |prodname| file-sharing solution.

The |prodname| File Server Agent is client-agent software that runs on Windows machines as a background service, while connecting to |prodname| servers (typically setup in a data center away from the file server).

File Server Agent allows you to turn your file servers into cloud-friendly servers to migrate the file server shares to the |prodname| environment, while maintaining the two-way synchronization for as long as you need it to be. During this process, the existing share permissions are also migrated to |prodname|. This allows the Windows file server network share to be used locally without change, and at the same time, the network shares are synchronizing with |prodname| Server to form a Hybrid Cloud solution.

File Server Agent technology turns any Windows file server into a private cloud storage that can be accessed from anywhere using any device, while maintaining existing identities and permissions.


As a Summary
--------------

1.  File Server Agent can sync folders and files between the local file server and the remote |prodname| Server.
2.  File Server Agent can sync NTFS folder permissions from a local file server to the remote |prodname| Server.
3.  File Server Agent can export users to the remote |prodname| Server from a user’s local Active Directory.
4.  File Server Agent activity runs as a Windows background service on the local file server.
5.  Users use their local Active Directory identity to access files locally and from the |prodname| Server.

    .. figure:: _static/image058.png
        :align: center
        
        |prodname| ACCESS FROM LOCAL FILE SERVER
    
.. note::

    When should you use File Server Agent to connect your file server to |prodname|?
    
    When should you use a direct server message block (SMB) network share connection?
    
    Typically, when a file server is away not in the same data center or network, we recommend using Server Agent. (e.g. there is no physical connection between |prodname| and the “Server Agent” target system)
    
    For file servers in the same data center, but in a different VLAN, we recommend opening up the VLAN so the |prodname| 
    can direct access the file server without using a Server Agent since both are already in the same data center.


How it solves the problem?
----------------------------
 
1. You or your managed service provider (MSP) owns the |prodname| software. File data is either located on the local file server or the |prodname| Server. Either way, you control the data to prevent unauthorized access.
 
2. |prodname| Server is operating from a data center or local office, behind a firewall connected to the Internet. Typical SMB protocol shares are not available to the Internet; however, the HTTPS communication (Internet facing) capability of the |prodname| Server makes it friendly to mobile and remote devices.
 
3. |prodname| Server either directly leverages the local Active Directory and NTFS permission or replicates these features to maintain a local-file-server access paradigm.
 

What is a typical way to use File Server Agent?
-----------------------------------------------------

When your client needs to store files in local-network shared folders, Server Agent can be helpful for connecting these shares to |prodname|. This typically happens when there is a lot of users in the local office, or the Internet speed is ok but not great coming into the office.

One typical use case is you have remote workers or a branch office that have need to access the file server network share without
using the VPN. You don't want to copy the file server content out just for the remote workers because that will create too many
copies and lost track of which side has the newer version. Setting it up in a hybrid mode, and with two-way synchronization between local file
server and remote |prodname| Server is a better way to go.
 