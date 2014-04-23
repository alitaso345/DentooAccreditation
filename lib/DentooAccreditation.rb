require 'spreadsheet'
require 'thor'

class DentooAccreditation < Thor
  SHEETNUM = 16

  def initialize(arguments)
   @course = arguments[:curse]
   @name = arguments[:name]
   @examinees_number = arguments[:examinees_number]
   @student_id = arguments[:student_id]
   @graduated_school_name = arguments[:graduated_school_name]
   @graduated_school_course = arguments[:graduated_school_course]
   @entrance_year = arguments[:entrance_year]
   @graduated_year = arguments[:graduated_year]
  end

  def edit
    Spreadsheet.client_encoding = "UTF-8"
    @book = Spreadsheet.open('./H24nintei.xls')

    sheets = Array.new(SHEETNUM)
    SHEETNUM.times do |sheet_number|
      sheets[sheet_number] = @book.worksheet sheet_number
    end

    sheets.each do |sheet|
      sheet[5,8] = options[:course]
      sheet[5,15] = options[:name]
      sheet[5,22] = options[:examinees_number]
      sheet[6,22] = options[:student_id]
      sheet[10,2] = options[:graduated_school_name].to_s + "高等専門学校"
      sheet[9,13] = options[:graduated_school_course]
      sheet[8,18] = "      " + options[:entrance_year].to_s + "年       " + "3月 入学"
      sheet[10,18] = "      " + options[:graduated_year].to_s + "年       " + "4月 卒業・卒業見込・退学"
    end

    save()
  end

  private
  def save
    @book.write('./NewNintei.xls')
  end
end
