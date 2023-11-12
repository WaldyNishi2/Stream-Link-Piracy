if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/harshagoud/Kastapada-Brro.git /Kastapada-Brro
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Kastapada-Brro 
fi
cd /Kastapada-Brro
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
