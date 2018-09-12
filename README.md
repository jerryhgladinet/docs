# Guide

Here are CentreStack documents written in the format of reStructuredText and can be built by the Sphinx environment or import
into Read The Docs hosting environment, or built locally for HTML output or for PDF/eBook output.

There is a conf.py file in each document project. There is a **prodname** parameter you can change before you build the doc into HTML files. There are two other parameters - **copyright** and **author**.

```python
copyright = '2018, Gladinet, Inc.'
author = 'Gladinet, Inc.'
prodname = 'CentreStack Server'
```

## Related Tools

* Sphinx - http://www.sphinx-doc.org/en/master/
* Read The Docs - https://docs.readthedocs.io/en/latest/install.html
* reStructuredText Primer - http://www.sphinx-doc.org/en/master/usage/restructuredtext/basics.html

## Build Instruction

To build the documents locally yourself.
1. Install Sphinx

    1. Install Python
    1. Install pip
    1. pip install sphinx
    1. pip install sphinx_rtd_theme
    
1. build the docs

    1. use a command line prompt, change directory to each projects, such as admin
    1. make html
    1. the above can be done from either Windows environment or Linux environment
    1. if you want to build pdf format, Linux environment is recommended.
    
## Hosting Instruction

You can always build the HTML output or the PDF output and host it on your own.

The easiest way to get the document is to fork this git repository into your own, and modify the prodname parameter and then import 
the project into Read the Docs hosting.

* Document Hosting - https://readthedocs.org/

example RTD hosting:

* web portal guide - https://centrestack.readthedocs.io/projects/web/en/latest/
* admin guide - https://centrestack.readthedocs.io/en/latest/
* windows client agent guide - https://centrestack.readthedocs.io/projects/windows/en/latest/
* group policy settings - https://centrestack.readthedocs.io/projects/policy/en/latest/
    
