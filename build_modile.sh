Rime_IOS=Rime
rm -rf $Rime_IOS
mkdir -p $Rime_IOS/cn_dicts

cp  ./custom_phrase.txt ./$Rime_IOS
cp  ./default.yaml ./$Rime_IOS/default.yaml
cp  ./installation.yaml ./$Rime_IOS
cp  ./liangfen.dict.yaml ./$Rime_IOS
cp  ./liangfen.schema.yaml ./$Rime_IOS
cp  ./melt_eng.dict.yaml ./$Rime_IOS
cp  ./melt_eng.schema.yaml ./$Rime_IOS
cp  ./rime_ice.dict.yaml ./$Rime_IOS/rime_ice.dict.yaml
cp  ./rime_ice.schema.yaml ./$Rime_IOS/rime_ice.schema.yaml
cp  ./rime.lua ./$Rime_IOS
cp  ./squirrel.yaml ./$Rime_IOS
cp  ./symbols_caps_v.yaml ./$Rime_IOS
cp -r ./lua ./$Rime_IOS
cp -r ./opencc ./$Rime_IOS
cp -r ./others ./$Rime_IOS
cp -r ./en_dicts ./$Rime_IOS
cp ./wubi* ./$Rime_IOS

ls cn_dicts | while read line
do
  cat cn_dicts/$line | \
    sed '/^[^#-.a-zA-Z0-9]\{6,\}/ d'| \
    sed '/^[^#-]\s+[^#-.a-zA-Z0-9]$/d'  | \
    sed '/[[:blank:]][0-9]$/d' > \
      $Rime_IOS/cn_dicts/$line
done
