class VetProvidersController < ApplicationController

  def index
    @vet_providers = VetProvider.all
  end

end
