#!/bin/bash

# Extract certificate
security find-certificate -a -p /System/Library/Keychains/SystemRootCertificates.keychain /Library/Keychains/System.keychain > netskope-ca.pem

# Copy to user directory
mkdir -p ~/.netskope
cat netskope-ca.pem > ~/.netskope/netskope-ca.pem

# Add certificate to zsh
cat >> ~/.zshrc <<- EOM      

# --- AUTOMATICALLY GENERATED FROM: netskope.sh -------

export REQUESTS_CA_BUNDLE='$HOME/.netskope/netskope-ca.pem'
export GIT_SSL_CAPATH='$HOME/.netskope/'

# ------------------------------------------------------------------

EOM

exec zsh
