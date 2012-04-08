module UseCase
  module Answer
    class Create < ::UseCase::Base
      def initialize(options)
        load_options(:card, :correct, :answer_class, options)
      end

      def execute!
        answer = @answer_class.new( card: @card, correct: @correct )
        if answer.save
          return UseCase::Result.new(success: true, data: { answer: answer })
        else
          return UseCase::Result.new(success: false, data: { answer: answer })
        end
      end
    end
  end
end
