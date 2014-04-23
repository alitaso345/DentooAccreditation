require 'thor'
require_relative 'lib/DentooAccreditation'

arguments = {:course => "情報通信工学科",:name => "alitaso",:entrance_year => 21,:graduated_year => 26}

DentooAccreditation.new(arguments).edit
