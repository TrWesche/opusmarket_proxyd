# Docker

- May want to A - Downgrade the version of node being used to match development version (12.15) or update Node version and related dependencies

- Local Run Command (CLI)
  - docker run -d -it -p 3000:80 --name opus-fe-test opusmarket-fe-prod:1.0

- Command Flow (Build & Push to AWS)
  - Build Image Command (CLI) - Note, Update Version:
    - docker build -t opusmarket-fe-prod:1.0 .
    - docker build -t opusmarket-fe-dev:1.0 .
  - ReTag Image - Note, Update Version:
    - docker tag opusmarket-fe-prod:1.0 396065130747.dkr.ecr.us-east-2.amazonaws.com/opusmarket-fe-prod:1.0
    - docker tag opusmarket-fe-dev:1.0 396065130747.dkr.ecr.us-east-2.amazonaws.com/opusmarket-fe-dev:1.0
  - Push Tagged Image - Note, Update Version: 
    - docker push 396065130747.dkr.ecr.us-east-2.amazonaws.com/opusmarket-fe-prod:1.0