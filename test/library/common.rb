# frozen_string_literal: true

require 'json'
require 'pathname'

#
# Gets the terraform state as a json object. Not portable, only works for this use-case and this specific directory structure.
# In that the state files are located in the `integration` directory and named the same as their root_module_directory in the `fixture` directory
#
# @author Jedidiah Foster
#
class StateFileReader
  #
  # Initialize the class.
  #
  def initialize
    @path = Pathname(caller_locations.first.absolute_path)
    @testname = Pathname(@path.dirname).parent.basename
    @state_file = "test/fixture/#{@testname}/terraform.tfstate.d/kitchen-terraform-default-#{@testname}/terraform.tfstate"
  end

  #
  # Reads the terraform state file and returns it as a json object.
  #
  # @return JSON object of the terraform state file.
  #
  def read
    JSON.parse(File.read(@state_file))
  end

  #
  # Simply returns the @state_file path. For use when using `json` controls.
  #
  # @return @state_file path.
  #
  def state_file_path
    @state_file
  end
end
