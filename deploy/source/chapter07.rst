Deployment Scenarios
--------------------------

Private On-premise
^^^^^^^^^^^^^^^^^^^^^^

You can prepare a Windows Server 2008 Service Pack 2 or R2 server or Windows Server 2012/R2/2016 and install |prodname|.
In this scenario, Active Directory is typically at the same site and primary storage is from file server or NAS storage.

In this case, most of the time you are using |prodname| as a way to replace VPN to 
provide access to onsite file server from mobile devices and remote devices.

.. note::

    Business Access use case - provide access to
    file server via |prodname| to mobile devices. When
    employees are in the office, they access
    the file server their normal way without
    noticing any difference, and while on the road
    or from remote location, they can use mobile 
    and remote device to access file server network
    shares.

Private Off-Premise
^^^^^^^^^^^^^^^^^^^^^^^

Normally, a managed service provider (MSP) manages your IT services, such as hosted exchange servers, hosted file servers etc.
You can ask the same managed service provider to install and manage the |prodname| for you in their data center. 

Usually from this deployment scenario, if the file server is already in the same data center,
typically it turned into the "Private On-premise" deployment.  

If on the other hand,
the file servers are away from the data center, this gets turned into 
"Business Continuity" use case, where the server agent can be installed on the local file server
and connects the local file servers to the remote |prodname| server in the data center.

Virtual Private Cloud
^^^^^^^^^^^^^^^^^^^^^^^

In this deployment scenario, you would deploy the |prodname| solution in a virtual private cloud environment such as Amazon EC2.
|prodname| is also available in the form of AMI image to facilitate creation of EC2 instances.
In this deployment scenario, the typical primary storage connection is to the Amazon S3 storage.
You can also setup |prodname| solution in an environment like HP Helion (OpenStack) Cloud, with a Windows Server 2012 connecting to OpenStack Swift
storage.

Multi-Site Deployment
^^^^^^^^^^^^^^^^^^^^^^^^
Please reference multi-site deployment.