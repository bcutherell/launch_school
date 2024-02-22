def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p foo() # yes
p bar() # yes
p bar(foo) # no