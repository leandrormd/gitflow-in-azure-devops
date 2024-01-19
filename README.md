# GitFlow for Azure DevOps

## Introduction 
This tool allows the implementation of the **GitFlow** methodology for branch management along with code review practices enforced by the usage of *pull requests*. 

Since the *pull requests* are not a native **git** feature, we rely on **Azure DevOps** or **Team Foundation Server** to handle them. Also, please consider this tool only works on **Windows** operative system.

If you want to learn more about the **GitFlow** methodology, you can follow [this link](https://nvie.com/posts/a-successful-git-branching-model/).

## Prerequisites
The use of this toolset asumes you have completed the below steps:
1. Install the latest [az devops](https://learn.microsoft.com/en-us/azure/devops/cli/?view=azure-devops)
2. Create a [personal access token](https://docs.microsoft.com/en-us/azure/devops/organizations/accounts/use-personal-access-tokens-to-authenticate?view=azure-devops)
3. Setup your [credentials](https://docs.microsoft.com/en-us/cli/vsts/authenticate?view=vsts-cli-latest) on VSTS CLI

## Installation
1. Clone the repository
2. Move to the repo's main directory
3. Run `install.bat`


## Usage

### Get help

At any moment you can run any of the below commands to get a cheatsheet for the tool:
```console
$ git flow.help
$ git fh
```


### Repository initialization

To configure a repository to use this tool, you need to execute any of the below commands, this should be done only once per repository:
```console
$ git flow.init
$ git fi
```


### Feature Branches

You can create a new feature branch by running any of the below commands:
```console
$ git flow.feature.start $feature_branch_name
$ git ffs $feature_branch_name
```

When you're done with your changes, you can publish the branch to `develop` by running any of the below commands on a checked out feature branch, this will create a *pull request* on the server:
```console
$ git flow.feature.publish
$ git ffp
```


### Hotfix Branches

You can create a new hotfix branch by running any of the below commands:
```console
$ git flow.hotfix.start $hotfix_branch_name
$ git fhs $hotfix_branch_name
```

When you're done with your changes, you can publish the branch to `develop` and `master` by running any of the below commands on a checked out hotfix branch, this will create two *pull request* on the server:
```console
$ git flow.hotfix.publish
$ git fhp
```


### Release Branches

You can create a new release branch by running any of the below commands:
```console
$ git flow.release.start $release_branch_name
$ git frs $release_branch_name
```

When you're done with your adjustments, you can publish the branch to `develop` and `master` by running any of the below commands on a checked out release branch, this will create two *pull request* on the server:
```console
$ git flow.release.publish
$ git frp
```

In cases when you're certain that no adjustments are needed before the release, you can perform the two above actions at the same time by running any of the below commands:
```console
$ git flow.release.all $release_branch_name
$ git fra $release_branch_name
```

### Other utilities

When you want to do a local cleanup and remove all the branches already merged to `develop` and `master`, you can run the below command:
```console
$ git general.clean
$ git gcl
```

When you want to force the application of the rules in the .gitignore file on an existing repository, you can run the below command:
```console
$ git general.ignore.force
$ git gif
```