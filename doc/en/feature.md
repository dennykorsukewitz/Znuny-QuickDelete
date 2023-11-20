# Functionality

## Move in the junk queue

With this package, tickets can be moved to the junk queue in the ticket view with a mouse click.
If you have defined a different junk queue, it can also be set in [SysConfig](config.md).

## GenericAgent Job

During installation a GenericAgent job `ZnunyQuickDelete` is created which deletes all tickets in the SysConfig `Ticket::Frontend::AgentTicketZnunyQuickDelete####Queue` defined queue every day at 01:00.
