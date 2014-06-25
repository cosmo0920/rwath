# -*- coding: utf-8 -*-
require 'rwath'

rwath = Rwath.new(delimitor: " ")
text = "ตัวอักษรไทยเป็นเรื่องยาก"
puts result = rwath.split(text) # => ตัว อักษร ไทย เป็น เรื่อง ยาก
