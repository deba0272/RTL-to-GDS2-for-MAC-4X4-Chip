#!/usr/bin/perl

# Ensure the LIBRARY directory exists before opening the file
open(OUT, ">LIBRARY/userdata.lib") or die "Cannot open LIBRARY/userdata.lib: $!";
print OUT "library(userdata) {\n";

while(<>) {
    chomp;
    # Skip empty lines or lines that don't follow the "name area" format
    if (/(.*?)\s+([\d\.]+)/) {
        my $cell = $1;
        my $area = $2;
        
        # REMOVED: tr/a-z/A-Z/ to keep names lowercase as per areas.txt

        print OUT <<EOD;
cell ($cell) {
    area : $area;
    cell_footprint : $cell;
}
EOD
    }
}

print OUT "}\n";
close(OUT);