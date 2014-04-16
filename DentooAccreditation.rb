require 'spreadsheet'

class DentooAccreditation
  SHEETNUM = 16

  def initialize
    Spreadsheet.client_encoding = "UTF-8"
    @book = Spreadsheet.open('./H24nintei.xls')
  end

  def edit
    sheets = Array.new(SHEETNUM)
    SHEETNUM.times do |sheet_number|
      sheets[sheet_number] = @book.worksheet sheet_number
    end
  end

  def save
    @book.write('./NewNintei.xls')
  end


end

DentooAccreditation.new.edit
