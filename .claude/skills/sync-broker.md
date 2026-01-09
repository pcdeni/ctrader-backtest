# /sync-broker

Fetches latest broker settings from MT5 and updates C++ config.

## Usage
```
/sync-broker <broker_name>
```

## Parameters
- `broker_name`: Broker to sync ("Moneta" or "Fusion")

## What it does
1. Connects to MT5 terminal for specified broker
2. Fetches symbol settings:
   - Swap long/short rates
   - Swap mode
   - Triple swap day
   - Contract size
   - Margin requirements
   - Leverage
3. Updates `validation/<broker>/XAUUSD_SETTINGS.txt`
4. Suggests C++ config changes

## MT5 Terminal paths
- Moneta: `C:\Program Files\Moneta Markets MT5 Terminal\terminal64.exe`
- Fusion: `C:\Program Files\Fusion Markets MT5 Terminal\terminal64.exe`

## Output
```
=== Broker Settings: Moneta ===

XAUUSD Settings:
  Swap Long:     -66.99 points
  Swap Short:    41.2 points
  Swap Mode:     POINTS (1)
  Swap 3-Day:    Wednesday (3)
  Contract Size: 100
  Leverage:      1:500

C++ Config Update:
  config.swap_long = -66.99;
  config.swap_short = 41.2;
  config.swap_mode = 1;
  config.swap_3days = 3;
```

## Related files
- `fetch_moneta_settings.py`
- `validation/<broker>/XAUUSD_SETTINGS.txt`
