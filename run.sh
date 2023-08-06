dataset=office-caltech

python adapt_multi_DATE_SHOT.py --dset $dataset --t 0 --max_epoch 30 --gpu_id 0 --output_src ckps/source/uda --output ckps/adapt --seed 2019 --dc_loss_par 0.3
python adapt_multi_DATE_SHOT.py --dset $dataset --t 1 --max_epoch 30 --gpu_id 0 --output_src ckps/source/uda --output ckps/adapt --seed 2019 --dc_loss_par 0.3
python adapt_multi_DATE_SHOT.py --dset $dataset --t 2 --max_epoch 30 --gpu_id 0 --output_src ckps/source/uda --output ckps/adapt --seed 2019 --dc_loss_par 0.3
python adapt_multi_DATE_SHOT.py --dset $dataset --t 3 --max_epoch 30 --gpu_id 0 --output_src ckps/source/uda --output ckps/adapt --seed 2019 --dc_loss_par 0.3