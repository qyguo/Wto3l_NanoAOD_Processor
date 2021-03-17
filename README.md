# nanoAOD_vvVBS
nanoAOD skiming code for vv semi-leptonic VBS studies

## Code setup

1. Step: 1: Get CMSSW release

   ```bash
   cmsrel CMSSW_10_2_15
   cd CMSSW_10_2_15/src
   cmsenv
   ```
   
2. Step: 2: Get  official nanoAODTools

   ```bash
   git clone git@github.com:cms-nanoAOD/nanoAOD-tools.git PhysicsTools/NanoAODTools
   ```
   
3. Step: 3: Get our analysis repository

   ```bash
   git clone git@github.com:Nik-Menendez/Wto3l_NanoAOD_Processor.git PhysicsTools/NanoAODTools/python/postprocessing/analysis/nanoAOD_vvVBS
   cd PhysicsTools/NanoAODTools/python/postprocessing/analysis/Wto3l_NanoAOD_Processor
   git submodule init
   git submodule update
   cd -
   cmsenv
   scram b
   voms-proxy-init -voms cms
   ```
   
4. Step: 4: interactive running

   ```bash
   cd PhysicsTools/NanoAODTools/python/postprocessing/analysis/Wto3l_NanoAOD_Processor
   python post_proc.py
   ```
   
5. batch job submission.
   1. Crab-job submission   
      ```bash
      cp -r crab/ ../../../../
      cd ../../../../crab/
      voms-proxy-init -voms cms --valid 200:00
      source /cvmfs/cms.cern.ch/crab3/crab.sh
      crab submit -c crab_cfg.py
      
      You must run crab from this directory instead of the crab directory inside Wto3l_NanoAOD_Processor. The files inside Wto3l_NanoAOD_Processor are sent when running crab jobs and the files crab creates when running are too large to be sent.
      ```

   2. Step: 5 (b): Condor-job submission
      1. In file `condor_setup.py`, specify correct input text file from which you need to take input NanoAOD DAS names. Also, updated the output EOS path. Then do following:

         ```bash
         cd $CMSSW_BASE/src/PhysicsTools/NanoAODTools/python/postprocessing/analysis/Wto3l_NanoAOD_Processor
         # Edit condor_setup.py, then
         python condor_setup.py
         # Set proxy before submitting the condor jobs.
         voms-proxy-init -voms cms --valid 200:00
         condor_submit <Files-created-from-above-command>.jdl
         ```


