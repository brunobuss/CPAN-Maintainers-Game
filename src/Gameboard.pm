package Gameboard;
use Moose;

#Cards that are deposited on "patch" bank.
has 'patch_stack' => (
        is => 'rw',
        isa => 'ArrayRef[Card]',
);

#Modules on this gameboard.
has 'modules' => (
        is => 'rw',
        isa => 'ArrayRef[Card]',
);

42;