require_relative 'lib/DentooAccreditation'
require_relative 'lib/Adapter'

#arguments = Adapterを使ってユーザから入力されたものを，Dentooaccreditationでxlsで扱える形(今回はhash)に変換してやる
#とりあえず今は適当な変数を使ってる

arguments = Adapter::CommandLineAdapter.start(ARGV)

DentooAccreditation.new(arguments).edit
