name 'aftp'
maintainer 'Casey Lee'
maintainer_email 'cplee@nektos.com'
license 'Apache 2.0'
description 'Installs/Configures Jenkins with simple job'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.0'

depends 'jenkins', '~> 2.4.1'
depends 'build-essential', '~>2.2.4'
