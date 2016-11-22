require 'ruboty/duty/actions/list'
require 'ruboty/duty/actions/add'
require 'ruboty/duty/actions/delete'

module Ruboty
  module Handlers
    class Duty < Base
      on(/duty list\z/,   name: 'list',   description: 'List all duties')
      on(/duty add\z/,    name: 'add',    description: 'Add a new duty')
      on(/duty delete\z/, name: 'delete', description: 'Delete a duty')

      def list(message)
        Ruboty::Duty::Actions::List.new(message).call
      end

      def add(message)
        Ruboty::Duty::Actions::Add.new(message).call
      end

      def delete(message)
        Ruboty::Duty::Actions::Delete.new(message).call
      end
    end
  end
end
