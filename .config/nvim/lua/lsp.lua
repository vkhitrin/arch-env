local lsp = require "lspconfig"

lsp.groovyls.setup{
    cmd = { "java", "-jar", "/Users/vkhitrin/.local/groovy-language-server/build/libs/groovy-language-server-all.jar" }
}
lsp.pylsp.setup {}
