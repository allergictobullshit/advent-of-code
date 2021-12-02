open my $handle, '<', 'input.txt';
chomp(my @lines = <$handle>);
close $handle;

my $depth = 0;
my $horizontal = 0;

foreach (@lines) {
    if (index($_, "forward") != -1) {
        $horizontal += chop($_);
    }
    elsif (index($_, "down") != -1) {
        $depth += chop($_);
    }
    elsif (index($_, "up") != -1) {
        $depth -= chop($_);
    }
}

my $total = $horizontal*$depth;

print "$total\n";