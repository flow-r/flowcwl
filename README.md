# flowcwl

## setup:
module load git
git clone https://github.com/flow-r/flowcwl

## notest on setup:

### add submodules
git submodule add https://github.com/common-workflow-language/cwl2script src/cwl2script
git submodule add https://github.com/common-workflow-language/cwl2script src/cwltool


### installing submodules

```
module load python/2.7.10-anaconda

# make the dir
libdir=pythonlib/lib/python2.7/site-packages
mkdir -p $libdir
export PYTHONPATH=`pwd`/${libdir}
python src/cwltool/setup.py install --prefix=pythonlib
````

## trial:
mkdir test
python src/cwl2script/cwl2script.py src/cwl2script/test/revsort.cwl src/cwl2script/test/revsort-job.json > test/revsort.sh

## for MDA
cd /rsrch1/genomic_med/vapor/flowcwl