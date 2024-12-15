If a specific order is crucial, use a sorted data structure like an array of key-value pairs:

my @sorted_pairs = sort { $a->[0] cmp $b->[0] } map { [$_, $hash{$_}] } keys %hash; 
foreach my $pair (@sorted_pairs) { print "$pair->[0]\n"; }