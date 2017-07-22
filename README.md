# **zookeeper**
___

### Description
___

This image runs the official [*Apache ZooKeeper*](https://zookeeper.apache.org/) on a Centos Linux distribution.

The *latest* tag of this image is build with the [latest stable](https://zookeeper.apache.org/releases.html) release of Apache ZooKeeper on Centos 7.

You can pull it with:

    docker pull parrotstream/zookeeper


You can also find other images based on different Apache Hadoop releases, using a different tag in the following form:

    docker pull parrotstream/zookeeper:[zookeeper-release]


For example, if you want Apache ZooKeeper release 3.4.8 you can pull the image with:

    docker pull parrotstream/zookeeper:3.4.8


Run with Docker Compose:

    docker-compose -p parrot up

Setting the project name to *parrot* with the **-p** option is useful to share the named data volumes created by containers started with other Parrot docker-compose.yml configurations.

### Available tags:

- Apache ZooKeeper 3.5.3 ([3.5.2](https://github.com/parrot-stream/docker-zookeeper/blob/3.5.3/Dockerfile), [latest](https://github.com/parrot-stream/docker-zookeeper/blob/latest/Dockerfile))
- Apache ZooKeeper 3.4.8 ([3.4.8](https://github.com/parrot-stream/docker-zookeeper/blob/3.4.8/Dockerfile))
