#!/bin/bash

samplesAndDatasets=0
#samplesAndDatasets[0]="/SingleMuon/Run2017B-Nano14Dec2018-v1/NANOAOD"
#samplesAndDatasets[1]="/SingleMuon/Run2017C-Nano14Dec2018-v1/NANOAOD"
#samplesAndDatasets[2]="/SingleMuon/Run2017D-Nano14Dec2018-v1/NANOAOD"
#samplesAndDatasets[3]="/SingleMuon/Run2017E-Nano14Dec2018-v1/NANOAOD"
#samplesAndDatasets[4]="/SingleMuon/Run2017F-Nano14Dec2018-v1/NANOAOD"
#samplesAndDatasets[5]="/SingleElectron/Run2017B-Nano14Dec2018-v1/NANOAOD"
#samplesAndDatasets[6]="/SingleElectron/Run2017C-Nano14Dec2018-v1/NANOAOD"
#samplesAndDatasets[7]="/SingleElectron/Run2017D-Nano14Dec2018-v1/NANOAOD"
#samplesAndDatasets[8]="/SingleElectron/Run2017E-Nano14Dec2018-v1/NANOAOD"
#samplesAndDatasets[9]="/SingleElectron/Run2017F-Nano14Dec2018-v1/NANOAOD"
samplesAndDatasets[0]="/DoubleMuon/Run2017B-Nano14Dec2018-v1/NANOAOD"
samplesAndDatasets[1]="/DoubleMuon/Run2017C-Nano14Dec2018-v1/NANOAOD"
samplesAndDatasets[2]="/DoubleMuon/Run2017D-Nano14Dec2018-v1/NANOAOD"
samplesAndDatasets[3]="/DoubleMuon/Run2017E-Nano14Dec2018-v1/NANOAOD"
samplesAndDatasets[4]="/DoubleMuon/Run2017F-Nano14Dec2018-v1/NANOAOD"
#samplesAndDatasets[15]="/DoubleEG/Run2017B-Nano14Dec2018-v1/NANOAOD"
#samplesAndDatasets[16]="/DoubleEG/Run2017C-Nano14Dec2018-v1/NANOAOD"
#samplesAndDatasets[17]="/DoubleEG/Run2017D-Nano14Dec2018-v1/NANOAOD"
#samplesAndDatasets[18]="/DoubleEG/Run2017E-Nano14Dec2018-v1/NANOAOD"
#samplesAndDatasets[19]="/DoubleEG/Run2017F-Nano14Dec2018-v1/NANOAOD"
#samplesAndDatasets[20]="/MuonEG/Run2017B-Nano14Dec2018-v1/NANOAOD"
#samplesAndDatasets[21]="/MuonEG/Run2017C-Nano14Dec2018-v1/NANOAOD"
#samplesAndDatasets[22]="/MuonEG/Run2017D-Nano14Dec2018-v1/NANOAOD"
#samplesAndDatasets[23]="/MuonEG/Run2017E-Nano14Dec2018-v1/NANOAOD"
#samplesAndDatasets[24]="/MuonEG/Run2017F-Nano14Dec2018-v1/NANOAOD"


#IFS='/' read -r -a array <<< "$samplesAndDatasets[1]"
#echo ${array[1]}

for j in "${!samplesAndDatasets[@]}"; do
        echo "=============="
        echo ""
	echo ${samplesAndDatasets[j]}
	IFS='/-' read -r -a array <<< "${samplesAndDatasets[j]}"
	echo ${array[1]}_${array[2]}
	name=${array[1]}_${array[2]}
        echo ${array[1]}
        echo ${array[2]:0:22}
	echo "crab submit -c crab_cfg.py General.requestName="$name" Data.inputDataset=${samplesAndDatasets[j]} Data.outputDatasetTag="$name""
	crab submit -c crab_cfg.py General.requestName="$name" Data.inputDataset=${samplesAndDatasets[j]} Data.outputDatasetTag="$name"
	array=0
	
done
samplesAndDatasets=0
