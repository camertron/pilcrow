# encoding: UTF-8

require 'pilcrow'
require 'pry-nav'

src = '虽然存在的大部分时间里都受到破坏性的风切变影响'

puts Pilcrow.process(src, 'zh-cn').inspect
