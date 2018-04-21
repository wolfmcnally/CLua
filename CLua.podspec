Pod::Spec.new do |s|
  s.name             = 'CLua'
  s.version          = '0.1.0'
  s.summary          = 'Exports Lua (written in the C language) to Swift and iOS.'
  s.description      = <<-DESC
Exports Lua (written in the C language) to Swift.
See the example AppDelegate.swift for the "Hello, world!" implementation from Lua.
Currently forked from the master branch of Lua as of April 21, 2018.
Does not include a Swift wrapper or conveniences of any kind. For those, see WolfLua.
                       DESC
  s.homepage         = 'https://github.com/wolfmcnally/CLua'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wolfmcnally' => 'wolf@wolfmcnally.com' }
  s.source           = { :git => 'https://github.com/wolfmcnally/CLua.git', :tag => s.version.to_s }

  s.swift_version = '4.1'

  s.ios.deployment_target = '9.3'
  s.macos.deployment_target = '10.13'
  s.tvos.deployment_target = '11.0'

  s.source_files = [ 'lua/*.c', 'lua/lua.h', 'lua/lauxlib.h', 'lua/lualib.h', 'lua/luaconf.h' ]
  s.exclude_files = [ 'lua/lbitlib.c', 'lua/lua.c' ]
end
