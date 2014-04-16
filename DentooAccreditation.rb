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

    sheets[0].each_with_index do |row,i|
      row.each_with_index do |cell,j|
        puts "#{cell},#{i},#{j}" if cell != nil
      end
    end

    sheets.each do |sheet|
      sheet[5,8] = "情報・通信工"
      sheet[5,15] = "ありたそ"
    end
    save()
  end

  def save
    @book.write('./NewNintei.xls')
  end


end

DentooAccreditation.new.edit
