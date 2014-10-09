require 'vcr'

VCR.configure do |c|
  c.hook_into :webmock
  c.cassette_library_dir = 'features/vcr_cassettes'
  c.ignore_hosts '127.0.0.1', ' localhost'
  c.default_cassette_options = { record: :once }
end

VCR.cucumber_tags do |t|
  t.tag '@vcr', match_requests_on: [:method, :host, :path]
end
