# SiriProxy-iRemocon

Siriproxy-iRemocon is a SiriProxy plugin that controls your room by iRemocon.

Currently it can control

- turning on/off the light
- turning on/off the air-condition

This list is demo videos to turning on/off the light and the air condition by Siri.
- http://www.youtube.com/watch?v=K_0VNat-m8Q
- http://www.youtube.com/watch?v=9zpSUcJMcqg

## How to use
1. Add plugin information in `config-info.xml` to your `~/.siriproxy/config.xml`.
 - `host` stands for IP address of iRemocon.
 - `signals`' values stand for signal value of light and aircon recorded on iRemocon.
2. Execute `siriproxy update` to add SiriProxy-iRemocon plugin to your SiriProxy.
3. Run your SiriProxy.

## Licence
Siriproxy-iRemocon is released under the MIT License.
