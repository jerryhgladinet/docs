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