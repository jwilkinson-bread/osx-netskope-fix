# osx-netskope-fix

1. Clone the repo:

    ```shell
    git clone https://github.com/jwilkinson-bread/osx-netskope-fix.git
    ```

2. Patch Python and Git with one of the following methods:

    **OpenSSL Method:**

    Should work as long as OpenSSL is installed (requires Apple Dev Tools)

    ```shell
    cd openssl_method
    ./netskope.sh
    ```

    **Local Netskope Instance Method:**

    Assumes you have netskope certificates available installed in your system keychain.

    ```shell
    cd local_method
    ./netskope.sh
    ```

3. Test `dbt deps` and `git clone` (and/or `git push`)

4. Setup `awscli` with LEAPP: https://github.com/getbread/de_tools?tab=readme-ov-file#setting-up-aws-cli
