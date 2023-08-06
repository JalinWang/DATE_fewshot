dataset=office-caltech

python train_source.py --dset $dataset --s 0 --max_epoch 100 --trte val --gpu_id 0 --output ckps/source/uda
python train_source.py --dset $dataset --s 1 --max_epoch 100 --trte val --gpu_id 0 --output ckps/source/uda
python train_source.py --dset $dataset --s 2 --max_epoch 100 --trte val --gpu_id 0 --output ckps/source/uda
python train_source.py --dset $dataset --s 3 --max_epoch 100 --trte val --gpu_id 0 --output ckps/source/uda