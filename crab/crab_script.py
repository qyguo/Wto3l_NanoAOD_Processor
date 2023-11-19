#!/usr/bin/env python
import os
from PhysicsTools.NanoAODTools.postprocessing.framework.postprocessor import PostProcessor

#this takes care of converting the input files from CRAB
from PhysicsTools.NanoAODTools.postprocessing.framework.crabhelper import inputFiles,runsAndLumis
from PhysicsTools.NanoAODTools.postprocessing.analysis.nanoAOD_vvVBS.wvAnalysisModule import wvAnalysisModule

from PhysicsTools.NanoAODTools.postprocessing.modules.jme.jetmetHelperRun2 import *

testfile = "root://cms-xrd-global.cern.ch//store/data/Run2017D/DoubleMuon/NANOAOD/Nano25Oct2019-v1/30000/250D3DC4-9180-4A4D-A9F3-823FB8CA82D2.root"
#jsonFileName="../python/postprocessing/analysis/nanoAOD_vvVBS/Cert_294927-306462_13TeV_PromptReco_Collisions17_JSON.txt"
jsonFileName="../python/postprocessing/analysis/nanoAOD_vvVBS/Cert_314472-325175_13TeV_Legacy2018_Collisions18_JSON.txt"

#p=PostProcessor(".",inputFiles(),"","keep_and_drop.txt",modules=[wvAnalysisModule()],provenance=True,fwkJobReport=True,jsonInput=runsAndLumis())
#p=PostProcessor(".",[testfile],None,"keep_and_drop.txt",[wvAnalysisModule()],provenance=False,fwkJobReport=False,jsonInput=jsonFileName,maxEntries=entriesToRun,haddFileName="nano.root",prefetch=DownloadFileToLocalThenRun)

p=PostProcessor(".",inputFiles(),None,"keep_and_drop.txt",modules=[wvAnalysisModule()],provenance=True,fwkJobReport=True,jsonInput=runsAndLumis())
#p=PostProcessor(".",[testfile],None,"keep_and_drop.txt",modules=[wvAnalysisModule()],provenance=False,fwkJobReport=False,jsonInput=jsonFileName)

p.run()

print "DONE"
