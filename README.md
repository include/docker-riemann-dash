# Docker Riemann Dash HTTP dashboard

This docker image runs the latest ```https://github.com/aphyr/riemann-dash``` release.
I could use ```https://hub.docker.com/r/davidkelley/riemann-dash/``` but I don't like neither defaults in production and also changing example file in place.

## Clone

```git clone https://github.com/include/docker-riemann-dash.git```

## Build

```docker build -t include/docker-riemann-dash docker-riemann-dash/.```

## Configure

Right now config just edit and change```config.rb``` and rebuild this image.

## Run

```docker run -d -p 4567:4567 include/docker-riemann-dash```

## Fun

Point your browser to ```http://<IPADDRESS>:4567```. Don't forget to change Riemann server address.
