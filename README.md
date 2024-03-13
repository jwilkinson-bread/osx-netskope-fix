# osx-netskope-fix

1. Clone the repo:

```shell
git clone https://github.com/jwilkinson-bread/osx-netskope-fix.git
```

2. Pick a method and try it:

### OpenSSL Method:

Should work as long as OpenSSL is installed (requires Apple Dev Tools)

```shell
cd openssl_method
./netskope.sh
```

### Local Netskope Instance Method:

Assumes you have netskope certificates available installed in your system keychain.

```shell
cd local_method
./netskope.sh
```

3. See if `dbt deps` works!

