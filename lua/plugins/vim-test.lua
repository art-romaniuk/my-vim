vim.cmd([[
    let test#strategy='neovim'
    function! s:get_runner() abort
        " Absolute path of script file with symbolic links resolved:
        let s:path = resolve(expand('<sfile>:p'))

        if s:path =~ 'message-bus'
            return test#php#phpunit#executable()
        endif

        if s:path =~ 'aws-service-currency'
            return 'php artisan test'
            " return test#php#phpunit#executable()
        endif

        if s:path =~ 'cryptoobmen'
            return 'docker-compose exec php-fpm-backend backend/vendor/bin/codecept run backend/web/tests/unit/components/AlertLogger/AlertLogServiceTest.php'
        endif

        return test#php#phpunit#executable()
    endfunction

    function! s:get_options() abort
        if filereadable('./vendor/bin/paratest') && (g:test#php#phpunit#executable == 'php artisan test')
            return { 'suite': '--parallel' }
        endif

        return {}
    endfunction

    let test#php#phpunit#executable = s:get_runner()
    " let test#php#phpunit#options = s:get_options()

    nmap <silent> t<C-n> :TestNearest<CR>
    nmap <silent> t<C-f> :TestFile<CR>
    nmap <silent> t<C-a> :TestSuite<CR>
    nmap <silent> t<C-l> :TestLast<CR>
    nmap <silent> t<C-v> :TestVisit<CR>
]])
