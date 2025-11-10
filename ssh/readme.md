# git Configuration and SSH configuration and Security Enhancements



1) Git exerciese

=> Steps I took to complete the exercise
    
1) Initialize the git in /etc using the command 
        git Init

2) configured the git with my uer details
    git conifg --global username "My name"
    then, git config --global email "my ucll email address"

3) Then created the .gitignore file 
=> edited with vi /etc/.gitignore
    afterwards, added
            /*
!aliases
!apt/
!colortail/
!cron.d/
!default/
!group
!passwd
!hosts
!iproute2/
!ntp.conf
!postfix
!resolv.conf
!screenrc
!scripts/
!ssh/
!systemd/
!teamd.conf
!udev/
!vim/
!extra_exercises
!system/
!systemd/system/
!systemd/system/ladvd.service
/

4. then made the first commit in the git
5. after that, I made 4 empty file and commit them individually in the git inorder to complete the git exercise.
6. at the end, I pushed all my git commit into commits folder in the root also, cheking the commit using this command : git log | grep commit | cut -c 8- > /root/commits


2) SSH Exercise

# This documentation covers the steps I followed to configure the SSH daemon, improve security by setting a custom port, manage systemd socket activation, and mitigate brute-force attacks using `sshguard`. I also configured SSH key-based access for different users, including setting up a new user `check`.

I edited the SSH configuration file (/etc/ssh/sshd_config) to change the port and disable DNS lookups.
1) vi /etc/ssh/sshd_config

added port 22345 
then, uncommented userDNS no  

2) secondly, to ensure it used port 22345, I restart the socket 
systemctl restart ssh.socket and check using systemctl status ssh


3) I added new user "check" and configured SSH key-based authentication for the user:

 adduser check
sudo mkdir -p /home/check/.ssh
sudo bash -c 'echo "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAw2YPreIBDz/BbRF8ftteme4wyV8T6aNc9TLNY4Xk7K2ta9pPWux7g5fnwnMv/WVBMLbYPh3ECX8G95OeUDGk5UgefjZiBqyAqUFmekzQnOcfhy6aiSc1xe8r0dEMF10Fj3Duvy18Vc0yPQMQCQPkBgr/7n4dxfBdXJsp/GF2p4bLVzKSNoRho0msZEaX/QuCcOgntRzLBtr7+HpVxoCOsTQ9njeC4FBEmKx4soxQG7u4EZI2ZZAVRGYXVANiYodXjgGwQTMTO2pKJzu8s0SK6JcRouGMVdPORf9VoFq2V8YjbhAtrrbkGCemJtXltsxiUe7w5V+8GGGQvigCOo6Gmw==" > /home/check/.ssh/authorized_keys'
chown -R check:check /home/check/.ssh
chmod 700 /home/check/.ssh
chmod 600 /home/check/.ssh/authorized_keys

4) I ensured that the following public keys were present in /root/.ssh/authorized_keys for root

# Configuring SSH Bruteforce Detection and Mitigation

firstly,  I updated the system and install sshguard

Inside that I created "whitelist" and added my ip address and yoda IPv4 and IPv6
    
I also configured /etc/sshguard/sshguard.conf to set the following parameters:
THRESHOLD=5
BLOCK_TIME=300
DETECTION_TIME=120

At the end, I restarted the sshguard

