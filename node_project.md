# Node Project Commands

Remove *node_modules* folder:
```shell
# print
find . -name 'node_modules' -type d -prune
# delete
find . -name 'node_modules' -type d -prune -exec rm -rf '{}' +
```