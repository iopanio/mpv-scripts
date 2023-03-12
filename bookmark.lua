function print_filename()
  local filepath = mp.get_property("path")
  local filename = mp.get_property("filename")
  local log = "Added to bookmark: " .. filepath
  mp.osd_message("Added to bookmark ")
  print(log)
  local output = filepath
  local f = io.open(os.getenv("HOME") .. "/mpv_bookmark.txt", "a")
  f:write(output .. "\n")
  f:close()
end

mp.add_key_binding("ctrl+s", "print_filename", print_filename)

