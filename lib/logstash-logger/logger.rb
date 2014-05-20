class LogStashLogger < ::Logger
  include LogStashLogger::LogStashFormatter

  def initialize(host, port, socket_type=:tcp)
    super(::LogStashLogger::Socket.new(host, port, socket_type))
  end

end