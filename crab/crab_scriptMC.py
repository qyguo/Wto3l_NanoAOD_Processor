#!/usr/bin/env python
import os
from PhysicsTools.NanoAODTools.postprocessing.framework.postprocessor import PostProcessor

#this takes care of converting the input files from CRAB
from PhysicsTools.NanoAODTools.postprocessing.framework.crabhelper import inputFiles,runsAndLumis
from PhysicsTools.NanoAODTools.postprocessing.analysis.Wto3l_NanoAOD_Processor.wvAnalysisModule import wvAnalysisModule

from PhysicsTools.NanoAODTools.postprocessing.modules.jme.jetmetHelperRun2 import *

#testfile = "root://cms-xrd-global.cern.ch//store/mc/RunIIFall17NanoAODv7/WJetsToLNu_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/270000/0E62152C-8DC8-B940-B84F-21F4296AD5CC.root"
testfile = "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/ZZTo4L_TuneCP5_13TeV_powheg_pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v2/100000/6242D8A1-C702-B84C-BF5B-CB36A8B6C6D7.root"

#p=PostProcessor(".",inputFiles(),"","keep_and_drop_MC.txt",modules=[wvAnalysisModule()],provenance=True,fwkJobReport=True,jsonInput=runsAndLumis())
p=PostProcessor(".",[testfile],"","keep_and_drop_MC.txt",modules=[wvAnalysisModule()],provenance=True,fwkJobReport=True,jsonInput=runsAndLumis())

p.run()

print "DONE"
