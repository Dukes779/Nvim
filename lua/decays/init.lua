local present, decay = pcall(require, 'decay')

if not present then
  error('Can\'t import decay, make sure u installed it! :v')
end

decay.setup({
  style = 'decayce',
  nvim_tree = {
    contrast = false, -- or false to disable tree contrast
  },
})
