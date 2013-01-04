# -*- coding: utf-8 -*-
require 'siri_objects'
require "iremocon"

class SiriProxy::Plugin::Iremocon < SiriProxy::Plugin
  attr_accessor :host

  def initialize(config = {})
    self.host = config["host"]
  end

  def signal_to_iremocon(signal)
    iremocon = ::Iremocon.new(self.host)
    iremocon.is(signal)
    iremocon.telnet.close
  end

  listen_for /ライト?を?(つけて|付けて)/i do
    say 'ライトをつけます'
    signal_to_iremocon(1000)
    request_completed
  end

  listen_for /ライト?を?(けして|消して)/i do
    say 'ライトを消します'
    signal_to_iremocon(1001)
    request_completed
  end
end
