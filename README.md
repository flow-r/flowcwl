# flowcwl

## setup:

```
module load git
git clone https://github.com/flow-r/flowcwl
```

## notest on setup:


### installing submodules 


```
pip install cwl-runner
# OR
git clone https://github.com/common-workflow-language/cwltool.git
cd cwltool && python setup.py install
cd cwl-runner && python setup.py install
```



## Test

```
mkdir test
python cwl2script.py src/cwl2script/test/revsort.cwl src/cwl2script/test/revsort-job.json > test/revsort.sh
```

One may use use these compiled python packages (2.7.10) for linux x86_64.

```
module load python/2.7.10-anaconda
# compiled pkgs available here:
libdir=pythonlib/lib/python2.7/site-packages
#mkdir -p $libdir
export PYTHONPATH=`pwd`/${libdir}
python src/cwltool/setup.py install --prefix=pythonlib
```

### extra notes (this has already been done)

```
# location for MDA
cd /rsrch1/genomic_med/vapor/flowcwl

git submodule add https://github.com/common-workflow-language/cwl2script src/cwl2script
git submodule add https://github.com/common-workflow-language/cwl2script src/cwltool
````
