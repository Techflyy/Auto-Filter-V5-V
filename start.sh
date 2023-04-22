if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Techflyy/Auto-Filter-V5-V.git /Auto-Filter-V5-V
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto-Filter-V5-V
fi
cd /Auto-Filter-V5-V
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
