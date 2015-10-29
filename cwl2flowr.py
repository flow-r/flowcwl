import argparse
import cwltool.main
import sys
import os
import schema_salad
import logging
from cwltool.process import checkRequirements, shortname, adjustFiles
import shellescape
import re
import copy
import json

