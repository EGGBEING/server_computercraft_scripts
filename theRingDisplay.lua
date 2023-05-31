-- assign each perihperal a name
display = peripheral.wrap("right")
honey = peripheral.wrap("top")
redRouter = peripheral.wrap("bottom")
 
--  clear display and move to first position
display.clear()
display.setCursorPos(1,1)
display.write("Last Update:")
while (true) do
    display.setCursorPos(1,2)
    display.clearLine()
    display.write("IGT: ")
    display.write(textutils.formatTime(os.time()))
    display.write(" | PST: ")
    display.write(textutils.formatTime(os.time("local")))
    display.setCursorPos(1,3)
    for i=1, 31, 1 do
        display.write("=")
    end
    display.setCursorPos(1,4)
    display.write("Harvester RPM: ")
    display.write(honey.getLine(3))
    display.setCursorPos(1,5)
    display.write("Harvester Moving: ")
    if (redRouter.getInput("right")) then
        display.write("nein")
    else
        display.write("yeag")
    end
    display.setCursorPos(1,9)
    display.write("Honey: ")
    display.write(honey.getLine(1))
    display.setCursorPos(1,10)
    display.write("Storage: ")
    itemAmount = string.gsub(honey.getLine(2), "%s+", "")
    display.write(itemAmount.." items")
    sleep(0.1)
end 
