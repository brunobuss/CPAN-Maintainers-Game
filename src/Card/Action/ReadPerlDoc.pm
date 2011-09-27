package Card::Action::ReadPerlDoc;
use Moose::Role;

#Buy buy_qnty cards.
has 'buy_qnty' => (
        is => 'rw',
        isa => 'Int',
);

sub action {
} 

42;