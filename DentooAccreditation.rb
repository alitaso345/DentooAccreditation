require 'spreadsheet'

class DentooAccreditation
  def initialize
    Spreadsheet.client_encoding = "UTF-8"
    @book = Spreadsheet.open('./H24nintei.xls')
  end

  def save
    @book.write('./NewNintei.xls')
  end


end

DentooAccreditation.new.save
