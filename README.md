# airflow-demo

Local development environment for Airflow utilising Airflow's official docker
images.

## Dependencies

This project is intended to be run within a Unix OS or WSL2, this is not 
by desire but by necessity as most of Airflow's documentation assumes a Unix
based operating system.

- [Docker](https://docs.docker.com/get-docker/)

## Usage

Ensure that you have docker running and that it is accessible from your terminal.

Run `make init` which will initialise the Airflow docker containers.

Run `make run` to start the project, which will spawn an airflow web server
at http://localhost:8080.

## Development

Dags you're developing should be kept in the `dags/` folder as these will be
mounted to the Airflow docker containers.

If you're new to Airflow, have a good read of
[Astronomer's Airflow concepts](https://docs.astronomer.io/learn/category/airflow-concepts)
because it'll provide you a good understanding of Airflow's capabilities,
and also provide some best practice guides. It's important to have a set of
consistent best practice rules to follow, and best to use what's already written,
this saves us time defining our own rules and ensures consistency across a codebase.

## Purpose

The intention for this project is to serve as a quick way to initialise Airflow
and develop pipelines locally, without having to connect to cloud compute or 
storage. Agile development requires quick development loops, making changes to
code and being able to immediately see the results is critical. This is not possible
if you're required to run even development workloads remotely.

Ideally, this repository should have guidance for seamless local development through
to production deployments, but at the moment I'm just working out how to get local
development working.

Eventually I intend to make use of environment variables
to determine if the user is running on local or remote compute, and seamlessly transition
any connection strings to make use of cloud resources. This will require some level
of intentionality on the part of the developer, ensuring data sources and compute
connection strings are parameterised, however I have not explored this idea further.
It's clear how to do this using a tool like Dagster, but I have not yet seen an example
for Airflow.

## Resources

- [Astronomer Airflow concepts](https://docs.astronomer.io/learn/category/airflow-concepts)
    - [Intro to Airflow DAGs](https://docs.astronomer.io/learn/dags)
    - [DAG best practices](https://docs.astronomer.io/learn/dag-best-practices)
    - [Manage Airflow code - project structure](https://docs.astronomer.io/learn/managing-airflow-code)
- [Airflow docs: Running Airflow in Docker](https://airflow.apache.org/docs/apache-airflow/stable/howto/docker-compose/index.html),
    in case you run into issues running this project.
- [How to Deploy Airflow From Dev to Prod Like A BOSS](https://www.youtube.com/watch?v=kvsAwLLA9P4),
    inspiration for creating an easy to run developer environment.

## Todo

- [ ] Remove demo dags from Airflow

