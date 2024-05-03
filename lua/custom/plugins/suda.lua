return {
  'lambdalisue/suda.vim',
}

-- suda is a plugin to read or write files with sudo command.
-- This plugin was built while :w !sudo tee % > /dev/null trick does not work on
--
-- Re-open a current file with sudo
-- :SudaRead
--
-- Open /etc/sudoers with sudo
-- :SudaRead /etc/sudoers
--
-- Forcedly save a current file with sudo
-- :SudaWrite
--
--  Write contents to /etc/profile
-- :SudaWrite /etc/profile
