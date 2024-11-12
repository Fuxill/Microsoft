# -*- coding: utf-8 -*-
from setuphelpers import *
import subprocess, os

def install():
    print("Installing: %s" % control.package)
    if not isdir(r'c:\_TRAVAIL'):
        mkdirs(r'c:\_TRAVAIL')
    subprocess.call(["powershell.exe","-ExecutionPolicy","Unrestricted",(makepath(basedir,'precision-scheduled-task-creation.ps1'))])


