#################################
Folder Legends in Web Interface
#################################

There are many different folders in the web interface. 

Here is a list of them.

Mounted Storage
================

    .. figure:: _static/attachedcloud.png
        :height: 64px
        :width: 64px

    This folder represents mounted/attached storage. For example, a mounted file server network share or a connected Amazon S3 bucket will look like this.
    
Sync From Remote
=================

    .. figure:: _static/attachedlocal.png
        :height: 64px
        :width: 64px

    This folder represents synchronization folders from remote PCs or Server Agents.
    
Received Shares
================

    .. figure:: _static/sharedfolder.png
        :height: 64px
        :width: 64px

    This folder represents the root folder of all the shared files and folders from other users.
    
Regular Folder
===============

    .. figure:: _static/shareitemfolder.png
        :height: 64px
        :width: 64px

    This folder represents a single shared folder received from other users.
    
Team Folder
============

    .. figure:: _static/teamfolder.png
        :height: 64px
        :width: 64px

    This folder represent a team folder that is published to users and viewed from the users who received the team folder.
    
Version Control
================

    .. figure:: _static/versionfolder.png
        :height: 64px
        :width: 64px

    Version folder represents folders that every files inside is under version control. 
    
    .. note::
    
        If a folder doesn't have the version folder icon, doesn't mean it is not a version folder. 
        
        As long as one of the parent folder is a version folder, everything inside is under version control.
        
        If the administrator setup the user as version control from the root, the team user may not see the version folder icon either when version control is on by default.
    
