require "ruboty/duty/actions/list"
require "ruboty/duty/actions/add"
require "ruboty/duty/actions/delete"

module Ruboty
  module Handlers
    # description
    class Duty < Base
      on /list\z/, name: 'list', description: 'description'
      on /add\z/, name: 'add', description: 'description'
      on /delete\z/, name: 'delete', description: 'description'


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
