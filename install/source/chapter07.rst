#############################
7 Setup Worker Node for SSL
#############################

Login to the Web Portal as the master administrator, then, under the menu next to dashboard, go to "Cluster Control Panel".

.. image:: _static/image_s7_1_1_v2.png

After this, go to "Worker Nodes".

.. image:: _static/image_s7_1_2_v2.png

There is an "Advanced Setting" icon on the page.

.. image:: _static/image_s7_1_3_v2.png

Now, check **"Always force SSL on Login"** and **"Always force SSL for Native Clients"** boxes.

.. warning::

  If you use the self-signed SSL certificate, the web portal is the only client that allows you to login after some SSL certificate warning. All other native clients such as Windows, mobile, and Mac clients will reject the connection.

.. image:: _static/image_s7_1_4_v2.png

You will also modify the node property for the node.

The External URL will need to match the node's DNS name and the HTTP or HTTPS protocol.

.. image:: _static/image_s7_1_5_v2.png

The Node Name needs to match the hostname of the node.

.. image:: _static/image_s7_1_6_v2.png

The external URL shall match the external URL for HTTPS. (If you do not have SSL certificate installed yet, this can be HTTP for now).

Note: The internal URL is the internal IP address or private DNS name.