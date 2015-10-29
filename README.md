# flowcwl

## setup:

```
module load git
git clone https://github.com/flow-r/flowcwl
```

## notest on setup:


### installing submodules 


```
python srs/cwltool/setup.py install
```

One may use use these compiled python packages (2.7.10) for linux x86_64. OR install yourself using 


## Test

```
mkdir test
python src/cwl2script/cwl2script.py src/cwl2script/test/revsort.cwl src/cwl2script/test/revsort-job.json > test/revsort.sh
```

## An example of MDA

```
cd /rsrch1/genomic_med/vapor/flowcwl
module load python/2.7.10-anaconda
libdir=pythonlib/lib/python2.7/site-packages
mkdir -p $libdir
export PYTHONPATH=`pwd`/${libdir}
python src/cwltool/setup.py install --prefix=pythonlib
```

### extra notes (this has already been done)

```
git submodule add https://github.com/common-workflow-language/cwl2script src/cwl2script
git submodule add https://github.com/common-workflow-language/cwl2script src/cwltool
````
