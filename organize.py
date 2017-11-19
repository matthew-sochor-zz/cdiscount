from io import BytesIO
import os
from subprocess import call
import sys

import bson
from tqdm import tqdm
import cv2
import pandas as pd
from skimage.data import imread


def make_category_dirs(filename):
    df = pd.read_csv(filename)
    for cat in tqdm(df.category_id):
        call(['mkdir', '-p', os.path.join('data', str(cat))])


def read_images(data_dir, bson_file):
    data = bson.decode_file_iter(open(bson_file, 'rb'))
    for i, pic in tqdm(enumerate(data)):
        img = imread(BytesIO(pic['imgs'][0]['picture']))

        cv2.imwrite(os.path.join(data_dir, str(pic['category_id']), str(pic['_id']) + '.png'), img)


if __name__ == '__main__':
    make_category_dirs(sys.argv[1])
    read_images(sys.argv[2], sys.argv[3])
