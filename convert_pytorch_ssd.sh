wget -P models https://storage.googleapis.com/models-hao/mb2-ssd-lite-mp-0_686.pth
wget -P models https://storage.googleapis.com/models-hao/mobilenet-v1-ssd-mp-0_675.pth
wget -P models https://storage.googleapis.com/models-hao/mb2-imagenet-71_8.pth
wget -P models https://s3.amazonaws.com/amdegroot-models/vgg16_reducedfc.pth
wget -P models https://s3.amazonaws.com/amdegroot-models/vgg16-ssd-mp-0_7726.pth
wget -P models https://storage.googleapis.com/models-hao/mobilenet_v1_with_relu_69_5.pth

wget -P models https://storage.googleapis.com/models-hao/voc-model-labels.txt

python run_ssd_example.py mb1-ssd models/mobilenet-v1-ssd-mp-0_675.pth models/voc-model-labels.txt
python run_ssd_example.py mb1-ssd models/mobilenet_v1_with_relu_69_5.pth models/voc-model-labels.txt
python run_ssd_example.py vgg16-ssd models/vgg16-ssd-mp-0_7726.pth models/voc-model-labels.txt
python run_ssd_example.py vgg16-ssd models/vgg16_reducedfc.pth models/voc-model-labels.txt
python run_ssd_example.py mb2-ssd-lite models/mb2-ssd-lite-mp-0_686.pth models/voc-model-labels.txt
python run_ssd_example.py mb2-ssd-lite models/mb2-imagenet-71_8.pth models/voc-model-labels.txt
