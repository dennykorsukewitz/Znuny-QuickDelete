# --
# Copyright (C) 2019 Denny Korsukéwitz, https://github.com/dennykorsukewitz
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Modules::AgentTicketDK4ZnunyQuickDelete;

use strict;
use warnings;

use Kernel::Language qw(Translatable);

our @ObjectDependencies = (
    'Kernel::System::Ticket',
    'Kernel::Output::HTML::Layout',
    'Kernel::Config',
);

sub new {
    my ( $Type, %Param ) = @_;

    my $Self = {%Param};
    bless( $Self, $Type );

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    my $TicketObject = $Kernel::OM->Get('Kernel::System::Ticket');
    my $LayoutObject = $Kernel::OM->Get('Kernel::Output::HTML::Layout');
    my $ConfigObject = $Kernel::OM->Get('Kernel::Config');

    my $Config = $ConfigObject->Get("Ticket::Frontend::$Self->{Action}");

    if ( !$Self->{TicketID} ) {
        return $LayoutObject->ErrorScreen(
            Message => Translatable('No TicketID is given!'),
            Comment => Translatable('Please contact the administrator.'),
        );
    }

    # check permissions
    my $Access = $TicketObject->TicketPermission(
        Type     => $Config->{Permission},
        TicketID => $Self->{TicketID},
        UserID   => $Self->{UserID}
    );

    # error screen, don't show ticket
    if ( !$Access ) {
        return $LayoutObject->NoPermission(
            Message    => Translatable("You need $Config->{Permission} permissions!"),
            WithHeader => 'yes',
        );
    }

    my $Queue = $Config->{Queue};
    if ($Queue) {
        my $Success = $TicketObject->TicketQueueSet(
            Queue    => $Queue,
            TicketID => $Self->{TicketID},
            UserID   => $Self->{UserID},
        );
        if ($Success) {
            $TicketObject->TicketLockSet(
                TicketID => $Self->{TicketID},
                Lock     => 'unlock',
                UserID   => $Self->{UserID},
            );
        }
        else {
            return $LayoutObject->NoPermission(
                Message    => Translatable('You dont have permissions to delete tickets.'),
                WithHeader => 'yes',
            );
        }
    }
    return $LayoutObject->Redirect( OP => $Self->{LastScreenOverview} );
}

1;
