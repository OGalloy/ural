--repl
newStack = assert(require ("stack"))
if newStack == nil then
	print("Module \"Stack\" not load")
end

function handler(line)
	newStack:push(line)
end
--repl	
print("ural.0.1")
while true do
	io.write(">")
	line = io.read()
	handler(line)
	io.write("Stack State: ", "{", newStack:display(), "}", "\n")
end

