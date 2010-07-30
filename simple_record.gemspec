# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{simple_record}
  s.version = "1.4.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Travis Reeder", "Chad Arimura", "RightScale"]
  s.date = %q{2010-07-30}
  s.description = %q{Drop in replacement for ActiveRecord to Amazon SimpleDB instead.}
  s.email = %q{travis@appoxy.com}
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files = [
    "lib/simple_record.rb",
     "lib/simple_record/active_sdb.rb",
     "lib/simple_record/attributes.rb",
     "lib/simple_record/callbacks.rb",
     "lib/simple_record/encryptor.rb",
     "lib/simple_record/errors.rb",
     "lib/simple_record/exceptions.rb",
     "lib/simple_record/json.rb",
     "lib/simple_record/logging.rb",
     "lib/simple_record/password.rb",
     "lib/simple_record/results_array.rb",
     "lib/simple_record/stats.rb",
     "lib/simple_record/translations.rb"
  ]
  s.homepage = %q{http://github.com/appoxy/simple_record/}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Drop in replacement for ActiveRecord to Amazon SimpleDB instead.}
  s.test_files = [
    "test/conversions.rb",
     "test/model_with_enc.rb",
     "test/my_base_model.rb",
     "test/my_child_model.rb",
     "test/my_model.rb",
     "test/paging_array_test.rb",
     "test/temp_test.rb",
     "test/test_base.rb",
     "test/test_dirty.rb",
     "test/test_encodings.rb",
     "test/test_global_options.rb",
     "test/test_helpers.rb",
     "test/test_json.rb",
     "test/test_lobs.rb",
     "test/test_marshalled.rb",
     "test/test_pagination.rb",
     "test/test_results_array.rb",
     "test/test_simple_record.rb",
     "test/test_usage.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<aws>, [">= 0"])
    else
      s.add_dependency(%q<aws>, [">= 0"])
    end
  else
    s.add_dependency(%q<aws>, [">= 0"])
  end
end

