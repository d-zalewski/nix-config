# nix-config

## Using `just` for Nix-Darwin Configuration

This repository uses [`just`](https://github.com/casey/just) as a command runner to simplify common Nix and Nix-Darwin tasks. To use the commands, ensure you have `just` installed:

```sh
brew install just
```

Run any of the tasks by executing:

```sh
just <task>
```

If you run `just` with no arguments, it will default to the `switch` task (see below).

## justfile Sections Explained

### macOS Section

- **build**: Builds the Nix-Darwin system configuration for the current host, but does not switch to it.
  ```sh
  just build
  ```
  You can pass a different host or flags if needed:
  ```sh
  just build target_host=myhost flags="--option"
  ```

- **trace**: Builds the configuration with the `--show-trace` flag for debugging errors.
  ```sh
  just trace
  ```

- **switch**: Builds and switches to the new Nix-Darwin configuration for the current host. This is the default when running `just` with no arguments.
  ```sh
  just switch
  # or simply
  just
  ```

### Garbage Collection Section

- **gc**: Cleans up old generations and runs garbage collection on the Nix store. By default, it keeps the last 5 generations, but you can specify a different number:
  ```sh
  just gc
  just gc generations=10
  ```

This helps free up disk space by removing unused packages and system generations.
