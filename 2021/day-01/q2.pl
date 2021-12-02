open my $handle, '<', 'input.txt';
chomp(my @lines = <$handle>);
close $handle;

my $array_length = @lines;
my @count = 0;

for (my $i=3; $i<$array_length; $i++ ) {
    if ($lines[$i]+$lines[$i-1]+$lines[$i-2]>$lines[$i-1]+$lines[$i-2]+$lines[$i-3]) {
        $count++;
    }
}

print "$count\n";