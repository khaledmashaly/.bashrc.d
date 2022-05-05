## Instructions

1. Create a `.bashrc.d` directory in the home directory.
    ```sh
    mkdir ~/.bashrc.d
    ```
1. Copy all `*.bashrc` scripts to the `.bashrc.d` directory.
1. Source all the `~/.bashrc.d/*.bashrc` scripts within the `~/.bashrc` script.
    ```sh
    for file in ~/.bashrc.d/*.bashrc;
    do
        source "$file"
    done
    ```