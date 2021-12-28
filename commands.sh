shrinkVideo(){
  ffmpeg -i $1 -vcodec libx264 -crf 28 -pix_fmt yuv420p output.mp4;
}

externalMounted(){
  HELLO=$(ls $EXTERNAL | wc -l)
  if [[ $HELLO == 0 ]]; 
  then echo false;
  else echo true;
  fi
}

mountExternal(){
  if [ $(externalMounted) == false ];
  then 
    echo "mounting $EXTERNAL..."
    echo "$(udisksctl mount -b /dev/sda3)"
  fi
}

animove(){ # for moving animes from download folder
  mountExternal

  ANIMENAME=$1
  WORDS_TO_TRIM1=$2
  WORDS_TO_TRIM2=$3

  # for movies 
  if [[ "$ANIMENAME" == "movies" ]]
  then 
    for f in *.mp4; do mv -- "$f" "movies$f";
    done
  fi;

  ANIME_FOLDER_NAME="${ANIMENAME//_/ }"
  
  DIR="${EXTERNAL}/anime/anime/${ANIME_FOLDER_NAME}"

  mkdir "$DIR" 
  mv *"$ANIMENAME"* "$DIR"

  cd "$DIR"

  if [ -n "$WORDS_TO_TRIM2" ]
  then
  for f in *"$ANIMENAME"*; do mv -- "$f" "${f/$WORDS_TO_TRIM2/}"; done
  fi

  if [ -n "$WORDS_TO_TRIM1" ]
  then
  for f in *"$ANIMENAME"*; do mv -- "$f" "${f/$WORDS_TO_TRIM1/}"; done
  fi
  cd ..
#  mv "$ANIMENAME" "${ANIMENAME//_/ }"
#  while read WORDS_TO_TRIM; do
#      for f in *.mp4; do mv -- "$f" "${f/$WORDS_TO_TRIM/}"; done
#      if [ "$WORDS_TO_TRIM" = "done" ] 
#      then break
#      fi
#    done 
}

