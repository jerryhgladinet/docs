Active Directory Integration
-----------------------------

There are three ways to connect Active Directory into
|prodname|.

1. LDAP
^^^^^^^^^^^^^^

For the first way, if the Active Directory is in the same
Local Area Network (LAN), then a direct LDAP/LDAPS connection 
is recommended. 

2. Server Agent Proxy
^^^^^^^^^^^^^^^^^^^^^^

For the Second way, if the Active Directory is in a remote
office, such as on a customer's premise, away from
the |prodname| server, then a client agent software called, "File Server Agent"
can be installed on the remote file server to help
import Active Directory users over to CentreStack.

||prodname allows you to connect to multiple active directory services.

3. Azure AD Support
^^^^^^^^^^^^^^^^^^^^^^^^^
Via the Azure AD support, you can setup Azure AD so users can be authenticated by Azure AD instead of from a local Active Directory.

.. note::
  
  **"Proxied AD User"**
  
  It is also possible to use the Active Directory from a remote location where the server agent (included client software) is used. In this case "Proxied AD User" will be referred to users 
  imported from server agent's side of the Active Directory.
  
  **"AD User"** 
  
  The "AD user" is reserved 
  to refer to users from local LDAP Active Directory.
  
.. note::

    When should you use LDAP, and when should you use "Server Agent" for AD integration?
    
    If AD is local to the |prodname| server, then LDAP is recommended.
    
    If AD is remote, then Server Agent is recommended.