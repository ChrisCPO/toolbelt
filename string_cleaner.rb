#!/usr/bin/env ruby

class StringCleaner
  attr_reader :file_path

  def initialize(file_path)
    @file_path = file_path
  end

  def clean_string
   puts read_file.gsub("\t\r", "").gsub("\n", "").split.join(" ")
  end

  private

  def read_file
    File.read(file_path)
  end
end

StringCleaner.new(ARGV[0]).clean_string
