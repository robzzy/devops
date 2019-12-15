# Build Circleci Orbs to reuse circleci config.

Official Document: [https://circleci.com/docs/2.0/orb-author/](https://circleci.com/docs/2.0/orb-author/)

## My own process

### Register organization
I register a organization first, please note that organization display name is useless for create namespace in circleci orb.

### Install CLI circleci
Seems like I use brew to install this.
```
brew install circleci
```

### Circleci API Token
Go to circleci app and generate a token in UserSettings.

### Import my repos to my organization
When I create mysql organization I tried to create namespace directly, but I failed, so I import all my repos to [my-org], then I create namespace successfully.
```
circleci namespace create [my-namespace] github [my-org] 
```

### Create config and publish it
```
# config.yaml
version: 2.1
description: "Circleci orb for services"

# validate
circleci orb validate orbs/service-base.yaml

# publish dev
circleci orb publish service-base.yaml woshizzy/service-base@dev:first

# publish
circleci orb publish promote  woshizzy/service-base@dev:first patch

# source
circleci orb souce woshizzy/service-base@volatile
```

## Introduction about orb resource

### Basic orb object
these are some basic attributes for orb obejct:
> description: use to declare the obejct's function.

> parameters: use to inject attributes to obejct, has `type` and `default` to declare.

#### executors
Setup runtime for jobs to run.
```
executors:
    python:
        description:
        parameters:
        docker:
```
#### commands
Some step group, commands is basic unit in my orb to run every task.
```
commands:
    first_task:
        description:
        parameters:
        steps:
```
#### jobs
Reuse resource for orb, need specify executor and also can invoke commands to finish his own task.
```
jobs:
    test:
        description:
        parameters:
        executor: python
        steps:
            - first_task
```