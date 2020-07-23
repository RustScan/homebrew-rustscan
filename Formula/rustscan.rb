
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Rustscan < Formula

  desc "Faster Nmap Scanning with Rust" 
  homepage "https://github.com/brandonskerritt/rustscan"
  url "https://github.com/brandonskerritt/RustScan/releases/download/1.0.1/rustscan.tar.gz"
  sha256 "c8ff94630f5a7d719545287d36422698bfecca73e80f2d8219df64e0ac5b87fa"
  version "1.0.1"
  depends_on "rustup" => :build

  def install
    system "rustup", "toolchain", "install", "stable"
    system "cargo", "install", "rustscan"
  end
end
