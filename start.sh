echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/DalinMathew/Wanda-Maximoff-Bot /Wanda-Maximoff-Bot
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/DalinMathew/Wanda-Maximoff-Bot -b $BRANCH /Wanda-Maximoff-Bot
fi
cd /Wanda-Maximoff-Bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
