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

require '../../data/videos.csv'

# Video.create([{ youtube_id: 'kdlHV6ceI_g', episode_number: 701, name: 'Winter Cabin', description: 'In the midst of a cold, wintry forest, Bob Ross gently places a magical little wooden shanty upon a bed of soft snow.', air_date: '1985-10-02', season_num: 7 }])

require 'csv'

Video.transaction do
  CSV.foreach(Rails.root + 'data/videos.csv',
              headers: true,
              header_converters: ->(h) { h.downcase.to_sym }) do |video_row|
    video = video_row.to_hash
    Video.create video unless Video.exists? video
  end
end
