# -*- coding: utf-8 -*-
require 'rwath'

conf = Rwath::Config.new
conf.delimitor(char: ' ')
conf.encode(input: :utf8, output: :utf8)
rwath = Rwath.new(config: conf.setting)
text = "ตัวอักษรไทยเป็นเรื่องยาก"
puts result = rwath.split(text) # => ตัว อักษร ไทย เป็น เรื่อง ยาก
