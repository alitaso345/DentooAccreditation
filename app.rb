require_relative 'lib/DentooAccreditation'
require_relative 'lib/Adapter'

arguments = Adapter::CommandLineAdapter.start(ARGV)
DentooAccreditation.new(arguments).edit
