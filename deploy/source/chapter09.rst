Backup |prodname|
-----------------------

Database
^^^^^^^^^^^^^^^^^^^^^

    Only the |prodname| database contains persistent configuration information.
    All other components are stateless and replaceable.
    In a disaster recovery scenario, as soon as the SQL Server is restored,
    other worker nodes can be re-installed and will start working immediately.
    You can also point the worker node’s database reference to the new SQL Server;
    it will work immediately with the information from the database.

    The worker nodes are stateless so it is not required to backup any worker nodes.
    They can be provisioned by a clean OS with a copy of |prodname|.
    As soon as they are connected to the same database they become a node in the cluster.

Storage (Files and Folders)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

  You will also need to back up your storage services. Most of the time,
  if you are using Cloud Storage services such as Amazon S3 or OpenStack Swift, the service has built-in redundancy. For local storage, DFS replication, RAID array or Microsoft Storage Space
  can all be options to provide storage service redundancy. 