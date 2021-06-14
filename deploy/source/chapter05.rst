==============================
Firewall Settings
==============================

The CentreStack Server only needs port 80 (HTTP) and port 443 (HTTPS). If you unbind port 80 for external IP address
on the “Default Web Site”, you can also close port 80 (HTTP) and leave 443 (HTTPS) as the only open port.

The best practice is if you leave both port 80 and port 443 open on the CentreStack server, and use
a firewall fronting the CentreStack server to control the access from the firewall.
