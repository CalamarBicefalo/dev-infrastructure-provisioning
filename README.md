
This simple projects provides bootstrap to provision MacOS workstations with
basic tools as well as a MacOs as a CI using concourse. The ansible playbook will:

- Install pairing tools (git-duet)
- Install basic encryption tools (git-crypt)
- Propagate SSH keys and DNS config
- Install and run concourse in docker-compose setup
- Provides bootstrap for docker image that could be used in concourse
- Provide means to automate docker image deployment

In order to get started:

0. Configure `ci/docker-images/concourse-worker/deploy.sh` and set the maintainer in the docker image.
    1. Deploy the docker image
1. Configure `provisioning/hosts`
2. Add hosts to `provisioning/roles/devs/files/hosts_config`
3. Add ssh hosts to `provisioning/roles/devs/files/ssh_config`
4. Configure `provisioning/roles/devs/files/.git-authors`
5. Paste team public keys in `provisioning/roles/common/files/public_keys`
6. [OPTIONAL] tweak `provisioning/roles/ci/files/docker-compose.yml`