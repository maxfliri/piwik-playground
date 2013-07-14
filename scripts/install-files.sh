FILESDIR=/vagrant/files
find "${FILESDIR}" -type f | while read f; do 
  dest=$(echo $f | sed "s|^${FILESDIR}||")
  echo "Install ${dest}..."
  cp "$f" "$dest"
done
