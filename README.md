## My crouton setup

# Setup crouton + chroot

Download crouton from https://github.com/dnschneid/crouton,

  sudo ~/Downloads/crouton -t xiwi

Enter the chroot:

  sudo enter-chroot

# Checkout this repo & run setup script

Install ssh and git:

  sudo apt-get install -y ssh git

Generate a new ssh key,

  ssh-keygen -t rsa -b 4096

copy to clipboard and add to GitHub:

  cat .ssh/id_rsa.pub

Install git, then check out this repo:

  sudo apt-get install -y git
  mkdir src
  cd src
  git clone git@github.com:bitmonk/crouton-setup.git
  cd crouton-setup

Run the setup.sh script:

  sudo sh setup.sh


