.mode tabs
.import ./Contents_Images.tsv Contents
UPDATE Contents SET Content = NULL WHERE Content = '\N';
