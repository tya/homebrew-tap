class Tpm < Formula
  desc "TMUX plugin manager"
  homepage "https://github.com/tmux-plugins/tpm"
  url "https://github.com/tmux-plugins/tpm/archive/v3.0.0.tar.gz"
  sha256 "65093ca3995d9ac3889bc7630e11667e7156051d3da85526e28d53eeb29e7002"
  head "https://github.com/tmux-plugins/tpm.git"

  bottle :unneeded

  def install
    share.install Dir["*"]
  end

  def caveats
    <<~EOS
			Add to ${HOME}/.tmux.conf
				# change plugin install dir for homebrew
				set-environment -g TMUX_PLUGIN_MANAGER_PATH #{opt_share}

				# list of plugins
				set -g @plugin 'tmux-plugins/tpm'
				...

				# init tpm in very last line of .tmux.conf
				run #{opt_share}/tpm'

			Then reload TMUX environment
				# type this in terminal if tmux is already running
				$ tmux source ~/.tmux.conf
    EOS
  end

  test do
		# TODO: fix this test
		system "/usr/bin/true"
  end

end
