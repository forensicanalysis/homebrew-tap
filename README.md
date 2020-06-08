# Elementary installation

Elementary is available as a single binary that does not require installation. It can be used e.g. from a usb stick 
this way. However different installation options are available to make setup and updating of elementary easier. 

## Binary releases

The elementary executable can be downloaded from: https://github.com/forensicanalysis/elementary/releases

If it is placed within the systems PATH it can be run from any location on the system. 

*macOS prevents execution of downloaded unsigned binaries. In this case right click the elementary binary, select 
“Open”, confirm “Open”. Afterwards elementary can be run from the command line.*

## Install using brew (macOS and Linux)

If you have the [Homebrew](https://brew.sh/) package manager installed, you can install elementary using 

```
brew tap forensicanalysis/tap
brew install elementary
```

## Install using scoop (Windows)

If you have the [Scoop](https://scoop.sh/) package manager installed, you can install elementary using

```
scoop bucket add elementary https://github.com/forensicanalysis/homebrew-tap
scoop install elementary
```

<!--
## Install with Docker

```
docker run forensicanalysis/elementary
```
-->
