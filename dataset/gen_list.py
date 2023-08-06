import os 

dataset = 'office-caltech'
dataset = 'office31'
# dataset = 'office-caltech'

if dataset == 'office31':
	domains = ['amazon', 'dslr', 'webcam']
	root_path = "/data/wjn/academic/Causality/_dataset/office31"
elif dataset == 'office-caltech':
	domains = ['amazon', 'dslr', 'webcam', 'caltech']
	root_path = "/data/wjn/academic/Causality/_dataset/office-caltech"
elif dataset == 'office-home':
	domains = ['Art', 'Clipart', 'Product', 'Real_World']
else:
	print('No such dataset exists!')

list_path = os.path.join(root_path, '_image_list')
# os.makedirs(list_path, exist_ok=True)
os.mkdir(list_path)

for domain in domains:
	log = open(os.path.join(list_path, domain+'_list.txt'),'w')
	directory = os.path.join(root_path, domain)
	classes = [x[0] for x in os.walk(directory)]
	classes = classes[1:]
	classes.sort()
	for idx,f in enumerate(classes):
		files = os.listdir(f)
		for file in files:
			s = os.path.abspath(os.path.join(f,file)) + ' ' + str(idx) + '\n'
			log.write(s)
	log.close()