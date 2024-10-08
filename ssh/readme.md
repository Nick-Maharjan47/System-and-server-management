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
