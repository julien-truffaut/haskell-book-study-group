# Study group


## Workflow

1. Fork the repository by clicking on the fork button on github
2. Clone **your** fork, e.g. here is [ashic](https://github.com/ashic)
```
git clone git@github.com:ashic/haskell-book-study-group.git
```
3. Add remote to upstream project
```
git remote add upstream git@github.com:julien-truffaut/haskell-book-study-group.git

# Verify the new remote named 'upstream'
git remote -v
```
4. Keep your fork up to date with latest exercises by fetching upstream
```
# Fetch from upstream remote
git fetch upstream

# Checkout your master branch and merge upstream
git checkout master
git merge upstream/master
```

We will only put exercises in the upstream project, if you want to share answers please push them in your own fork.


## Build with Stack

install [stack](https://docs.haskellstack.org/en/stable/README/)

```
cd ch04
// open src/Lib.hs in your favorite editor

stack build // to compile
stack ghci  // to run repl
stack test  // to run tests
```