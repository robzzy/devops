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
