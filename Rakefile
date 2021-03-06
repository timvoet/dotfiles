########################################################################
###
### Tim Voet's Vim Setup
### Based on Eduardo Del Balso's Vim Setup
### Based on the work of Ben Bleything.
### Rakefile updated to support zip and gzip files
###
### Modified from: http://github.com/bleything/dotvim
###
### This is eventually going to be replaced by git submodule approach ( i think )
########################################################################

require 'pathname'

task :default do
  puts "Hi! All this Rakefile can do right now is update the bundles:"
  puts # blank line
  puts "  $ rake vim:update_bundles"
end

namespace :vim do

  BUNDLES = {
    # plugins
    #:txtfmt         => "http://www.vim.org/scripts/download_script.php?src_id=13856",
    :bufexplorer   => "git://github.com/corntrace/bufexplorer.git",
    #:nerdcommenter => "git://github.com/scrooloose/nerdcommenter.git",
    :nerdtree      => "git://github.com/scrooloose/nerdtree.git",
    :rails         => "git://github.com/tpope/vim-rails.git",
    #:surround      => "git://github.com/tpope/vim-surround.git",
    #:tabular       => "git://github.com/godlygeek/tabular",
    #:taglist       => "http://www.vim.org/scripts/download_script.php?src_id=7701",
    #:lusty_explorer => "git://github.com/sjbach/lusty.git",
    #:ragtag         => "git://github.com/tpope/vim-ragtag.git",
    #:matchit        => "http://www.vim.org/scripts/download_script.php?src_id=8196",
    #:endwise        => "http://www.vim.org/scripts/download_script.php?src_id=9299",
    :git            => "git://github.com/tpope/vim-git.git",
    :fugitive       => "git://github.com/tpope/vim-fugitive.git",
    #:jekyll         => "git://github.com/csexton/jekyll.vim.git",
    #:rvm            => "git://github.com/tpope/vim-rvm.git",
    :unimpaired      => "git://github.com/tpope/vim-unimpaired.git",
    #:gpg            => "git@gitorious.org:vim-gnupg/vim-gnupg.git",
    #:powerline           => "git://github.com/Lokaltog/vim-powerline.git",
    :tmuxline       => "git://github.com/edkolev/tmuxline.vim.git",
    :lightline      => "git://github.com/itchyny/lightline.vim.git",
    #:gundo          => "git://github.com/sjl/gundo.vim.git",
    :bundler        => "https://github.com/tpope/vim-bundler.git",
    # syntax definitions
    :syntax_markdown  => "git://github.com/ujihisa/vim-markdown.git",
    :syntax_textile   => "git://github.com/timcharper/textile.vim.git",
#    :syntax_cucumber  => "git://github.com/tpope/vim-cucumber.git",
    :syntax_git       => "git://github.com/tpope/vim-git.git",
    #:syntax_rdoc      => "git://github.com/hallison/vim-rdoc.git",
#    :syntax_slidedown => "git://github.com/bleything/vim-slidedown.git",
#    :syntax_twiki     => "http://www.vim.org/scripts/download_script.php?src_id=6460",

    # Color Schemes
#    :color_sampler   => "http://www.vim.org/scripts/download_script.php?src_id=12179",
    :blackboard => "git://github.com/nelstrom/vim-blackboard.git",
    :solarized => "git://github.com/altercation/vim-colors-solarized.git",
    #:dawn => "http://www.vim.org/scripts/download_script.php?src_id=4807",
    :syntax_less             => "git://github.com/groenewege/vim-less.git",
  }

  desc "update any bundles defined in the Rakefile"
  task :update_bundles do

    bundle_home = Pathname.new( ENV['HOME'] ) + '.vim' + 'bundle'
    mkdir_p bundle_home

    BUNDLES.sort_by {|k,v| k.to_s }.each do |bundle, location|
      target_path = bundle_home + bundle.to_s

      puts "*" * 72
      puts "*** Instaling #{bundle} to #{target_path} from #{location}"
      puts # blank line

      rm_rf target_path

      case location.match( /^(.*?):/ )[1]
      when 'git'
        sh "git clone #{location} #{target_path} > /dev/null"
        rm_rf target_path + '.git'
      when 'http'
        mkdir_p target_path
        sh "cd #{target_path} && curl -s '#{location}' > filedownload.tmp"
        file_output = `file #{target_path}/filedownload.tmp`
        if file_output.include? "Zip archive data"
          puts "-- Identified file as :: ZIP ARCHIVE"
          puts "*** deleting temporary download for #{bundle.to_s}"
          sh "pwd"
          sh "cd #{target_path}; unzip filedownload.tmp"
          sh "rm #{target_path}/filedownload.tmp"
        elsif file_output.include? "TAR archive"
          puts "-- Identified file as :: TAR ARCHIVE"
          puts "*** deleting temporary download for #{bundle.to_s}"
          sh "rm #{target_path}/filedownload.tmp"
          puts "*** redownload #{bundle.to_s} to #{target_path}"
          sh "cd #{target_path} && curl -s '#{location}' | tar zx -"
        elsif ( file_output.include? ("ASCII") ) && ( file_output.include?( "text" ) )
          puts "-- Identified file as :: VIM FILE"
          mkdir_p "#{target_path}/plugin"
          puts "*** putting downloaded ASCII file to #{target_path}/plugin/#{bundle.to_s}.vim"
          sh "mv #{target_path}/filedownload.tmp #{target_path}/plugin/#{bundle.to_s}.vim"
        elsif ( file_output.include? ("gzip compressed data") )
          puts "-- Identified file as :: GZIP ARCHIVE"
          puts "*** deleting temporary download for #{bundle.to_s}"
          sh "rm #{target_path}/filedownload.tmp"
          puts "*** redownload #{bundle.to_s} to #{target_path}"
          sh "cd #{target_path} && curl -s '#{location}' | tar zx -"
        else
          puts "ERROR: Unrecognized file type:: #{file_output}"
          exit
        end
      end

      docdir = target_path + 'doc'
      if docdir.exist?
        puts "doc dir exists; tagging"
        sh "vim -u NONE -esX -c 'helptags #{docdir}' -c quit"
      end

      puts # blank line
    end
  end # task :bundles

end # namespace :update

