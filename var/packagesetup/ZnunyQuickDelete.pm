# --
# Copyright (C) 2019 Gino Naumann, https://github.com/SynPrime
# Copyright (C) 2019 Denny Korsukéwitz, https://github.com/dennykorsukewitz
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --
## nofilter(TidyAll::Plugin::Znuny::Legal::AGPLValidator)

package var::packagesetup::ZnunyQuickDelete;

use strict;
use warnings;
use utf8;

our @ObjectDependencies = (
    'Kernel::Config',
    'Kernel::System::GenericAgent',
    'Kernel::System::Queue',
);

=head1 NAME

var::packagesetup::ZnunyQuickDelete - code to execute during package installation

=head1 DESCRIPTION

Functions for installing the ZnunyQuickDelete package.

=head1 PUBLIC INTERFACE

=head2 new()

create an object

    use Kernel::System::ObjectManager;
    local $Kernel::OM = Kernel::System::ObjectManager->new();
    my $CodeObject = $Kernel::OM->Get('var::packagesetup::ZnunyQuickDelete');

=cut

sub new {
    my ( $Type, %Param ) = @_;

    my $Self = {};
    bless( $Self, $Type );

    return $Self;
}

=head2 CodeInstall()

run the code install part

    my $Result = $CodeObject->CodeInstall();

=cut

sub CodeInstall {
    my ( $Self, %Param ) = @_;

    my $GenericAgentObject = $Kernel::OM->Get('Kernel::System::GenericAgent');
    my $ConfigObject       = $Kernel::OM->Get('Kernel::Config');
    my $QueueObject        = $Kernel::OM->Get('Kernel::System::Queue');

    my $Config = $ConfigObject->Get('Ticket::Frontend::AgentTicketZnunyQuickDelete');

    my $JobName = 'ZnunyQuickDelete';
    my $QueueID = $QueueObject->QueueLookup( Queue => $Config->{Queue} );
    return 1 if !$QueueID;

    my %JobList = $GenericAgentObject->JobList();
    return 1 if $JobList{$JobName};

    $GenericAgentObject->JobAdd(
        Name    => $JobName,
        UserID  => 1,
        ValidID => 1,
        Data    => {
            Valid        => 1,
            ScheduleDays => [
                '0',
                '1',
                '2',
                '3',
                '4',
                '5',
                '6'
            ],
            ScheduleMinutes => ['0'],
            ScheduleHours   => ['1'],
            QueueIDs        => [
                $QueueID
            ],
            NewDelete => '1',
        },
    );

    return 1;
}

=head2 CodeUpgrade()

run the code upgrade part

    my $Result = $CodeObject->CodeUpgrade();

=cut

sub CodeUpgrade {
    my ( $Self, %Param ) = @_;

    $Self->CodeInstall();

    return 1;
}

=head2 CodeReinstall()

run the code reinstall part

    my $Result = $CodeObject->CodeReinstall();

=cut

sub CodeReinstall {
    my ( $Self, %Param ) = @_;

    $Self->CodeInstall();

    return 1;
}

=head2 CodeUninstall()

run the code uninstall part

    my $Result = $CodeObject->CodeUninstall();

=cut

sub CodeUninstall {
    my ( $Self, %Param ) = @_;

    my $GenericAgentObject = $Kernel::OM->Get('Kernel::System::GenericAgent');

    my $JobName = "ZnunyQuickDelete";
    my %Job     = $GenericAgentObject->JobGet( Name => "$JobName" );

    return 1 if !%Job;

    $GenericAgentObject->JobDelete(
        Name   => $JobName,
        UserID => 1,
    );

    return 1;
}

1;
