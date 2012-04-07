# A sample Guardfile
# More info at https://github.com/guard/guard#readme

notification :libnotify

guard 'minitest' do
  # with Minitest::Unit
  watch(%r|^test/(.*)_test\.rb|)
  watch(%r|^lib/([^/]+)\.rb|) { |m| "test/unit/#{m[1]}_test.rb" }
  watch(%r|^test/test_helper\.rb|) { "test" }

  # with Minitest::Spec
  # watch(%r|^spec/(.*)_spec\.rb|)
  # watch(%r|^lib/(.*)\.rb|)            { |m| "spec/#{m[1]}_spec.rb" }
  # watch(%r|^spec/spec_helper\.rb|)    { "spec" }
end
