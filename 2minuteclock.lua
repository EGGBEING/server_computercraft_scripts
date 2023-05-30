redrouter = peripheral.wrap("back")
while (true) do
    redrouter.setOutput("back", false)
    sleep(120)
    redrouter.setOutput("back", true)
    sleep(1)
end
