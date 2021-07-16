-- betterchapters.lua
-- Loads the next or previous playlist entry if there are no more chapters in the seek direction.
-- To bind in input.conf, use: <keybind> script_binding <keybind name>
-- Keybind names: chapter_next, chapter_prev
-- Recommended to use with autoload.lua
function chapter_seek(direction)
  local chapters = mp.get_property_number("chapters")
  if chapters == nil then
    chapters = 0
  end
  local chapter = mp.get_property_number("chapter")
  if chapter == nil then
    chapter = 0
  end
  if chapter + direction < 0 then
    mp.command("playlist_prev")
    mp.commandv("script-message", "osc-playlist")
  elseif chapter + direction >= chapters then
    mp.command("playlist_next")
    mp.commandv("script-message", "osc-playlist")
  else
    mp.commandv("add", "chapter", direction)
    mp.commandv("script-message", "osc-chapterlist")
  end
end

mp.add_key_binding(
  "c",
  "chapter_next",
  function()
    chapter_seek(1)
  end
)
mp.add_key_binding(
  "C",
  "chapter_prev",
  function()
    chapter_seek(-1)
  end
)
