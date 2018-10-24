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

## Build Instruction (Windows or Linux)

To build the documents locally yourself.
1. Install Sphinx

    1. Install Python
    1. Install pip
    1. pip install sphinx
    1. pip install sphinx_rtd_theme
    
1. build the docs

    1. use a command line prompt, change directory to each projects, such as admin
    1. go to the source folder inside and modify conf.py if necessary.  and then back to the parent directory.
    1. make html
    1. the above can be done from either Windows environment or Linux environment
    1. if you want to build pdf format, Linux environment is recommended.
    1. pdf target is make latexpdf
    
## Hosting Instruction

You can always build the HTML output or the PDF output and host it on your own.

The easiest way to get the document is to fork this git repository into your own, and modify the prodname parameter and then import 
the project into Read the Docs hosting.

* Product Document Hosting - https://readthedocs.org/

example RTD hosting:

* web portal guide - https://centrestack.readthedocs.io/projects/web/en/latest/
* admin guide - https://centrestack.readthedocs.io/en/latest/
* windows client agent guide - https://centrestack.readthedocs.io/projects/windows/en/latest/
* group policy settings - https://centrestack.readthedocs.io/projects/policy/en/latest/
* file server agent - https://centrestack.readthedocs.io/projects/serveragent/en/latest/
* mac client agent guide - https://centrestack.readthedocs.io/projects/mac/en/latest/
    
## PDF Build Instruction on Linux (Tested on Ubuntu)

In order to build the latexpdf target, it has to be done from a Linux machine and a few more modules need to be installed. Here is a captured command line history to setup a Ubuntu Sphinx latexpdf build environment.

  *  sudo apt install python-pip
  *  pip install Sphinx
  *  pip install sphinx_rtd_theme
  *  pip install rst2pdf
  *  pip list --outdated
  *  sudo apt-get install python-sphinx
  *  sudo apt-get install fbreader
  *  sudo apt install texlive-latex-base
  *  sudo apt install latexmk
  *  sudo apt-get install texlive-latex-recommended
  *  sudo apt-get install texlive-latex-extra
  *  sudo apt-get install texlive-fonts-recommended
