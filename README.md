# statsd-docker
Docker image which contains node and [statsd](https://github.com/etsy/statsd) only.
## Configuration/running
The command to run statsd is:
`node statsd-0.8.0/stats.js path/to/configurationfile.js`
An example configuration file is located in [exampleConfig.js](https://github.com/etsy/statsd/blob/master/exampleConfig.js), for Kubernetes deployments we supply this in a config map mounted as a volume.

To run this docker image:
`docker run -v /path/to/configfolder:/statsd-config ocadotechnology/statsd`
