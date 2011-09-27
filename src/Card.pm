package Card;
use Moose;

#The card name.
has 'name' => (
        is => 'ro',
        isa => 'Str',
        required => 1,
);

#This is the "Patch" value of the card.
has 'patch_value' => (
        is => 'ro',
        isa => 'Int',
        required => 1,
);

42;