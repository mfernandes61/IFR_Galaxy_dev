#!/bin/bash
# Run notebook server as public server on 'standard' port and do not run a local browser.
/usr/bin/ipython notebook --ip=0.0.0.0 --no-browser --port=8888
#
# Now run other software
# ** IN this case Galaxy Web Server **
/usr/bin/startup
