# Environment variables added at codebuild

## Proposal

https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec.env.secrets-manager

Add ARGS and ENV to Docker Containers at build time, and use either secrets manager or parameter store from AWS to store the secure strings/keys. This will make environment variable additions language agnostic, so we can adopt as a company across the board. 

THe only thing would be is that we might have to create two different builds for ST and Prod, which builds code be mitagated if teams started using an ST and PROD branch for deployments in bitbucket, versus using main/master.

This porposal also makes the heml charts smaller and simplier than before, by doing the work of adding env at container build, not cluster build. 

It is also simple to add more environment variables or change them, making aws the one stop shop, instead having to deal with k8s secrets, or a program specific .env or config file, which is bad for security, as things sit in plaintext that way
