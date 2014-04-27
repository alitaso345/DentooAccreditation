require 'thor'

class Adapter
  class CommandLineAdapter < Thor
    desc "CommandLineAdapter","test"
    option :course
    option :name
    option :examinees_number
    option :student_id
    option :graduated_school_name
    option :graduated_school_course
    option :entrance_year
    option :graduated_year

    def make_options
      return options
    end
  end
end
