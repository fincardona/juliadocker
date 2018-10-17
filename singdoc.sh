sudo docker build -t="docker_virtual_machine" .
sudo bash /home/federico/docker2singularity/docker2singularity.sh docker_virtual_machine
sudo mv /tmp/docker_virtual_machine*.simg /tmp/julia1.0.1.simg
sudo chown federico:federico /tmp/julia1.0.1.simg
sudo scp /tmp/julia1.0.1.simg federico.incardona@login.indaco.unimi.it:./LSPE
