# Guide

Here are CentreStack documents written in the format of reStructuredText and can be built by the Sphinx environment or import
into Read The Docs hosting environment.

There is a conf.py file in each document project. There is a **prodname** parameter you can change before you build the doc into HTML files.

* Sphinx - http://www.sphinx-doc.org/en/master/http://www.sphinx-doc.org/en/master/
* Read The Docs - https://docs.readthedocs.io/en/latest/install.html
* reStructuredText Primer - http://www.sphinx-doc.org/en/master/usage/restructuredtext/basics.html

To build the documents locally yourself.
1. Install Sphinx

    1. Install Python
    1. Install pip
    1. pip install sphinx
    1. pip install sphinx_rtd_theme
    
1. build the docs

    1. change directory to each projects, such as admin
    1. make html
    
    
The easiest way to get the document is to fork this git repository into yourown, and modify the prodname parameter and then import 
the project into Read the Docs hosting.

example RTD hosting:

* web portal guide - https://centrestack.readthedocs.io/projects/web/en/latest/
* admin guide - https://centrestack.readthedocs.io/en/latest/
    
