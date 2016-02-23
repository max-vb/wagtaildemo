#!/bin/bash
ERR_NO=0
cd {{WT_HOME}}/{{PROJ_NAME}} && source ./venv/bin/activate
for i in $(cat  requirements.txt|egrep -v '^$|^#'); do
  pip install $i
  ERR_NO=$((ERR_NO + $?))
done

exit $ERR_NO
