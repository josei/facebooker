class XdReceiverGenerator < Rails::Generators::Base
  def self.source_root
    @source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates/'))
  end

  def create_xd_receiver
    template "xd_receiver.html", File.join('public', "xd_receiver.html")
    template "xd_receiver_ssl.html", File.join('public', "xd_receiver_ssl.html")
  end
end
