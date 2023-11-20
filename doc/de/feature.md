# Funktionalität

## Verschiebung in die Junk-Queue

Mit diesem Paket können Tickets in der Ticketansicht mit einem Mausklick in die Junk-Queue verschoben werden.
Falls Sie eine andere Junk-Queue definiert haben, kann diese auch in der [SysConfig](config.md) eingestellt werden.

## GenericAgent Job

Bei der Installation wird ein GenericAgent Job `ZnunyQuickDelete` angelegt der jeden Tag um 01:00 Uhr alle Tickets in der SysConfig `Ticket::Frontend::AgentTicketZnunyQuickDelete###Queue` definierten Queue löscht.
