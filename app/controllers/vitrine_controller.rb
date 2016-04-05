class VitrineController < ApplicationController

  def index
    @versions = TdVersion.all
    @tag_definitions = TagDefinition.all
  end

end