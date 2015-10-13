# Docker Riemann Dash HTTP dashboard

This docker image runs the latest ```https://github.com/aphyr/riemann-dash``` release.
I could use ```https://hub.docker.com/r/davidkelley/riemann-dash/``` but I don't like neither defaults in production and also changing example file in place.

## Clone

```git clone https://github.com/include/docker-riemann-dash.git```

## Build

```docker build -t include/docker-riemann-dash docker-riemann-dash/.```

## Running / Burning config file via dockerize

```docker run -d -e HOST=<HOST> -e PORT=<PORT> -p <PORT>:<PORT> include/docker-riemann-dash```

**Example:**

```docker run -d -e HOST=0.0.0.0 -e PORT=4567 -p 4567:4567 include/docker-riemann-dash```

## Fun

Point your browser to ```http://<IPADDRESS>:4567```. Don't forget to change Riemann server address.
