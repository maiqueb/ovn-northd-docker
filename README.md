This directory contains a Dockerfile and scripts to run ovn-northd
and the Northbound and Southbound databases as a docker container
for easy development.

you can just simply run ./go.sh if you want to pull from the
docker.io registry, or you can run ./devel-go.sh if you want
to build locally and run it.

You can also do it manually with:

```bash
docker run -p 6641:6641/tcp -p 6642:6642/tcp -d --name ovn-northd mangelajo/ovn-northd
```

If you want to see the traces an logs

```bash
docker logs -f ovn-northd
```
