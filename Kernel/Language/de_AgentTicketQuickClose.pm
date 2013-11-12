# --
# Kernel/Language/de_AgentTicketQuickClose.pm - translation file
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::de_AgentTicketQuickClose;

use strict;
use warnings;

sub Data {
    my $Self = shift;

    $Self->{Translation}->{'Quick Close'} = 'erfolgreich Schließen';
    $Self->{Translation}->{'Close this ticket'} = 'Dieses Ticket schließn';
	$Self->{Translation}->{'Shows a link in the menu to quick close a ticket in the ticket zoom view of the agent interface.'} = 'Zeigt dem Agenten im Ticketmenü einen Link an, um Tickets schnell erfolgreich zu schließen.';
	$Self->{Translation}->{'Defines the default close state for quick close.'} = 'Definiert den Standardwert-Status für die Funktion QuickClose.';
	  
    return 1;
}
1;


