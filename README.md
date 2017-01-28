# Chef Client

This is a Docker image providing [Chef Client](https://downloads.chef.io/chef).

The Chef client automates your infrastructure by bringing nodes to their desired states with policies you provide as recipes.

## Build

```console
$ make build test
```

## Usage

Executing chef-client:

```console
$ docker run --rm -ti -v $HOME/.chef:/etc/chef chef-client:12.18.31 chef-client
```

## License

View [license information](https://downloads.chef.io/chef/stable/12.18.31/ubuntu/14.04/license) for the software contained in this image.
