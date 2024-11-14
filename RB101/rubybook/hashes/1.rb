family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

siblings = []

family.select do |key, value|
  if key == :sisters || key == :brothers
  siblings << value
  end
end

p siblings.flatten