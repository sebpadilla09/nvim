function useColorScheme(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)
end

useColorScheme()
