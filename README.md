# Docker Riemann Dash HTTP dashboard

This docker image runs the latest ```https://github.com/aphyr/riemann-dash``` release.
I could use ```https://hub.docker.com/r/davidkelley/riemann-dash/``` but I don't like neither defaults in production and also changing example file in place.

## Clone

```git clone https://github.com/include/docker-riemann-dash.git```

## Build

```docker build -t include/docker-riemann-dash docker-riemann-dash/.```

## Running / Burning config file via dockerize

```docker run -d -e HOST=<HOST> -e PORT=<PORT> -p <PORT>:<PORT> include/docker-riemann-dash```

**Example**

```docker run -d -e HOST=0.0.0.0 -p 4567:4567 include/docker-riemann-dash```

Default ```HOST=0.0.0.0``` and ```PORT=4567``` will be used if you don't define them, but don't forget to bind docker to it.

Or if you have any AWS S3 bucket where you can store your dashboards, just set your ```S3_BUCKET```, ```AWS_ACCESS_KEY_ID``` and ```AWS_SECRET_ACCESS_KEY``` environment variables.

```sh
docker run -d -e HOST=0.0.0.0                                  \
           -e PORT=8080                                        \
           -p 8080:8080                                        \
           -e S3_BUCKET=devops-configs                         \
           -e AWS_ACCESS_KEY_ID="${AWS_ACCESS_KEY_ID}"         \
           -e AWS_SECRET_ACCESS_KEY="${AWS_SECRET_ACCESS_KEY}" \
           include/docker-reimann-dash
```

## Fun

Point your browser to ```http://<IPADDRESS>:8080```. Don't forget to change Riemann server address.
