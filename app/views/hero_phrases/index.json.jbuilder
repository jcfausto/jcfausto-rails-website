json.array!(@hero_phrases) do |hero_phrase|
  json.extract! hero_phrase, :id, :text
  json.url hero_phrase_url(hero_phrase, format: :json)
end
