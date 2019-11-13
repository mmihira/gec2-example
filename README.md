# gec2-example

Example of provisioning using gec2.<br>
In this example
- A new node tagged app is created.
- Docker and docker-compose is installed
- Showcases an example of templating a file

### Steps

- create a key pair names gec2_example on aws
- Set the env variable `GEC2_EXAMPLE_DEPLOY_SSH_PRIVATE_KEY_FILE_PATH` to where your key pair is located
- Set the env variable `GEC2_EXAMPLE_CRED_FILE_PATH` to the location where your aws credentials is located
- Run run.sh
