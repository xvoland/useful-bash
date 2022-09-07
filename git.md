# Git
_useful features for Git_

## Run git pull over all subdirectories
```bash
ls | xargs -I{} git -C {} pull
```

To do it in parallel:
```bash
ls | xargs -P10 -I{} git -C {} pull
```

```bash
find . -name ".git" -type d | sed 's/\/.git//' |  xargs -P10 -I{} git -C {} pull
```