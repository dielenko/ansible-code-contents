#!/usr/bin/env bash
#-------------------------------------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See https://go.microsoft.com/fwlink/?linkid=2090316 for license information.
#-------------------------------------------------------------------------------------------------------------
#
# Docs: https://github.com/microsoft/vscode-dev-containers/blob/main/script-library/docs/azcli.md
# Maintainer: The VS Code and Codespaces Teams
#
# Syntax: ./azcli-debian.sh

if [ "$(id -u)" -ne 0 ]; then
    echo -e 'Script must be run as root. Use sudo, su, or add "USER root" to your Dockerfile before running this script.'
    exit 1
fi

# Setting up Ansible CLI with autocompletion
sudo curl \
    -L https://raw.githubusercontent.com/dysosmus/ansible-completion/master/ansible-completion.bash \
    -o ~/.bash_completion_custom/.ansible-completion.sh

# Setting up Azure CLI with autocompletion
sudo curl \
    -L https://raw.githubusercontent.com/Azure/azure-cli/dev/az.completion \
    -o ~/.bash_completion_custom/.azcli-completion.sh

# Setting up Docker CLI with autocompletion
sudo curl \
    -L https://raw.githubusercontent.com/docker/docker-ce/master/components/cli/contrib/completion/bash/docker \
    -o ~/.bash_completion_custom/.docker-completion.sh

# Setting up Docker-compose CLI with autocompletion
sudo curl \
    -L https://raw.githubusercontent.com/docker/compose/1.29.2/contrib/completion/bash/docker-compose \
    -o ~/.bash_completion_custom/.docker-compose-completion.sh

# Setting up Git with autocompletion
sudo curl \
    -L https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash \
    -o ~/.bash_completion_custom/.git-completion.sh

echo "Done!"