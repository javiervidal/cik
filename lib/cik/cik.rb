class Cik

  require 'open-uri'
  require 'nokogiri'

  class << self

    def lookup(symbol)
      doc = Nokogiri::HTML(open(edgar_lookup_url(symbol)))
      md = /(.+)\sCIK#:\s(\d{10})/.match(company_info(doc))
      if md
        {
          cik: md[2],
          name: md[1],
          sic: sic(doc)
        }
      else
        nil
      end
    end

    def edgar_lookup_url(symbol)
      "http://www.sec.gov/cgi-bin/browse-edgar?CIK=#{symbol}&action=getcompany"
    end

    def company_info(doc)
      doc.css("div.companyInfo").css("span.companyName").text
    end

    def sic(doc)
      doc.css("p.identInfo a")[0].text
    end

  end

  private_class_method :edgar_lookup_url, :edgar_lookup_url, :sic

end