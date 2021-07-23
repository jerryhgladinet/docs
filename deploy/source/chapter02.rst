Infrastructure Components
-----------------------------

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
      Database is a critical component for the smooth operation of the |prodname| server farm.
      Local database with latency less than 10 milliseconds is recommended.
      
      In order for all worker nodes be in the same server farm,
      they need to point to the same database.
      
      
3. Storage Component
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

    The storage component is the persistent storage location for files and folders. There are 
    two different types of storage services. One is managed by |prodname|, such as the default
    storage for the cluster and the default storage for tenants. The other is imported storage, 
    for example, having existing file server network shares that aren't managed by |prodname| but can be 
    imported into |prodname| for remote and mobile access.