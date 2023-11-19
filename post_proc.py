#!/usr/bin/env python
import os,sys

from PhysicsTools.NanoAODTools.postprocessing.framework.postprocessor import PostProcessor
from wvAnalysisModule import *
from PhysicsTools.NanoAODTools.postprocessing.modules.jme.jetmetHelperRun2 import *

#testfile = "root://cms-xrd-global.cern.ch//store/data/Run2018A/SingleMuon/NANOAOD/Nano25Oct2019-v1/20000/D03C6AE0-73AD-A940-B8CA-779A621D4853.root"
#testfile = "root://cms-xrd-global.cern.ch//store/data/Run2017D/DoubleMuon/NANOAOD/Nano25Oct2019-v1/30000/250D3DC4-9180-4A4D-A9F3-823FB8CA82D2.root"
#testfile = "root://cms-xrd-global.cern.ch//store/mc/RunIIFall17NanoAODv7/WJetsToLNu_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/270000/0E62152C-8DC8-B940-B84F-21F4296AD5CC.root"
#outfile = "file:/afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/"+sys.argv[2]+"/"+os.path.basename(sys.argv[1])
#testfile = "file:"+sys.argv[1]
testfile = "root://cms-xrd-global.cern.ch/"+sys.argv[1]
outfile = "file:/publicfs/cms/data/hzz/guoqy/Zprime/UL/2018/Ntuple/"+sys.argv[2]+"/"+os.path.basename(sys.argv[1])

entriesToRun = 0  # 0 if need to run over all entries else put number of entries to run
isMCTrueFalse = True
Year = 2018
# Keep DownloadFileToLocalThenRun=True this should reduce the file read error from eos.
#DownloadFileToLocalThenRun=True
DownloadFileToLocalThenRun=False

if testfile.find("SingleMuon") != -1 or testfile.find("EGamma") != -1 or testfile.find("SingleElectron") != -1 or testfile.find("DoubleMuon") != -1 or testfile.find("MuonEG") != -1 or testfile.find("DoubleEG") != -1:
  isMCTrueFalse=False
  if testfile.find("Run2016") != -1:
    Year=2016
    #jsonFileName="Cert_271036-284044_13TeV_PromptReco_Collisions16_JSON.txt"
    jsonFileName="Cert_271036-284044_13TeV_Legacy2016_Collisions16_JSON.txt"
  if testfile.find("Run2017") != -1:
    Year=2017
    #jsonFileName="Cert_294927-306462_13TeV_PromptReco_Collisions17_JSON.txt"
    jsonFileName="Cert_294927-306462_13TeV_UL2017_Collisions17_GoldenJSON.txt"
  if testfile.find("Run2018") != -1:
    Year=2018
    #jsonFileName="Cert_314472-325175_13TeV_PromptReco_Collisions18_JSON.txt"
    jsonFileName="Cert_314472-325175_13TeV_Legacy2018_Collisions18_JSON.txt"
  print "\n===> Running over ",Year," data...\n"
  print "===> JSON File: ",jsonFileName
  #jetmetCorrector = createJMECorrector(isMC=isMCTrueFalse, dataYear=Year, jesUncert="All", redojec=True, jetType = "AK4PFchs")
  #fatJetCorrector = createJMECorrector(isMC=isMCTrueFalse, dataYear=Year, jesUncert="All", redojec=True, jetType = "AK8PFPuppi")
  p=PostProcessor(".",[testfile],None,"keep_and_drop.txt",[wvAnalysisModule()],provenance=False,fwkJobReport=False,jsonInput=jsonFileName,maxEntries=entriesToRun,haddFileName="nano.root",prefetch=DownloadFileToLocalThenRun)
else:
  print "==> Processing a MC file..."
  isMCTrueFalse=True
  if testfile.find("RunIIAutumn18NanoAODv") != -1: year = 2018
  if testfile.find("RunIISummer20UL18NanoAOD") != -1: year = 2018
  if testfile.find("VVjj_2018v") != -1: year = 2018
  if testfile.find("RunIIFall17NanoAODv") != -1: year = 2017
  if testfile.find("RunIISummer20UL17NanoAOD") != -1: year = 2017
  if testfile.find("VVjj_2017v") != -1: year = 2017
  if testfile.find("RunIISummer16NanoAODv") != -1: year = 2016
  if testfile.find("RunIISummer20UL16NanoAOD") != -1: year = 2016
  if testfile.find("VVjj_2016v") != -1: year = 2016
  #jetmetCorrector = createJMECorrector(isMC=isMCTrueFalse, dataYear=year, jesUncert="All", redojec=True, jetType = "AK4PFchs")
  #fatJetCorrector = createJMECorrector(isMC=isMCTrueFalse, dataYear=year, jesUncert="All", redojec=True, jetType = "AK8PFPuppi")
  #p=PostProcessor(".",[testfile],"","keep_and_drop.txt",[wvAnalysisModule(),jetmetCorrector(),fatJetCorrector()],provenance=True,fwkJobReport=False,maxEntries=entriesToRun,haddFileName="nano.root",prefetch=DownloadFileToLocalThenRun)
  p=PostProcessor(".",[testfile],"","keep_and_drop.txt",[wvAnalysisModule()],provenance=True,fwkJobReport=False,maxEntries=entriesToRun,haddFileName=outfile,prefetch=DownloadFileToLocalThenRun)

p.run()
Name_root = os.path.basename(sys.argv[1]).replace(".root","_Skim.root")
print(Name_root)
COMMAND_CP = ' mv '+Name_root+' /publicfs/cms/data/hzz/guoqy/Zprime/UL/2018/Ntuple/'+sys.argv[2]+'_Skim/'
print COMMAND_CP
os.system(COMMAND_CP)
print "DONE"
#os.system("ls -lR")
