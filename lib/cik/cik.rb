class Cik

  require 'nokogiri'

  class << self

    def lookup(symbol)
      doc = Nokogiri::HTML(open("http://www.sec.gov/cgi-bin/browse-edgar?CIK=#{symbol}&action=getcompany"))
      md = /(.+)\sCIK#:\s(\d{10})/.match(doc.css("div.companyInfo").css("span.companyName").text)
      if md
        {
          cik: md[2],
          name: md[1],
          sic: doc.css("p.identInfo a")[0].text
        }
      else
        nil
      end
    end

  end

end