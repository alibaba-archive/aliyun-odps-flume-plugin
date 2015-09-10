# ODPS Sink Plugin for Apache Flume
---

The ODPS sink streams events data into a ODPS table. It has the following features:

- Map structured data to corresponding columns in the ODPS table.
- Support partition table, create partition automatically if not exists.
- Currently only support delimited text data.
- Highly customizable.
- Compatible with all the features of Flume, such as fan-in and fan-out flows, contextual routing and backup routes (fail-over) for failed hops.

**NOTE: For non-developer users, please goto [WIKI (click here)](http://github.com/aliyun/aliyun-odps-flume-plugin/wiki/home).**

## Getting Started
---

### Requirements

To get started using this plugin, you will need three things:

1. JDK 1.6 or later (JDK 1.7 recommended)
2. Apache Maven 3.x  
3. Flume-NG 1.x  (*[Home Page](https://flume.apache.org/index.html)*)

### Clone and Build the Package

Clone the project from gitlab:

```
$ git clone git@github.com:aliyun/aliyun-odps-flume-plugin.git
```

Use maven to build the package:

```
$ cd aliyun-odps-flume-plugin/
$ mvn clean package -DskipTests
```

Wait until building success, the plugin will be now in the folder **aliyun-odps-flume-plugin/target/odps_sink/**.

### Use the Sink in Flume

Move the plugin into the plugin directory of Flume (i.e., the folder **plugins.d/** under the Flume installation directory). If the plugin directory does not exist, create it at first:

```
$ mkdir {YOUR_FLUME_DIRECTORY}/plugins.d
$ mv target/odps_sink/ {YOUR_FLUME_DIRECTORY}/plugins.d/
```

The ODPS sink should be available for Flume now. You can use this sink by set the type of the Flume sink to **com.aliyun.odps.flume.sink.OdpsSink**. Details about the configure paramters of the ODPS sink are listed in [Sink Paramters](http://github.com/aliyun/aliyun-odps-flume-plugin/wiki/sink-parameter).

## Tutorial
---

Following are some examples that use Flume along with this plugin to upload structured log data to ODPS table. This tutorial is designed for the ODPS users who had not used Flume before, and will illustrate the basics about how to use Flume to upload streaming data into ODPS.

- [Basic example](http://github.com/aliyun/aliyun-odps-flume-plugin/wiki/basic-example)
- [Custom partition values with event header](http://github.com/aliyun/aliyun-odps-flume-plugin/wiki/custom-partition)
- [Multiplexing the flow](http://github.com/aliyun/aliyun-odps-flume-plugin/wiki/multiplexing)

## Useful Links
---

- [Flume User Guide](https://flume.apache.org/FlumeUserGuide.html)

## Authors && Contributors
---

- [Yang Hongbo](https://github.com/hongbosoftware)
- [Tian Li](https://github.com/tianliplus)
- [Li Ruibo](https://github.com/lyman)

## License
---

licensed under the [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0.html)
