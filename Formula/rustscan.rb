
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Rustscan < Formula

  desc "Faster Nmap Scanning with Rust" 
  homepage "https://github.com/brandonskerritt/rustscan"
  url "https://github.com/RustScan/RustScan/archive/1.7.1.tar.gz"
  sha256 "5890e1f44be2b619182a560d7010d91f802cb2cf71e206c9bbeb2a2435213246"
  version "1.7.1"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "rustscan"
    bin.install "target/release/rustscan"
  end
end
