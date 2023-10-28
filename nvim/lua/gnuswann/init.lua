require("gnuswann.remap")
require("gnuswann.plugins")
require("gnuswann.colorscheme")
require("gnuswann.set")

-- Plugins Configs

local this_script_path = debug.getinfo(1).source:match("@?(.*/)")
local this_script_dir = vim.fn.fnamemodify(this_script_path, ":p:h")
local this_script_dir_script_paths = vim.fn.split(vim.fn.glob(this_script_dir .. "/plugins_config/*.lua"), "\n")

for _, script_path in ipairs(this_script_dir_script_paths) do
   local script_name = vim.fn.fnamemodify(script_path, ":t:r")
   if script_name ~= "init" then
      require("gnuswann.plugins_config." .. script_name)
   end
end
