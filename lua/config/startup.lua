require('config/alpha')

-- Randomize phrase on neovim start in notify & presence
local phrase_welcome = { 'welcome back to', 'welcum ba4k 2', 'well, back to',
                         'HEY YOU! YES, YOU! WELCOME BACK TO', 'back to the',
                         'where am i? oh hey, it is', 'welcommen to',
                         'eere fsdfalhjk', '\\/\\/E|_0ME B/\\CK T0',
                         'welcome baaaaack toooo ', 'hey cutie, welcome to' }
local phrase_nvim = { 'neovim', 'nenevim', 'noooovim', 'navavim', 'neov im',
                        'neovi m', 'neovem', 'neo vem', 'neo vine', 'nvim' }
local phrase_emoji = { 'owo', 'owu', 'uwo', 'uwu' }

local random_nvim = phrase_nvim[math.random(#phrase_nvim)]
local say_notify = phrase_welcome[math.random(#phrase_welcome)] .. ' ' ..
                   random_nvim .. '  owo'

require('notify')(say_notify, 'info', {
    timeout = 1000,
    render = 'minimal'
  })
require('presence').setup({
    neovim_image_text = random_nvim .. '.webp',
    main_image = 'file',
    enable_line_number = true,
    -- Phrases
    editing_text = 'editing %s',
    file_explorer_text = 'browsing %s',
    git_commit_text = 'commitin\' everytin\'',
    plugin_managet_text = 'managing pluginsssss',
    reading_text = 'reading %s',
    workspace_text = 'working on %s',
    line_number_text = 'line %s/%s ' .. phrase_emoji[#phrase_emoji]
  })
