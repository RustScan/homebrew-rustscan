
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Rustscan < Formula

  desc "Faster Nmap Scanning with Rust" 
  homepage "https://github.com/brandonskerritt/rustscan"
  url "https://github.com/RustScan/RustScan/archive/1.8.0.tar.gz"
  sha256 "050fb291563bcd4e3578e9d26459b044c152bde6622abf4294b55f9341b43342"
  version "1.7.1"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "rustscan"
    bin.install "target/release/rustscan"
  end
end
