
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Rustscan < Formula

  desc "Faster Nmap Scanning with Rust" 
  homepage "https://github.com/brandonskerritt/rustscan"
  url "https://github.com/RustScan/RustScan/archive/1.6.0.tar.gz"
  sha256 "a4ebe4b8eda88dd10d52d961578c95b5427cc34b3bf41e5df729a37122c68965"
  version "1.6.0"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "rustscan"
    bin.install "target/release/rustscan"
  end
end
