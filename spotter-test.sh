#!/bin/bash
set -e

if [[ ! -f ./glamoroustoolkit ]]
then
   echo must cd to GlamorousToolkit* installation
   exit 1
fi

INSTALL=""
if [[ "$(which convert)" == "" ]]
then
    INSTALL+=" imagemagick"
fi
if [[ "$(which xvfb-run)" == "" ]]
then
    INSTALL+=" xvfb"
fi
if [[ "$(which xwd)" == "" ]]
then
    INSTALL+=" x11-apps"
fi
if [[ "$INSTALL" != "" ]]
then
    sudo apt-get update
    sudo apt-get install -y $INSTALL
fi

cat > temp-open-spotter.st << __EOF__
    world := GtWorld open.
    world enqueueTask: (BlTaskAction new action: [
      world root children first fireEvent: GtSpawnSpotter new. ]).
__EOF__

rm -f xvfb.log spotter.png
xvfb-run -a -e xvfb.log /bin/bash -c \
    '   \
        ./glamoroustoolkit GlamorousToolkit.image st temp-open-spotter.st --no-quit --interactive \
        &  GT=$! \
        && sleep 4 \
        && xwd -root -out spotter.xwd \
        && kill $GT \
        && convert spotter.xwd spotter.png \
        && file spotter.png \
    '
rm temp-open-spotter.st spotter.xwd
if [[ -s xvfb.log ]]
then
    echo
    echo xvfb errors in xvfb.log:
    cat xvfb.log
else
    rm xvfb.log
fi

echo
echo to view:
echo display spotter.png
