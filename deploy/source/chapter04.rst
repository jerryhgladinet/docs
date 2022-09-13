System Requirements
--------------------

CentreStack server is built on top of the Microsoft Web Platform, which includes:

    * Windows Server base operating system
    * Internet Information Server 7/8/10 (IIS)
    * .Net Framework 4.5+ 
    * ASP.NET
    * PostgreSQL, MySQL, Microsoft SQL Server or Microsoft SQL Server Express

The base operating system can be either: 

    - Windows Server 2022
    - Windows Server 2019
    - Windows Server 2016

We recommend Windows Server 2022/2019/2016 since .Net Framework 4.5+ comes directly with these newer server OS platforms.
It is easier and faster to install CentreStack software on Windows Server 2022/2019/2016.

.. note::

    The CentreStack server installer is capable of installing all the dependency system components such as .NET Framework and etc. For installation, a clean machine is recommended.
    
    There is no need to prepare the machine beyond the clean state of the basic Operating System software.


Windows Server 2022, 2019, 2016
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
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

:Memory: 

    4GB, (8+GB is better for production environment)

:Hard Drive: 

    100G

:Operating System: 

    Windows 2022, Windows 2019, Windows 2016
    
:CPU: 

    Intel, minimum 2-Core, prefer 4-Core (or 2-vCPU/4-vCPU  if on a virtual machine)

.. note:: 

    Virtual Machines are recommended. A Clean machine built from a base OS with English Locale is recommended. After providing the clean machine, the CentreStack Server installer will install the rest of the Windows 
    system components and CentreStack components automatically. 
    The software is hypervisor neutral. The hypervisor can be Hyper-V, VMWare or others. The software can be installed on a physical
    machine as well if needed.

Capacity Planning
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

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
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Our recommendation is to have your own load balancing device if possible.
However, CentreStack is capable of using worker nodes (for web function only) for load-balancing if you do not have an existing load balancer. You can pick a worker node to be the node exposed for login/contact
point and pass the actual work to others.

If you have a hardware load balancer such as F5, you can skip web nodes, and have F5 directly load balance to a farm of worker nodes.
You can also use the Network Load Balancing feature which is included in Windows 2022/2019/2016 for load balancing.