#
# docker build -f Dockerfile -t mask-rcnn .
#
# dknvit -p 8889:8888 mask-rcnn bash
#

FROM tensorflow-gpu

# dev tools
RUN pip install --no-cache-dir ipython ipdb requests lxml arrow click flake8 beautifulsoup4 sqlalchemy pint alembic

# mask-rcnn requirements
RUN pip install --no-cache-dir numpy scipy Pillow cython matplotlib scikit-image tensorflow keras opencv-python h5py imgaug

WORKDIR /opt/
CMD ["bash"]
