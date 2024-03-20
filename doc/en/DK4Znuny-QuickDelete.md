<p style="text-align: left;">
    <h3 style="text-align: left;">Denny Korsukéwitz 4 OpenSource</h3>
</p>
<p style="padding-top: 330px">
    <br>
</p>
<h1 style="text-align: center;">
DK4Znuny-QuickDelete
</h1>

<h1 style="text-align: center;">
Znuny 6.4
</h1>
<p style="padding-top: 450px">
    <br>
</p>

# Functionality

## Move in the junk queue

With this package, tickets can be moved to the junk queue in the ticket view with a mouse click.
If you have defined a different junk queue, it can also be set in [SysConfig](config.md).

## GenericAgent Job

During installation a GenericAgent job `DK4ZnunyQuickDelete` is created which deletes all tickets in the SysConfig `Ticket::Frontend::AgentTicketDK4ZnunyQuickDelete####Queue` defined queue every day at 01:00.

# Configuration

The following SysConfig values can be adjusted:

- `Ticket::Frontend::AgentTicketDK4ZnunyQuickDelete###Queue`
- `Ticket::Frontend::AgentTicketDK4ZnunyQuickDelete###Permission`

## Queue

**default value:** 'junk

This value defines the queue in which tickets should be moved to be deleted.

## Permission

**default value:** 'move_into

This value describes the permissions required to move a ticket into the junk queue.
