# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Regffs < Formula
  desc "A Windows registry file (regf) viewer."
  homepage "https://github.com/forensicanalysis/regffs"
  version "0.1.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/forensicanalysis/regffs/releases/download/v0.1.0/regffs_0.1.0_macOS_amd64.tar.gz"
    sha256 "1cede9b9a44cb396c9620da2b0f0aebda5acfac3c5b38d97e0f796dfcb2f0ca3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/forensicanalysis/regffs/releases/download/v0.1.0/regffs_0.1.0_macOS_arm64.tar.gz"
    sha256 "97c20062ed603662d3a93bbb341caf8b1acfe22ff1672e25fc6ff314483dba7d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/forensicanalysis/regffs/releases/download/v0.1.0/regffs_0.1.0_Linux_amd64.tar.gz"
    sha256 "b9ff043b455837523b9b8394b891fd79f370bdef469f86db0150cb84b1cdd296"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/forensicanalysis/regffs/releases/download/v0.1.0/regffs_0.1.0_Linux_arm64.tar.gz"
    sha256 "59606ec9b7666bc6592a0faa78fb44242c7da29c9e63b33f308f733c4614791f"
  end

  def install
    bin.install "regffs"
  end
end
