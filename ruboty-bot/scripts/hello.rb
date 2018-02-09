module Ruboty
  module Handlers
    class HelloWorld < Base
      on(/hello\z/i, name: "hello_world", description: "Return Hello to World")

      def hello_world(message)
        message.reply('World!')
      end
    end
  end
end
