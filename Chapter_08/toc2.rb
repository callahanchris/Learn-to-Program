# Using arrays to create a table of contents

line_width = 55
chapters = ['Chapter 1:  ', 'Chapter 2:  ', 'Chapter 3:  ']
titles = ['Getting Started', 'Numbers', 'Letters']
pages = ['page  1', 'page  9', 'page 13']

puts('Table of Contents'.center(line_width))
puts ''


puts((chapters[0]+titles[0]).ljust(line_width/2) + pages[0].rjust(line_width/2))
puts((chapters[1]+titles[1]).ljust(line_width/2) + pages[1].rjust(line_width/2))
puts((chapters[2]+titles[2]).ljust(line_width/2) + pages[2].rjust(line_width/2))
