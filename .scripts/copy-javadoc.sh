rm -rf docs
mkdir -vp docs

for FILE in easyplugin-*; do

  if test -e "$FILE/target/site/apidocs/"; then

    DOC_NAME="${FILE:11}"
    mkdir -vp "docs/$DOC_NAME/"

    cp -vrf "$FILE/target/site/apidocs/*" "docs/$DOC_NAME/"

  fi

  echo "$FILE"

done

cp -vrf .documentation/javadoc/JAVADOC-README.md docs/README.md
cp -vrf .documentation/javadoc/index.html docs/index.html