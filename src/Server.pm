package Server;
use Moose;
use Data::GUID;
use List::Util qw(shuffle);

use Player;
use Gameboard;

has 'players' => (
    is => 'rw',
    isa => 'HashRef[Player]',
);

has 'deck' => (
    is => 'rw',
    isa => 'ArrayRef[Card]',
);

sub start {
    my $self = shift;
    my $player_qty = shift;
    
    #TODO: Wait for player_qty players to connect.
    
    init_game($self);
    
    game_loop($self);
}

sub game_loop() {
    my $self = shift;
}

#Create game functions:
sub init_game {
    my $self = shift;
    my $params = shift;
    
    add_players($self, $params->{players});
    create_deck($self, $params->{deck_config_file});
}

sub add_players {
    my $self = shift;
    my $players = shift;
    
    $self->players({});
    foreach my $player (@{$players}) {
        my $guid = Data::GUID->new;
        
        $self->players->{$guid->as_string()}
            = new Player(name => $player,
                         board => new Gameboard(
                                                patch_stack => [],
                                                modules => [],
                                               ),
                         hand_size => 0);
        
        #TODO: Reply to $player with his GUID.
    }    
}

sub create_deck {
    my $self = shift;
    my $deck_config_file = shift;
    
    $self->deck([]);
    
    #TODO: Read and parse $deck_config_file and build a deck of cards.
    
    $self->deck( shuffle(@{$self->deck()}) );
}


#Game actions functions:

sub draw_card {
    my $self = shift;
    my $player_guid = shift;
    my $qty_draw = shift;
    
    my $player = $self->players->{$player_guid};
    
    while($qty_draw > 0) {
        
        my $card = shift @{$self->deck()};
        $player->add_card($card);
        
        #TODO: Communicate player what card he player.
        
        $qty_draw--;
    }
    
    #TODO: Communicate to other players the new hand size of this player.
}

sub put_card_on_bank {
    my $self = shift;
    my $player_guid = shift;
    my $card = shift;    
    
    #TODO: Verify if the players has the card.
    
    #TODO: Do something :P
}

sub play_card {
    my $self = shift;
    my $player_guid = shift;
    my $card = shift;
    
    #TODO: Verify if the players has the card.
    
    #TODO: Do something :P
}

42;