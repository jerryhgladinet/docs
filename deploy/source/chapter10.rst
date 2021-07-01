Security Considerations
--------------------------

Firewall Settings
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The CentreStack Server only needs port 80 (HTTP) and port 443 (HTTPS). If you unbind port 80 for external IP address
on the “Default Web Site”, you can also close port 80 (HTTP) and leave 443 (HTTPS) as the only open port.

The best practice is if you leave both port 80 and port 443 open on the CentreStack server, and use
a firewall fronting the CentreStack server to control the access from the firewall.

Access Clients and CentreStack
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The access client agents will be configured with an access end point in the form of https://cloud.acme.com,
where cloud.acme.com is the DNS name of your CentreStack server.
The communication from the access clients, such as login request will be protected by SSL over HTTP (HTTPS).

.. note::

    We recommend using https://www.ssllabs.com/ to check out the strength of your SSL certificate and whether
    or not it is compatible with iOS 9 and above devices.

CentreStack and Active Directory
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If the CentreStack is configured with Active Directory,
CentreStack will authenticate users on behalf of the Active Directory by contacting the Active Directory over LDAP or LDAPS.
There is no direct communication between the access clients and the Active Directory.
