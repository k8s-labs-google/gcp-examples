# Docker

This is a simple example of using multi-stage Docker builds. The bennefit is that you're able to add what you need to build the image (base image can be fat), but you ship the smallest app image possible to GCR to improve things like scaling and app deployment time.
