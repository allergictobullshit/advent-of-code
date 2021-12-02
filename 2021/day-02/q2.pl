open my $handle, '<', 'input.txt';
chomp(my @lines = <$handle>);
close $handle;

my $depth = 0;
my $horizontal = 0;
my $aim = 0;

foreach (@lines) {
    if (index($_, "forward") != -1) {
        my $chr = chop($_);
        $horizontal += $chr;
        $depth += ($chr*$aim);
    }
    elsif (index($_, "down") != -1) {
        $aim += chop($_);
    }
    elsif (index($_, "up") != -1) {
        $aim -= chop($_);
    }
}

my $total = $horizontal*$depth;

print "$total\n";