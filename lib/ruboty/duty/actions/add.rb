module Ruboty
  module Duty
    module Actions
      class Add < Ruboty::Actions::Base
        def call
          message.reply(add)
        rescue => e
          message.reply(e.message)
        end

        private
        def add
          # TODO: main logic
        end
      end
    end
  end
end
