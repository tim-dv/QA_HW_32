cd test_folder/test_3
mkdir test_1 test_2 test_3
cd test_1
touch {t_1,t_2,t_3}.txt {t_4,t_5}.json
mkdir new_1 new_2 new_3
ls -la
cd ..
mv ./test_1/{t_1,t_2}.txt ./test_2