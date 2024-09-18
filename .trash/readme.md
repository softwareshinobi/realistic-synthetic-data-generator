# Synner

Synner is a tool that helps users generate real-looking synthetic data by visually and declaratively specifying the 
properties of the dataset such as each field’s statistical distribution, its domain, and its relationship to other fields. 
It provides instant feedback on every user interaction by updating multiple visualizations of the generated dataset and 
even suggests data generation specifications from a few user examples and interactions. Synner visually communicates 
the inherent randomness of statistical data generation.

![screenshot](https://github.com/huda-lab/synner/blob/resources/synner-ui-sigmod.png)

## Publications

**[Is this Real? Generating Synthetic Data that Looks Real](https://dl.acm.org/doi/10.1145/3332165.3347866)**
<br/>
<span style="font-size:80%">Miro Mannino, Azza Abouzied - UIST'19</span>

**[Synner: Generating Realistic Synthetic Data](https://dl.acm.org/doi/abs/10.1145/3318464.3384696)**
<br/>
<span style="font-size:80%">Miro Mannino, Azza Abouzied - SIGMOD'20</span>

## Videos

[Demo video](https://www.youtube.com/watch?v=5LuHyJsKY3I)

[Short Demo video](https://www.youtube.com/watch?v=dS6dS5JdNr8)

[SIGMOD'20 - Demo session](https://youtu.be/2LaLpc2r1U4)

## Repository Content

This repository contains:

Synner's source code and the datasets we used for our publications.

## How to run Synner

Synner can be run as a server, which also provides the user interface, or as a command line interface application.

### Running the server

Synner server can be run by launching the main static method in `edu.nyu.dtl.synner.SynnerServerApplication`.
This method will run Synner's server as a Spring Boot application in port 5042.

#### Running using Docker

To build the image execute:

```bash
./build-docker-image.sh
```

To run the image:

```bash
./run-docker-image.sh
```

### Command line interface

Synner can be launched from the command line interface with Java by using the main static method in 
class `edu.nyu.dtl.synner.core.Main`

This method accepts a path of a JSON file as a console argument, where the generation specification script is saved.

For example:

```bash
  java -classpath "..." edu.nyu.dtl.synner.core.Main my-specifications.json
```

This generation specification script can be saved from the User Interface with "Script -> Save"

### Building from source

To build the back end:

```bash
cd /path/to/synner
mvn clean package
```

To build the front-end:

```bash
cd /path/to/synner/synner-server/src/main/resources/static
bower install
npx sass main.scss main.css
```

This can either be launched directly from the `src/main/` with:

```bash
cd /path/to/synner/synner-server/src/main/resources/static
npm run live-server
```

Or it can be run using the Synner server running with Spring Boot.
