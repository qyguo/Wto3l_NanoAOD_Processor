from WMCore.Configuration import Configuration
from CRABClient.UserUtilities import config#, getUsernameFromSiteDB

config = Configuration()

config.section_("General")
config.General.requestName = 'DYJetsToLL_M-50_nanoAOD'
config.General.workArea = 'results'
config.General.transferLogs=True
config.General.transferOutputs = True
config.section_("JobType")
config.JobType.pluginName = 'Analysis'
config.JobType.psetName = 'PSet.py'
config.JobType.scriptExe = 'crab_scriptMC.sh'
config.JobType.inputFiles = ['crab_scriptMC.py','../scripts/haddnano.py','keep_and_drop_MC.txt']
config.JobType.sendPythonFolder     = True
config.JobType.allowUndistributedCMSSW = True
config.section_("Data")
config.Data.inputDataset = '/DYJetsToLL_M-50_TuneCP5_13TeV-amcatnloFXFX-pythia8/RunIIFall17NanoAODv7-PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/NANOAODSIM'
#config.Data.inputDBS = 'phys03'
config.Data.inputDBS = 'global'
config.Data.splitting = 'FileBased'
#config.Data.splitting = 'EventAwareLumiBased'
config.Data.unitsPerJob = 1

config.Data.outLFNDirBase = '/store/user/nimenend/NanoAOD/'
#config.Data.outLFNDirBase = '/store/user/%s/NanoPostTemp' % (getUsernameFromSiteDB())
config.Data.publication = False
config.Data.ignoreLocality = True
config.Data.outputDatasetTag = 'DYJetsToLL_M-50_nanoAOD'
config.section_('User')
config.section_("Site")
config.Site.storageSite = "T2_US_Florida"
config.Site.whitelist = ['T2_US_*']
