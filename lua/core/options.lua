-- Ukrywa banner na starcie netrw (wbudowanego menedżera plików)
vim.cmd("let g:netrw_banner = 0")

-- Skrót do ustawień Vima
local o = vim.opt

-- Wyłącza niestandardowy kursor GUI
o.guicursor = ""

-- Wyświetla numery linii
o.nu = true
-- Pokazuje numery względne (względne do bieżącej pozycji kursora)
o.relativenumber = true

-- Ustawienia tabulatorów
o.tabstop = 4         -- Ustala szerokość tabulatora na 4 spacje
o.softtabstop = 4     -- Ustawia liczbę spacji używanych przy wciskaniu Tab
o.shiftwidth = 4      -- Określa szerokość wcięcia dla poleceń autoindent
o.expandtab = true    -- Zamienia tabulatory na spacje
o.autoindent = true   -- Automatycznie wstawia wcięcia w nowej linii
o.smartindent = true  -- Inteligentne wcięcia bazujące na strukturze kodu
o.wrap = false        -- Wyłącza zawijanie linii

-- Ustawienia plików tymczasowych i cofania zmian
o.swapfile = false    -- Wyłącza pliki wymiany (swap)
o.backup = false      -- Wyłącza automatyczne kopie zapasowe
o.undofile = true     -- Włącza historię cofania zmian, która działa między sesjami

-- Opcje wyszukiwania
o.incsearch = true    -- Włącza wyszukiwanie inkrementalne (pokazuje wyniki podczas pisania)
o.hlsearch = true     -- Podświetla znalezione wyniki
o.inccommand = "split" -- Podgląd modyfikacji tekstu podczas wyszukiwania i zamiany
o.ignorecase = true   -- Ignoruje wielkość liter podczas wyszukiwania
o.smartcase = true    -- Jeśli są wielkie litery w zapytaniu, wymusza dopasowanie wielkości liter

-- Wygląd i nawigacja
o.termguicolors = true -- Umożliwia użycie pełnej palety kolorów terminala
o.background = "dark"  -- Ustawia ciemne tło (przydatne dla schematów kolorów)
o.scrolloff = 8        -- Zapewnia przynajmniej 8 linii odstępu przy przewijaniu
o.signcolumn = "yes"   -- Włącza kolumnę znaków (np. dla oznaczeń Git)
o.splitright = true    -- Nowe podziały ekranu pionowe otwierają się po prawej stronie
o.splitbelow = true    -- Nowe podziały ekranu poziome otwierają się poniżej

-- Ustawienia dla klawisza Backspace
o.backspace = {"start", "eol", "indent"} -- Umożliwia cofanie przez wcięcia, znaki końca linii i początek pliku

-- Inne ustawienia systemowe
o.isfname:append("@-@") -- Dodaje "@-@" do listy dozwolonych znaków w nazwach plików
o.updatetime = 50       -- Zmniejsza czas oczekiwania na odświeżenie (przydatne dla pluginów jak GitGutter)
o.colorcolumn = "120"   -- Podświetla kolumnę 120 dla łatwiejszej kontroli długości linii
o.clipboard:append("unnamedplus") -- Umożliwia współdzielenie schowka z systemem

-- Włącza obsługę myszy w całym Vimie
o.mouse = "a"

-- Aktywuje obsługę plików EditorConfig
vim.g.editorconfig = true
