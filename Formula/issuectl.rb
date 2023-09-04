# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Issuectl < Formula
  desc "Your application description"
  homepage "https://github.com/janekbaraniewski/issuectl"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/issuectl/releases/download/v0.1.9/issuectl-darwin-arm64-0.1.9"
      sha256 "6fa7a99b86076d93119a21a7169f16fc57f7efcf37243d8c0fa7fe71df6337a1"

      def install
        bin.install "issuectl-darwin-arm64-0.1.9" => "issuectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/janekbaraniewski/issuectl/releases/download/v0.1.9/issuectl-darwin-amd64-0.1.9"
      sha256 "5614e64020331438bb5612ee6afe68ae954bd0907e6d08eb6a4501be1e99fed9"

      def install
        bin.install "issuectl-darwin-amd64-0.1.9" => "issuectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/janekbaraniewski/issuectl/releases/download/v0.1.9/issuectl-linux-amd64-0.1.9"
      sha256 "f0bddb57659bdbb2ffb7a7a17de9d83fd825349d1a4a471e679a4e0e99d17c22"

      def install
        bin.install "issuectl-linux-amd64-0.1.9" => "issuectl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/janekbaraniewski/issuectl/releases/download/v0.1.9/issuectl-linux-arm64-0.1.9"
      sha256 "c829e68d7b4f3905e3932a8ca77e6a0f358968bc87cbb09df59ad72ab13e6c06"

      def install
        bin.install "issuectl-linux-arm64-0.1.9" => "issuectl"
      end
    end
  end

  test do
    system "#{bin}/issuectl --version"
  end
end
