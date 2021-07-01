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