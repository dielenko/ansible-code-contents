<h1>Ansible Docker container</h1>

## Summary
This is a VS Code Remote - Container abstraction that lets you use an Ansible[Azure] Docker container as a full-featured development environment. It is sourced from the official one provided in [Azure Ansible (Community)](https://github.com/microsoft/vscode-dev-containers/tree/main/containers/azure-ansible).\
*This solution provides a way to get going quickly with Ansible in Azure. Includes Ansible, the Azure CLI, the Docker CLI (for testing locally), Node.js for Cloud Shell, Git, PowerShell, and related extensions and dependencies. The solution can be prepared as a development environemnt shared across all team members in a dedicated DevOps project.* \
This abstraction allows you to open any folder inside (or mounted into) the prepared Docker container and take advantage of VS Code's full feature set. A devcontainer.json file in the project tells VS Code how to access (or create) a development container with a well-defined tool and runtime stack. This container can be used to run Ansible and all of the related tools described above.

> You need an Azure account for your operations. You can create a [free trial account here](https://azure.microsoft.com/en-us/free/) and find out more about using [Ansible with Azure here](https://docs.microsoft.com/en-us/azure/ansible/ansible-overview).

| Metadata                    | Value                                             |
| --------------------------- | ------------------------------------------------- |
| *Categories*                | Infrastructure As Code, Configuration Management  |
| *Definition type*           | Dockerfile, Docker Compose                        |
| *Supported architecture(s)* | x86-64, arm64/aarch64 for `bullseye` based images |
| *Container host OS support* | Linux, macOS, Windows                             |
| *Container OS*              | Debian                                            |
| *Languages, platforms*      | Azure, Ansible, Azure CLI, PowerShell, Python     |

