
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Rustscan < Formula

  desc "Faster Nmap Scanning with Rust" 
  homepage "https://github.com/brandonskerritt/rustscan"
  url "https://github.com/brandonskerritt/RustScan/archive/1.1.0.tar.gz"
  sha256 "8eca05c7857beea8daee145342f3e28b0f03d87aa6d8c21265dab61e29c649d0"
  version "1.1.0"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "rustscan"
    bin.install "target/release/rustscan"
  end
end
