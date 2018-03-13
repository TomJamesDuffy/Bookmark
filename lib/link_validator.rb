require 'net/https'
require 'uri'

class LinkValidator

  def self.validate(link)
    value = `http --verify=no #{link.gsub(/\s+/, "")}`
    return false if value.include? "<title></title>\n</head>\n<body>\n</body>\n</html>"
    return false if value == ""
    true
  end
end
