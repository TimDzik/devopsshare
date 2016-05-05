now=$(date +"%m_%d_%Y")
for x in {1..30}; do
    dizaine=$(( ($x/10)%10 ))
    unite=$(($x%10))
    zip ./devopsshared_$dizaine$unite/devopsshared_$dizaine$unite\_backup$now ./devopsshared_$dizaine$unite/devopsshared_$dizaine$unite\_file[135]*
    mv ./devopsshared_$dizaine$unite/devopsshared_$dizaine$unite\_backup$now.zip ./devopsshared_backup
done
zip -m ./devopsshared_backup/devopsshared_backup$now ./devopsshared_backup/devopsshared_*\_backup$now.zip
