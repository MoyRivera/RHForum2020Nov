#!/bin/bash
HOSTS=`curl http://192.168.110.200/ 2>/dev/null | awk -vORS=, '{print $1}' | sed 's/,$/\n/g'`
echo '
{
    "all": {
         "hosts": ['${HOSTS}'],
    }
}
'
