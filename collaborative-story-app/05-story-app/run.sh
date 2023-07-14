docker run -it \
-v "$(pwd):/home/app" \
-p 8000:80 \
-e PORT=80 \
nizarsayad/story_webapp