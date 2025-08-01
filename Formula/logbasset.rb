# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Logbasset < Formula
  desc "LogBasset - A tool for querying and tailing logs"
  homepage "https://github.com/andreagrandi/logbasset"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/andreagrandi/logbasset/releases/download/v0.4.2/logbasset_Darwin_x86_64.tar.gz"
      sha256 "027da6e8e9f82f45509f962bb1c0805b3e871a9947a2a132857ac12fa6edd219"

      def install
        bin.install "logbasset"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/andreagrandi/logbasset/releases/download/v0.4.2/logbasset_Darwin_arm64.tar.gz"
      sha256 "4f916390e87ae3eed0cb50b4a74f698cfe8ca1cae1849df5cd1a6c321b65601d"

      def install
        bin.install "logbasset"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/andreagrandi/logbasset/releases/download/v0.4.2/logbasset_Linux_x86_64.tar.gz"
      sha256 "a927c404632b12ee31be5c63be4d985dbddb131bb968d9089e8e579d4f69e4b0"
      def install
        bin.install "logbasset"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/andreagrandi/logbasset/releases/download/v0.4.2/logbasset_Linux_arm64.tar.gz"
      sha256 "adcc10fe9602a6046b803594c40bd3839408d54d256d071d54fd6d047ed9f25e"
      def install
        bin.install "logbasset"
      end
    end
  end

  test do
    system "#{bin}/logbasset --version"
  end
end
