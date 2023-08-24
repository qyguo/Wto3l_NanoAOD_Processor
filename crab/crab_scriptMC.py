#!/usr/bin/env python
import os
from PhysicsTools.NanoAODTools.postprocessing.framework.postprocessor import PostProcessor

#this takes care of converting the input files from CRAB
from PhysicsTools.NanoAODTools.postprocessing.framework.crabhelper import inputFiles,runsAndLumis
from PhysicsTools.NanoAODTools.postprocessing.analysis.Wto3l_NanoAOD_Processor.wvAnalysisModule import wvAnalysisModule

from PhysicsTools.NanoAODTools.postprocessing.modules.jme.jetmetHelperRun2 import *

testfile = "root://cms-xrd-global.cern.ch//store/mc/RunIIFall17NanoAODv7/WJetsToLNu_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/270000/0E62152C-8DC8-B940-B84F-21F4296AD5CC.root"

p=PostProcessor(".",inputFiles(),"","keep_and_drop_MC.txt",modules=[wvAnalysisModule()],provenance=True,fwkJobReport=True,jsonInput=runsAndLumis())
#p=PostProcessor(".",[testfile],"","keep_and_drop_MC.txt",modules=[wvAnalysisModule()],provenance=True,fwkJobReport=True,jsonInput=runsAndLumis())

p.run()

print "DONE"
