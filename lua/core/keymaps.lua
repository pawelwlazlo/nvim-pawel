local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv'", {desc = "przesuwa linię w górę w trybie wizualnym" })
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv'", {desc = "przesuwa linię w dół w trybie wizualnym" })

vim.keymap.set("n", "J", "mzJ`z", {desc = "zachowuje pozycję kursora przy łączeniu linii"})

vim.keymap.set("n", "<leader>wq", ":wq<CR>", {desc = "Zapisuje i zamyka plik"})

vim.keymap.set("n", "<C-d>", "<C-d>zz", {desc = "Skroluje bufor w dół z wycentrowanym kursorem"})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {desc = "Skroluje bufor w górę z wycentrowanym kursorem"})

vim.keymap.set("n", "n", "nzzzv", {desc = "Przechodzi do następnego wyniku wyszukiwania i wyśrodkowuje ekran"})
vim.keymap.set("n", "N", "Nzzzv", {desc = "Przechodzi do poprzedniego wyniku wyszukiwania i wyśrodkowuje ekran"})

vim.keymap.set("n", "*", "*Nzzzv", {desc = "Wyszukuje słowo pod kursorem i wyśrodkowuje ekran"})
vim.keymap.set("n", "#", "#Nzzzv", {desc = "Wyszukuje wstecz słowo pod kursorem i wyśrodkowuje ekran"})

vim.keymap.set("n", "<leader>r", ":%s//g<Left><Left>", {desc = "Rozpoczyna zamianę wyrażeń w całym pliku"})

vim.keymap.set("n", "<leader>sn", ":nohlsearch<CR>", {desc = "Usuwa podświetlenie wyszukiwania"})
vim.keymap.set("n", "<leader>sp", ":%s//gc<Left><Left><Left>", {desc = "Rozpoczyna zamianę wyrażeń z potwierdzeniem"})


vim.keymap.set("v", "<", "<gv", {desc = "Zmniejsza wcięcie zaznaczonych linii i utrzymuje zaznaczenie",silent = true})
vim.keymap.set("v", ">", ">gv", {desc = "Zwiększa wcięcie zaznaczonych linii i utrzymuje zaznaczenie", silent=true})

vim.keymap.set("x", "<leader>p", [["_dP]], {desc = "Wkleja bez nadpisywania schowka"})
vim.keymap.set("v", "p", '#_dp', {desc = "Wkleja w trybie visual bez nadpisywania schowka"})

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]], {desc= "Kasuje bez zamazywania schowka"})

vim.keymap.set("n", "<C-c>", ":nohl<CR>", {desc = "Czyszczenie podświetlonego wyszukiwania", silent = true })

vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format)

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "x", '"_x"', opts)

vim.keymap.set("n", "<leader>sg", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], 
    {desc = "Zastępuje słowo na którym jest kursor globalnie"})
    
vim.keymap.set("n", "<leader>sw", ":%s/\\<<C-r><C-w>\\>//g<Left><Left>",
    {desc = "Zamienia słowo pod kursorem w bieżącej linii"})

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", {silent = true, desc="Ustawia bieżący plik jako executable"})

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Otwiera nową kartę" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Zamyka bieżącą kartę" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Przechodzi do następnej karty" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Przechodzi do poprzedniej karty" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Otwiera bieżący plik w nowej karcie" })


vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Dzieli okno pionowo" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Dzieli okno poziomo" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Ustawia podziały na równą szerokość i wysokość" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Zamyka bieżące podzielone okno" })

-- Kopiowanie ścieżki pliku do schowka
vim.keymap.set("n", "<leader>fp", function()
  local filePath = vim.fn.expand("%:~") -- Pobiera ścieżkę pliku względną do katalogu domowego
  vim.fn.setreg("+", filePath) -- Kopiuje ścieżkę pliku do schowka systemowego
  print("Ścieżka pliku skopiowana do schowka: " .. filePath) -- Wyświetla komunikat potwierdzający
end, { desc = "Kopiuje ścieżkę pliku do schowka" })

-- Przełączanie widoczności diagnostyki LSP
local isLspDiagnosticsVisible = true
vim.keymap.set("n", "<leader>lx", function()
    isLspDiagnosticsVisible = not isLspDiagnosticsVisible
    vim.diagnostic.config({
        virtual_text = isLspDiagnosticsVisible,
        underline = isLspDiagnosticsVisible
    })
end, { desc = "Przełącza widoczność diagnostyki LSP" })
