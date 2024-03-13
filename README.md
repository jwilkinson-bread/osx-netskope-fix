# osx-netskope-fix

This fixes OSX netskope compatability for python https requests and git.


1. Clone the repo:

    ```shell
    git clone https://github.com/jwilkinson-bread/osx-netskope-fix.git
    ```

2. Patch Python and Git with one of the following methods:


    ```shell
    ./netskope_fix.sh
    ```    

3. Restart zsh `exec zsh`

4. Test `dbt deps` and `git clone` (and/or `git push`)

5. Setup `awscli` with LEAPP: https://github.com/getbread/de_tools?tab=readme-ov-file#setting-up-aws-cli
