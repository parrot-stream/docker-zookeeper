# **zookeeper**
___

### Description
___

This image runs the official [*Apache ZooKeeper*](https://zookeeper.apache.org/) on a Centos Linux distribution.

It also runs [*Netflix Exhibitor*](https://github.com/Netflix/exhibitor.git) as a monitoring, backup/recovery, cleanup and visualization tool for ZooKeeper.

The *latest* tag of this image is build with the [latest stable](https://zookeeper.apache.org/releases.html) release of Apache ZooKeeper on Centos 7.

You can pull it with:

    docker pull mcapitanio/zookeeper


You can also find other images based on different Apache Hadoop releases, using a different tag in the following form:

    docker pull mcapitanio/zookeeper:[zookeeper-release]


For example, if you want Apache ZooKeeper release 3.4.8 you can pull the image with:

    docker pull mcapitanio/zookeeper:3.4.8


Run with Docker Compose:

    docker-compose -p docker up

Setting the project name to *docker* with the **-p** option is useful to share the named data volumes created by containers started with other docker-compose.yml configurations.

There are 3 named volumes defined:

- **zookeeper_conf** which points to ZooKeeper configuration directory
- **zookeeper_logs** which points to ZooKeeper log directory
- **zookeeper_data** which contains the ZooKeeper data and transaction logs

Once started you'll be able to read the Netflix Exhibitor url for your environment (plase note that the ip is non static!):

**Netflix Exhibitor url**:	http://172.17.0.3:8099

### Available tags:

- Apache ZooKeeper 3.5.2 ([3.5.2](https://github.com/mcapitanio/docker-zookeeper/blob/3.5.2/Dockerfile), [latest](https://github.com/mcapitanio/docker-zookeeper/blob/latest/Dockerfile))
- Apache ZooKeeper 3.4.8 ([3.4.8](https://github.com/mcapitanio/docker-zookeeper/blob/3.4.8/Dockerfile))
