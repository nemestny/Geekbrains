HELLO = 1
Object.send(:remove_const, :HELLO)
HELLO = 2
p HELLO