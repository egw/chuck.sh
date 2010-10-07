curl -Ls 'http://4q.cc/index.php?pid=fact&person=chuck' | \
    perl -ln -0x00 -e 'print $1 if m#"factbox">\s*(.*?)<#s;' | \
    perl -ple 's/\&quot;/"/g;'
