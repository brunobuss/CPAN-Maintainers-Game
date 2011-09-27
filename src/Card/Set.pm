package Card::Set;
use Moose;

has 'name' => (
        is => 'ro',
        isa => 'Str',
        required => 1,
);

has 'color' => (
        is => 'ro',
        isa => 'Str', #TODO: Change for something specific to RGB
        required => 1,
);

has 'patch_value' => (
        is => 'ro',
        isa => 'ArrayRef[Int]',
        required => 1,
);

42;