# --
# Kernel/Language/de_DK4OTRSQuickDelete.pm - translation file
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::de_DK4OTRSQuickDelete;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # SysConfig
    $Self->{Translation}->{'Frontend module registration for the agent interface.'} = 'Frontend-Modulregistrierung im Agent-Interface.';
    $Self->{Translation}->{'Shows a link in the menu to quick delete a ticket in the ticket zoom view of the agent interface.'} = 'Zeigt dem Agenten im Ticketmenü einen Link an, um Tickets schnell zu löschen.';
    $Self->{Translation}->{'Shows a link in the menu to quick delete a ticket in every ticket overview of the agent interface.'} = 'Zeigt dem Agenten in jeder Ticketansicht einen Link an, um Tickets schnell zu löschen.';
    $Self->{Translation}->{'Required permissions to use the delete ticket screen in the agent interface.'} = 'Benötigte Berechtigung um die Löschfunktion zu nutzen.';
    $Self->{Translation}->{'Defines the default delete queue for quick delete.'} = 'Definiert die Standardwert-Queue für die Funktion QuickDelete.';

    # Frontend
    $Self->{Translation}->{'Ticket Delete'}      = 'Ticket löschen';
    $Self->{Translation}->{'Quick Delete'}       = 'Ticket löschen';
    $Self->{Translation}->{'Delete this ticket'} = 'Dieses Ticket löschen';

    $Self->{Translation}->{'You dont have permissions to delete tickets.'} = 'Sie haben nicht genügend Rechte um Tickets zu löschen.';

    return 1;
}

1;
