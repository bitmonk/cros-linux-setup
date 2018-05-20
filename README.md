## My crouton setup

# pre-setup

Generate a new ssh key:

  ssh-keygen -t rsa -b 4096

Copy to clipboard and add to GitHub:

  cat .ssh/id_rsa.pub

Download crouton from https://github.com/dnschneid/crouton,

  sudo ~/Downloads/crouton -t xiwi

Enter the chroot:

  sudo enter-chroot

Install git, then check out this repo:

  sudo apt-get install -y git
  mkdir src
  cd src
  git clone git@github.com:bitmonk/crouton-setup.git

Run the setup.sh script:

  sudo sh setup.sh


