#!/bin/bash
sleep 2
echo
echo "Enter your Github Username"
read username

echo "Enter your Github Email"
read email

echo "Creating ssh-key..."
sleep 3
git config --global user.name $username
git config --global user.email $email
ssh-keygen -t ed25519 -C $email
sleep 3
echo
cat ~/.ssh/id_ed25519.pub
echo
echo "This is your SSH public key, past it here: https://github.com/settings/ssh"

echo "After you paste it, run: ssh -T git@github.com to see if it worked"



