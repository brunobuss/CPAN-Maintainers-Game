package Card::Action::Release;
use Moose::Role;

#This action make your opponents pays the value indicated by your modules that has one of the two color sets.
has 'set1' => (
        is => 'rw',
        isa => 'Card::Set'
);

has 'set2' => (
        is => 'rw',
        isa => 'Card::Set'
);

sub action {
} 

42;