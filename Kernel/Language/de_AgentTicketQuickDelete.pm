# --
# Kernel/Language/de_AgentTicketQuickDelete.pm - translation file
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::de_AgentTicketQuickDelete;

use strict;
use warnings;

sub Data {
    my $Self = shift;

    $Self->{Translation}->{'Quick Delete'} = 'Ticket löschen';
    $Self->{Translation}->{'Delete this ticket'} = 'Dieses Ticket löschen';
	$Self->{Translation}->{'Shows a link in the menu to quick delete a ticket in the ticket zoom view of the agent interface.'} = 'Zeigt dem Agenten im Ticketmenü einen Link an, um Tickets schnell in die Junk Queue zu verschieben.';
	$Self->{Translation}->{'Defines the default delete queue for quick delete.'} = 'Definiert die Standardwert-Queue für die Funktion QuickDelete.';
	  
    return 1;
}
1;


