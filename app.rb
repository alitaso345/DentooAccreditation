require_relative 'lib/DentooAccreditation'
require_relative 'lib/Adapter'

#arguments = Adapterを使ってユーザから入力されたものを，Dentooaccreditationでxlsで扱える形(今回はhash)に変換してやる
#とりあえず今は適当な変数を使ってる
arguments = {:course => "情報通信工学科",:name => "alitaso",:entrance_year => 21,:graduated_year => 26,:graduated_school_name => "サレジオ"}

DentooAccreditation.new(arguments).edit
