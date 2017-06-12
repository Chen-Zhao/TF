
ANACONDA_ROOT=/home/softwares/local/anaconda3
PATH=$ANACONDA_ROOT/bin:$PATH
LD_LIBRARY_PATH=$ANACONDA_ROOT/lib:$LD_LIBRARY_PATH
MANPATH=$ANACONDA_ROOT/share/man/:$MANPATH
INFOPATH=$ANACONDA_ROOT/share/info:$INFOPATH
PKG_CONFIG_PATH=$ANACONDA_ROOT/lib/pkgconfig:$PKG_CONFIG_PATH

export ANACONDA_ROOT
export PATH
export LD_LIBRARY_PATH
export MANPATH
export INFOPATH
export PKG_CONFIG_PATH

source /home/softwares/bin/enable.python3.anaconda3.sh

jupyter-notebook --generate-config
cd ~/.jupyter
openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout mycert.pem -out mycert.pem
vi jupyter_notebook_config.py
# The full path to a private
c.NotebookApp.certfile = u'/Users/bgranger/.jupyter/mycert.crt'
c.NotebookApp.keyfile = u'/Users/bgranger/.jupyter/mycert.key'

firewall-cmd --zone=public --add-port=8888/tcp

pip install --upgrade tensorflow

mkdir /home/chenzhao/Notebook/TF
cd /home/chenzhao/Notebook/TF
jupyter notebook --ip=* --no-browser

http://testnb.readthedocs.io/en/stable/examples/Notebook/Configuring%20the%20Notebook%20and%20Server.html

