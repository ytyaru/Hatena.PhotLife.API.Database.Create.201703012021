.mode tabs
.import ./Contents_Movies.tsv Contents
UPDATE Contents SET Content = NULL WHERE Content = '\N';
