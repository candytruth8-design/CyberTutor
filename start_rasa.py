import os
from rasa.__main__ import main

os.environ["RASA_X_HOST"] = "0.0.0.0"
os.environ["RASA_PORT"] = os.environ.get("PORT", "5005")

main()
