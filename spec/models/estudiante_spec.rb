require 'rails_helper'

RSpec.describe Estudiante, type: :model do
  context "validaciones de campos" do
    it { should validate_presence_of(:nombres) }
    it { should validate_presence_of(:apellidos) }
    it { should validate_presence_of(:carrera) }

    # Pruebas para carnet
    it { should validate_presence_of(:carnet) }
    it { should validate_uniqueness_of(:carnet) } # Valida que el carnet sea único
  end
end