#!/bin/bash

for photo_path in $(find docs/photos -name "img*.jpg")
do
  thumb_path=${photo_path/img/thumb}
  if [ ! -z "${thumb_path}" -a "${thumb_path}" != " " ] &&
    [ ! -f "${thumb_path}" ]; then
      sips -Z 200 "${photo_path}" --out "${thumb_path}"
  else
    echo "[skip] ${photo_path}"
  fi
done
