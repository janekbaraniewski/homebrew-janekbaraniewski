class Britify < Formula
    desc "Transforms text into British styles"
    homepage "https://github.com/janekbaraniewski/britify"
    url "https://github.com/janekbaraniewski/britify/releases/download/v1.0.0/britify"
    sha256 "your_sha256_checksum_here"

    def install
      bin.install "britify"
    end

    test do
      system "#{bin}/britify", "--version"
    end
  end
