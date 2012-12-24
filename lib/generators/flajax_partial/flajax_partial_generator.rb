class FlajaxPartialGenerator < Rails::Generators::Base
  self.source_root([File.expand_path("../../../../app/views", __FILE__)])

  def create_flajax_partial
    directory 'flajax/', 'app/views/layouts/'
  end
end
