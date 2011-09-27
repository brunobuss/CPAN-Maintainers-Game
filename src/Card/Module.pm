package Card::Module;
use Moose;

extends 'Card';

#What color set this card belongs to.
has 'set' => (
        is => 'ro',
        isa => 'Card::Set',
        required => 1,
);

42;
