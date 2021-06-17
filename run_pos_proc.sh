#scp -r nikmenendez@hpg2.rc.ufl.edu:/cmsuf/data/store/user/nimenend/SignalGeneration/CRAB_PrivateMC/WmTo3l_M4/210507*/ /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M4/
#search_dir=/afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M4/0000/
#inputs=()
#for entry in "$search_dir"/*
#do
#	inputs+=("$entry")
#done
#for input in "${inputs[@]}"
#do
#	python post_proc.py $input WmTo3l_M4
#done
#hadd -f /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/Final/WmTo3l_M4.root /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M4/*.root
#rm -r /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M4/
#rm Wto3l*
#
scp -r nikmenendez@hpg2.rc.ufl.edu:/cmsuf/data/store/user/nimenend/SignalGeneration/CRAB_PrivateMC/WmTo3l_M5/210507*/ /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M5/
hadd -fk /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M5.root /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M5/0000/*.root
rm -rf /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M5/
#search_dir=/afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M5/0000/
search_dir=/afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/
inputs=()
for entry in "$search_dir"/*
do
        inputs+=("$entry")
done
for input in "${inputs[@]}"
do
        python post_proc.py $input WmTo3l_M5
done
#hadd -fk /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/Final/WmTo3l_M5.root /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M5/*.root
mv WmTo3l_M5_Skim.root /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/Final/WmTo3l_M5.root
#rm -rf /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M5/
#
#scp -r nikmenendez@hpg2.rc.ufl.edu:/cmsuf/data/store/user/nimenend/SignalGeneration/CRAB_PrivateMC/WmTo3l_M10/210507*/ /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M10/
#search_dir=/afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M10/0000/
#inputs=()
#for entry in "$search_dir"/*
#do
#        inputs+=("$entry")
#done
#for input in "${inputs[@]}"
#do
#        python post_proc.py $input WmTo3l_M10
#done
#hadd -f /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/Final/WmTo3l_M10.root /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M10/*.root
#rm -rf /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M10/
#
#scp -r nikmenendez@hpg2.rc.ufl.edu:/cmsuf/data/store/user/nimenend/SignalGeneration/CRAB_PrivateMC/WmTo3l_M15/210507*/ /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M15/
#search_dir=/afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M15/0000/
#inputs=()
#for entry in "$search_dir"/*
#do
#        inputs+=("$entry")
#done
#for input in "${inputs[@]}"
#do
#        python post_proc.py $input WmTo3l_M15
#done
#hadd -f /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/Final/WmTo3l_M15.root /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M15/*.root
#rm -rf /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M15/

#scp -r nikmenendez@hpg2.rc.ufl.edu:/cmsuf/data/store/user/nimenend/SignalGeneration/CRAB_PrivateMC/WmTo3l_M30/210507*/ /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M30/
#search_dir=/afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M30/0000/
#inputs=()
#for entry in "$search_dir"/*
#do
#        inputs+=("$entry")
#done
#for input in "${inputs[@]}"
#do
#        python post_proc.py $input WmTo3l_M30
#done
#hadd -f /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/Final/WmTo3l_M30.root /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M30/*.root
#rm -rf /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M30/

