# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Issuectl < Formula
  desc "Your application description"
  homepage "https://github.com/janekbaraniewski/issuectl"
  version "0.0.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/janekbaraniewski/issuectl/releases/download/v0.0.9/issuectl-darwin-amd64"
      sha256 "21b5a39e988256c9767afd7a759ea53ad836126ca0382524d33a77d0970ae41d"

      def install
        bin.install "issuectl-darwin-amd64" => "issuectl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/issuectl/releases/download/v0.0.9/issuectl-darwin-arm64"
      sha256 "3d34fdd81a3593735e224956496153ebdbf2d617b4b76562ef8b447fdbb6f5a2"

      def install
        bin.install "issuectl-darwin-arm64" => "issuectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/janekbaraniewski/issuectl/releases/download/v0.0.9/issuectl-linux-arm64"
      sha256 "0e900d20986e0c858d0c2c3fe721e47456fffabc593bd1cd68a80c043b231558"

      def install
        bin.install "issuectl-linux-arm64" => "issuectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/janekbaraniewski/issuectl/releases/download/v0.0.9/issuectl-linux-amd64"
      sha256 "f17df592e6f0acc3a8d2bc90540759a8341c9a28b4b0771b52b43e4a0bf30ce9"

      def install
        bin.install "issuectl-linux-amd64" => "issuectl"
      end
    end
  end

  test do
    system "#{bin}/issuectl --version"
  end
end
