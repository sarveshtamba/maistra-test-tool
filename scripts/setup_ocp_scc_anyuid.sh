#!/bin/bash

oc new-project bookinfo
oc new-project foo
oc new-project bar
oc new-project legacy
oc new-project exclude-outboundports-annotation

oc adm policy add-scc-to-user anyuid -z default -n bookinfo
oc adm policy add-scc-to-user anyuid -z bookinfo-ratings-v2 -n bookinfo
sleep 5