#scp -r nikmenendez@hpg2.rc.ufl.edu:/cmsuf/data/store/user/nimenend/SignalGeneration/CRAB_PrivateMC/WmTo3l_M60/210507*/ /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M60/
#search_dir=/afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M60/0000/
#inputs=()
#for entry in "$search_dir"/*
#do
#        inputs+=("$entry")
#done
#for input in "${inputs[@]}"
#do
#        python post_proc.py $input WmTo3l_M60
#done
#hadd -f /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/Final/WmTo3l_M60.root /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M60/*.root
#rm -rf /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WmTo3l_M60/
#
#scp -r nikmenendez@hpg2.rc.ufl.edu:/cmsuf/data/store/user/nimenend/SignalGeneration/CRAB_PrivateMC/WpTo3l_M4/210507*/ /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WpTo3l_M4/
#search_dir=/afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WpTo3l_M4/0000/
#inputs=()
#for entry in "$search_dir"/*
#do
#        inputs+=("$entry")
#done
#for input in "${inputs[@]}"
#do
#        python post_proc.py $input WpTo3l_M4
#done
#hadd -f /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/Final/WpTo3l_M4.root /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WpTo3l_M4/*.root
#rm -rf /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WpTo3l_M4/
#
#scp -r nikmenendez@hpg2.rc.ufl.edu:/cmsuf/data/store/user/nimenend/SignalGeneration/CRAB_PrivateMC/WpTo3l_M5/210507*/ /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WpTo3l_M5/
#search_dir=/afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WpTo3l_M5/0000/
#inputs=()
#for entry in "$search_dir"/*
#do
#        inputs+=("$entry")
#done
#for input in "${inputs[@]}"
#do
#        python post_proc.py $input WpTo3l_M5
#done
#hadd -f /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/Final/WpTo3l_M5.root /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WpTo3l_M5/*.root
#rm -rf /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WpTo3l_M5/
#
#scp -r nikmenendez@hpg2.rc.ufl.edu:/cmsuf/data/store/user/nimenend/SignalGeneration/CRAB_PrivateMC/WpTo3l_M10/210507*/ /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WpTo3l_M10/
#search_dir=/afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WpTo3l_M10/0000/
#inputs=()
#for entry in "$search_dir"/*
#do
#        inputs+=("$entry")
#done
#for input in "${inputs[@]}"
#do
#        python post_proc.py $input WpTo3l_M10
#done
#hadd -f /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/Final/WpTo3l_M10.root /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WpTo3l_M10/*.root
#rm -rf /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WpTo3l_M10/
#
#scp -r nikmenendez@hpg2.rc.ufl.edu:/cmsuf/data/store/user/nimenend/SignalGeneration/CRAB_PrivateMC/WpTo3l_M15/210507*/ /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WpTo3l_M15/
#search_dir=/afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WpTo3l_M15/0000/
#inputs=()
#for entry in "$search_dir"/*
#do
#        inputs+=("$entry")
#done
#for input in "${inputs[@]}"
#do
#        python post_proc.py $input WpTo3l_M15
#done
#hadd -f /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/Final/WpTo3l_M15.root /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WpTo3l_M15/*.root
#rm -rf /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WpTo3l_M15/
#
#scp -r nikmenendez@hpg2.rc.ufl.edu:/cmsuf/data/store/user/nimenend/SignalGeneration/CRAB_PrivateMC/WpTo3l_M30/210507*/ /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WpTo3l_M30/
#search_dir=/afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WpTo3l_M30/0000/
#inputs=()
#for entry in "$search_dir"/*
#do
#        inputs+=("$entry")
#done
#for input in "${inputs[@]}"
#do
#        python post_proc.py $input WpTo3l_M30
#done
#hadd -f /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/Final/WpTo3l_M30.root /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WpTo3l_M30/*.root
#rm -rf /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WpTo3l_M30/
#
#scp -r nikmenendez@hpg2.rc.ufl.edu:/cmsuf/data/store/user/nimenend/SignalGeneration/CRAB_PrivateMC/WpTo3l_M60/210507*/ /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WpTo3l_M60/
#search_dir=/afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WpTo3l_M60/0000/
#inputs=()
#for entry in "$search_dir"/*
#do
#        inputs+=("$entry")
#done
#for input in "${inputs[@]}"
#do
#        python post_proc.py $input WpTo3l_M60
#done
#hadd -f /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/Final/WpTo3l_M60.root /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WpTo3l_M60/*.root
#rm -rf /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/CRAB_PrivateMC/WpTo3l_M60/
#rm Wto3l*
#
scp /afs/cern.ch/work/n/nimenend/Wto3l/Data/Signal/Final/*.root nikmenendez@hpg2.rc.ufl.edu:/cmsuf/data/store/user/t2/users/nikmenendez/signal/NanoAOD/
