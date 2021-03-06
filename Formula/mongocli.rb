# This file was generated by GoReleaser. DO NOT EDIT.
class Mongocli < Formula
  desc "The MongoDB Command Line Interface (mongocli) is a tool for managing your MongoDB cloud services, like MongoDB Atlas, MongoDB Cloud Manager, and MongoDB Ops Manager."
  homepage "https://github.com/mongodb/mongocli"
  version "0.5.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mongodb/mongocli/releases/download/v0.5.1/mongocli_0.5.1_macos_x86_64.tar.gz"
    sha256 "6129567a35f2642fb8eb835d902f8540bdc3199c381c840cfc0b4753586a35bc"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mongodb/mongocli/releases/download/v0.5.1/mongocli_0.5.1_linux_x86_64.tar.gz"
      sha256 "0a730f09d06d60fb145acd842406d40d36def045298fa61cc894958f7abf1936"
    end
  end

  def install
    bin.install "mongocli"
  end

  test do
    system "#{bin}/mongocli --version"
  end
end
