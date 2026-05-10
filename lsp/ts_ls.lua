return {
 cmd = {'typescript-language-server', '--stdio'},
  filetypes = { 'typescript', 'typescriptreact', 'javascript', 'javascriptreact' },
  root_dir = vim.fs.root(0, {'package.json', 'tsconfig.json', '.git'}),

}
