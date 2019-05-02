# statsd-docker [![Build Status](https://travis-ci.org/ocadotechnology/statsd-docker.svg?branch=master)](https://travis-ci.org/ocadotechnology/statsd-docker)
Docker image which contains node and [statsd](https://github.com/etsy/statsd) only.
## Configuration/running
The command to run statsd is:
`node statsd-0.8.0/stats.js path/to/configurationfile.js`
An example configuration file is located in [exampleConfig.js](https://github.com/etsy/statsd/blob/master/exampleConfig.js), for Kubernetes deployments we supply this in a config map mounted as a volume.

To run this docker image:
`docker run -v /path/to/configfolder:/statsd-config ocadotechnology/statsd:sometag`
Note we don't push latest on this repository so check the releases list for available tags.

## Snyk Validation
This project can be set-up with snyk to monitor any vulnerabilities introduced through dependencies. To add this to your own snyk dashboard, fork this repository and replace the final two secure environment variables with: 
`SNYK_ORG=<your-org-name-here>` and 
`SNYK_TOKEN=<your-snyk-token-here>`
You can then add your own policy path if desired in a file named `.snyk`
