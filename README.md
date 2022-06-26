# Fadecandy Server Docker Image

***IMPORTANT:** The Fadecandy Project appears to be disontinued and shouldn't be used for new LED projects. This is for the few people like me, who still have some Fadecandies lying around and want to host the server in a docker container.*

This is an unofficial Docker image for the [Fadecandy Server](https://github.com/scanlime/fadecandy/tree/master/server), originally written by Micah Elizabeth Scott aka [scanlime](https://github.com/scanlime).

## Example
```bash
docker run -p 7890:7890 --device=/dev/bus/usb/001/001 fcserver
```
You can specify Fadecandy devices using the `--device` option. The container needs at least one USB device attached in order to start.

## Using a custom config
To pass a custom config to the container use the following option:
```bash
-v path/to/your/config.json:/var/fadecandy/config.json
```
