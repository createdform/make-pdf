require 'wicked_pdf'

module MakePdf
  extend self

  class Error < StandardError; end

  def generate_pdf(html:, margin:, footer:)

  pdf = WickedPdf.new.pdf_from_string(
    html,
    margin: margin,
    footer: {
      content: footer
    }
  )
#   File.write("test.pdf", pdf)
#   puts "OK "
  end
end