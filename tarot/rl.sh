cat shadow_work.tsv | sed 1d | perl -e "srand; rand(\$.) < 1 && ( \$line = \$_ ) while <>; print \$line"
