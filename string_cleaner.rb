#!/usr/bin/env ruby

class StringCleaner
  attr_reader :file_path

  def initialize(file_path)
    @file_path = file_path
  end

  def clean_string
    header
    puts read_file.gsub("\t\r", "").gsub("\n", "").split.join(" ")
    closer
  end

  private

  def header
    puts ""
    puts "--START OF FILE--"
  end

  def closer
    puts "--END OF FILE--"
  end

  def read_file
    File.read(file_path)
  end
end

StringCleaner.new(ARGV[0]).clean_string
