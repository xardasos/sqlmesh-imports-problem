Reproducer project for the inconsistent behavior of sqlmesh imports when using macros, [affected model](sqlmesh-example/models/full_model.sql).

### Steps to reproduce
Execute `sqlmesh plan`.

Using docker:
1. docker build -t local/sqlmesh_imports_problem .
2. docker run -it --entrypoint=/bin/bash local/sqlmesh_imports_problem
3. `sqlmesh plan`

### Current behavior
```
Error: Failed to load model definition at '/app/models/full_model.sql'.
cannot import name '_generate_next_value_' from 'enum' (/usr/local/lib/python3.12/enum.py)
```
Commenting out the usage of EITHER `macro1` or `macro2` (both macros use the same import)
in the [affected model](sqlmesh-example/models/full_model.sql) makes the import error disappear.
