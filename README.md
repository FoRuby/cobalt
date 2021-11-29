Cobalt

Copy Makefile to your working repo. And try to call `make help` to check existing commands


If you use development through docker container, then you need add shared volume:
```dockerfile
volume:
    - ~/my_projects/cobalt:/cobalt
```

The file structure should be as follows:

```
- app
  - Dockerfile
  - docker-compose.yml
  - ...
- cobalt
  - makefiles
    - ...
```
