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
Znuny 7.0
</h1>
<p style="padding-top: 450px">
    <br>
</p>

# Funktionalität

## Verschiebung in die Junk-Queue

Mit diesem Paket können Tickets in der Ticketansicht mit einem Mausklick in die Junk-Queue verschoben werden.
Falls Sie eine andere Junk-Queue definiert haben, kann diese auch in der [SysConfig](config.md) eingestellt werden.

## GenericAgent Job

Bei der Installation wird ein GenericAgent Job `DK4ZnunyQuickDelete` angelegt der jeden Tag um 01:00 Uhr alle Tickets in der SysConfig `Ticket::Frontend::AgentTicketDK4ZnunyQuickDelete###Queue` definierten Queue löscht.

# Konfiguration

Folgende SysConfig Werte sind anpassbar:

- `Ticket::Frontend::AgentTicketDK4ZnunyQuickDelete###Queue`
- `Ticket::Frontend::AgentTicketDK4ZnunyQuickDelete###Permission`

## Queue

**Standardwert:** `Junk`

Dieser Wert definiert die Queue in der zu löschende Tickets verschoben werden sollen.

## Berechtigungen

**Standardwert:** `move_into`

Dieser Wert beschreibt die nötigen Berechtigungen um ein Ticket in die Junk-Queue zu verschieben.
