# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

Video.transaction do
  CSV.foreach(Rails.root + 'data/videos.csv',
              headers: true,
              header_converters: ->(h) { h.downcase.to_sym }) do |video_row|
    video = video_row.to_hash
    Video.create video unless Video.exists? video
  end
end
