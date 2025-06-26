#############################
Setup Worker Node for SSL
#############################

Login to the Web Portal as the Cluster Administrator, go to "Cluster Dashboard", and click on "Worker Note Count".

.. image:: _static/image_s7_1_1_v2-03192025.png

then you can see "Cluster Worker Nodes".

.. image:: _static/image_s7_1_2_v2-03192025.png

There is an "Advanced Setting" icon on the page.

.. image:: _static/image_s7_1_3_v3-03192025.png

Now, check **"Always force SSL on Login"** and **"Always force SSL for Native Clients"** boxes.

.. warning::

  If you use the self-signed SSL certificate, the web portal is the only client that allows you to login after some SSL certificate warning. All other native clients such as Windows, mobile, and Mac clients will reject the connection.

You can also modify the node property for the node.

.. image:: _static/image_s7_1_5_v2-03192025.png

The Node Name needs to match the hostname of the node. You can get the hostname of the node by going into Command Prompt(Press Windows+R and then type in cmd) and typing in hostname.

.. image:: _static/image_s7_1_6_v2-03192025.png

The External URL should match the external URL for HTTPS. (If you do not have a SSL certificate installed yet, this can be HTTP for now).

.. image:: _static/image_s7_1_7_v3-03192025.png

The Internal URL will need to match the internal IP address or node's private DNS name and the HTTP or HTTPS protocol.

.. image:: _static/image_s7_1_8_v2-03192025.png