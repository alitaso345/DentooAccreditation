require 'spreadsheet'

class DentooAccreditation
  SHEETNUM = 16

  def initialize(arguments)
    Spreadsheet.client_encoding = "UTF-8"
    @book = Spreadsheet.open('./H24nintei.xls')
    @course = arguments[:course]
    @name = arguments[:name]
    @examinees_number = arguments[:examinees_number]
    @student_id = arguments[:student_id]
    @graduated_school_name = arguments[:graduated_school_name].to_s
    @graduated_school_course = arguments[:graduated_school_course]
    @entrance_year = arguments[:entrance_year].to_s
    @graduated_year = arguments[:graduated_year].to_s
  end

  def edit

    sheets = Array.new(SHEETNUM)
    SHEETNUM.times do |sheet_number|
      sheets[sheet_number] = @book.worksheet sheet_number
    end

    sheets.each do |sheet|
      sheet[5,8] = @course
      sheet[5,15] = @name
      sheet[5,22] = @examinees_number
      sheet[6,22] = @student_id
      sheet[10,2] = @graduated_school_name + "高等専門学校"
      sheet[9,13] = @graduated_school_course
      sheet[8,18] = "      " + @entrance_year + "年       " + "3月 入学"
      sheet[10,18] = "      " + @graduated_year + "年       " + "4月 卒業・卒業見込・退学"
    end

    save()
  end

  private
  def save
    @book.write('./NewNintei.xls')
  end
end
