#!/bin/sh

docker run -p 6641:6641/tcp -p 6642:6642/tcp -d --name ovn-northd mangelajo/ovn-northd
