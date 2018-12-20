# Network ports status LuCI application

## Description
This package allows you to monitor current state of the
network interfaces specified in configuration file (`/etc/config/luci_netports`).

## Dependencies
This LuCI application developed for LuCI 18.06 branch.

## Supported languages
- English
- Russian

## UCI configuration
UCI configuration for this application is stored in `/etc/config/luci_netports` file.

This file contain one `global` section with global application settings and one
or more `port` sections with network ports settings.

### Global settings

The `global` section contains global application settings. Default `global` section configuration:
```
config global 'global'
	option default_additional_info 'false'
	option default_h_mode          'false'
	option hv_mode_switch_button   'false'
```

These options can be set in the `global` section:

| Name                      | Type    | Required | Default | Description                                                                  |
| ------------------------- | ------- | -------- | ------- | ---------------------------------------------------------------------------- |
| `default_additional_info` | boolean | no       | false   | Display additional information in horizontal view mode by default.           |
| `default_h_mode`          | boolean | no       | false   | Use horizontal view mode by default.                                         |
| `hv_mode_switch_button`   | boolean | no       | false   | Show button for manual switching between horizontal and vertical view modes. |

### Ports settings

Sections of the type `port` declare network port settings for displaying in application.

A minimal port declaration consists of the following lines:
```
config port
	option ifname 'eth0'
```
These options can be set in the `global` section:

| Name                      | Type    | Required | Default | Description                                                                  |
| ------------------------- | ------- | -------- | ------- | ---------------------------------------------------------------------------- |
| `ifname`                  | string  | yes      | (none)  | Network interface name. |
| `name`                    | string  | no       | value of `ifname` | Custom port name for displaying in application. |
| `type`                    | string  | no       | `copper` | Custom port type. Available port types listed in the table below. |

Available port types (`type` setting):

| Type(s) | Disabled icon | Linkdown icon | Linkup icon | Description |
| ----- |:------------:|:--------------:|:------------:| ----------- |
| `copper` | ![copper_disabled](htdocs/luci-static/resources/netports/icons/copper_disabled.svg?sanitize=true) | ![copper_down](htdocs/luci-static/resources/netports/icons/copper_down.svg?sanitize=true) | ![copper_up](htdocs/luci-static/resources/netports/icons/copper_up.svg?sanitize=true) | Wired (RJ45) connection. |
| `fixed` | ![fixed_disabled](htdocs/luci-static/resources/netports/icons/fixed_disabled.svg?sanitize=true) | ![fixed_down](htdocs/luci-static/resources/netports/icons/fixed_down.svg?sanitize=true) | ![fixed_up](htdocs/luci-static/resources/netports/icons/fixed_up.svg?sanitize=true) | Intercircuit fixed link connection. |
| `wifi`, `usb_wifi` | ![wifi_disabled](htdocs/luci-static/resources/netports/icons/wifi_disabled.svg?sanitize=true) | ![wifi_down](htdocs/luci-static/resources/netports/icons/wifi_down.svg?sanitize=true) | ![wifi_up](htdocs/luci-static/resources/netports/icons/wifi_up.svg?sanitize=true) | Wireless connection. |
| `usb_rndis` | ![usb_rndis_disabled](htdocs/luci-static/resources/netports/icons/usb_rndis_disabled.svg?sanitize=true) | ![usb_rndis_down](htdocs/luci-static/resources/netports/icons/usb_rndis_down.svg?sanitize=true) | ![usb_rndis_up](htdocs/luci-static/resources/netports/icons/usb_rndis_up.svg?sanitize=true) | USB RNDIS connection. |
| `usb_2g`, `usb_3g`, `usb_4g` | ![usb_stick_disabled](htdocs/luci-static/resources/netports/icons/usb_stick_disabled.svg?sanitize=true) | ![usb_stick_down](htdocs/luci-static/resources/netports/icons/usb_stick_down.svg?sanitize=true) | ![usb_stick_up](htdocs/luci-static/resources/netports/icons/usb_stick_up.svg?sanitize=true) | USB 2G/3G/4G modem connection. |

## Screenshots

### Vertical view mode (default)
![Vertical view mode](screenshots/v-mode-5-ports.png?raw=true "Vertical view mode")

### Horizontal view mode

With additional information:

![Horizontal view mode](screenshots/h-mode-5-ports.png?raw=true "Horizontal view mode")

Without additional information:

![Horizontal view mode (additional information is hidden)](screenshots/h-mode-5-ports-short.png?raw=true "Horizontal view mode (additional information is hidden)")
