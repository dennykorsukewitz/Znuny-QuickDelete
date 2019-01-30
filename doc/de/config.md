# Konfiguration

Folgende Sysconfig Werte sind anpassbar:

- `Ticket::Frontend::AgentTicketQuickDelete###Queue`
- `Ticket::Frontend::AgentTicketQuickDelete###Permission`

## Queue

**Standardwert:** `Junk`

Dieser Wert definiert die Queue in der zu löschende Tickets verschoben werden sollen.

## Permission

**Standardwert:** `move_into`

Dieser Wert beschreibt die nötigen Berechtigungen um ein Ticket in die Junk-Queue zu verschieben.
