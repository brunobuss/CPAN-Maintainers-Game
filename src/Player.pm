package Player;
use Moose;
use Card;

#The player name.
has 'name' => (
        is => 'ro',
        isa => 'Str',
        required => 1,
);

#This players gameboard, with his cards.
has 'board' => (
        is => 'ro',
        isa => 'Gameboard',
        required => 1,
);

has 'hand' => (
        is => 'rw',
        isa => 'ArrayRef[Card]',
);

has 'hand_size' => (
        is => 'rw',
        isa => 'Int',
        required => 1,
);

sub add_card {
    my $self = shift;
    my $card = shift;
    
    push @{$self->hand}, $card;
}

42