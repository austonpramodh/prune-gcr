# prune-gcr
![Tests](https://github.com/expo/prune-gcr/workflows/Tests/badge.svg)

A little script to prune old Docker images from the Google Container Registry.

## Running the script

The script requires Python 3.9. You can run it with `./prune-gcr <repository>`.

```
usage: prune-gcr [-h] [--older-than CUTOFF]
                 [--keep-at-least N]
                 [--filter-tags EXP]
                 repository

Prune old Docker images from the Google Container Registry. Example usage:
prune-gcr www

positional arguments:
  repository           full name of the GCR image repository (as in:
                       gcr.io/project/repository)

optional arguments:
  -h, --help           show this help message and exit
  --older-than CUTOFF  prune images older than CUTOFF. Must be formatted as
                       YYYY-MM-DD. Uses GCP's time zone. Defaults to 90 days
                       ago.
  --keep-at-least N    keep at least N images, even if they are older than the
                       cutoff date. Defaults to 50.
  --filter-tags EXP    only prune images with the tags matching the regular 
                       expression
```
