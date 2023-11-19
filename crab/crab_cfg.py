from WMCore.Configuration import Configuration
from CRABClient.UserUtilities import config#, getUsernameFromSiteDB

config = Configuration()

config.section_("General")
config.General.requestName = 'Data_NanoAOD'
config.General.workArea = 'results_data'
config.General.transferLogs=True
config.General.transferOutputs = True
config.section_("JobType")
config.JobType.pluginName = 'Analysis'
config.JobType.psetName = 'PSet.py'
config.JobType.scriptExe = 'crab_script.sh'
config.JobType.inputFiles = ['crab_script.py','../scripts/haddnano.py','keep_and_drop.txt']
config.JobType.sendPythonFolder     = True
config.JobType.allowUndistributedCMSSW = True
config.section_("Data")
config.Data.inputDataset = '/SingleMuon/Run2017B-Nano14Dec2018-v1/NANOAOD'
config.Data.lumiMask = '../python/postprocessing/analysis/nanoAOD_vvVBS/Cert_294927-306462_13TeV_PromptReco_Collisions17_JSON.txt'
#config.Data.inputDBS = 'phys03'
config.Data.inputDBS = 'global'
config.Data.splitting = 'FileBased'
#config.Data.splitting = 'EventAwareLumiBased'
config.Data.unitsPerJob = 1

#config.Data.outLFNDirBase = '/store/user/nimenend/NanoAOD/Data/'
#config.Data.outLFNDirBase = '/store/user/%s/NanoPostTemp' % (getUsernameFromSiteDB())
config.Data.outLFNDirBase = '/store/user/qguo/NanoAOD/Data/'
config.Data.publication = False
config.Data.ignoreLocality = True
config.Data.outputDatasetTag = 'Data_NanoAOD'
config.section_('User')
config.section_("Site")
config.Site.storageSite = "T2_US_Florida"
config.Site.whitelist = ['T2_US_*']
