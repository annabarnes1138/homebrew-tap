# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class YetAnotherChartReleaser < Formula
  desc "Yet Another Helm Chart Releaser"
  homepage "https://github.com/stecky/yet-another-chart-releaser/"
  version "0.4.1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/stecky/yet-another-chart-releaser/releases/download/v0.4.1/yet-another-chart-releaser_0.4.1_darwin_amd64.tar.gz"
    sha256 "bd43e69adea660f8b5e90b0c7822fd7cd3a4eb8858aec47cf3a705e6fc47b816"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/stecky/yet-another-chart-releaser/releases/download/v0.4.1/yet-another-chart-releaser_0.4.1_linux_amd64.tar.gz"
    sha256 "37307dc254c2253a75f913bfd600c5336afcb7f6bcb2f9af1f9f19899406ea82"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/stecky/yet-another-chart-releaser/releases/download/v0.4.1/yet-another-chart-releaser_0.4.1_linux_armv6.tar.gz"
    sha256 "a17c5be50cf339debf01232135f47486166042f8490d74b73e4de1823555b32a"
  end

  def install
    bin.install "yacr"
  end

  test do
    system "#{bin}/yacr --version"
  end
end
