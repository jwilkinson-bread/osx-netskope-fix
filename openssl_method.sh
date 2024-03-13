#!/bin/bash

# Extract certificate
echo | openssl s_client -showcerts -servername github.com \
    -connect github.com:443 2>/dev/null  \
    | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > netskope-ca.pem

# Copy to user directory
cat netskope-ca.pem > ~/.netskope/netskope-ca.pem

# Add certificate to zsh
cat >> ~/.zshrc <<- EOM      

# --- AUTOMATICALLY GENERATED FROM: netskope.sh -------

export REQUESTS_CA_BUNDLE='~/.netskope/netskope-ca.pem'
export GIT_SSL_CAPATH='~/.netskope/'

# ------------------------------------------------------------------

EOM

exec zsh
