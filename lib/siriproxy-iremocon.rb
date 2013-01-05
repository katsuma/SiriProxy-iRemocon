# -*- coding: utf-8 -*-
require 'siri_objects'
require 'iremocon'

class SiriProxy::Plugin::Iremocon < SiriProxy::Plugin
  attr_accessor :host, :signals

  def initialize(config = {})
    self.host = config["host"]
    self.signals = config["signals"]
  end

  def signal_to_iremocon(signal)
    iremocon = ::Iremocon.new(self.host)
    iremocon.is(signal)
    iremocon.telnet.close
  end

  listen_for /(ライト?|電?気)を?(つけて|付けて)/ do
    say 'ライトをつけます'
    signal_to_iremocon(self.signals['light']['turn_on'])
    request_completed
  end

  listen_for /(ライト?|電?気)を?(けして|消して)/ do
    say 'ライトを消します'
    signal_to_iremocon(self.signals['light']['turn_off'])
    request_completed
  end
end
