## OpenCurriculum Flashcards
This is a flashcard webapp for the OpenCurriculum suite.  It uses [Spaced
Repetition](http://en.wikipedia.org/wiki/Spaced_repetition) to determine how to
best queue up the next flashcard.

### Architecture
You have a Deck of Cards.  They are shown to you one after the other for as long
as you want.  You tell the system, after each card is shown, whether you got the
right or the wrong answer.  This is logged in a CardResponse object.

As it uses Spaced Repetition, you will see the cards which you got wrong more
frequently than the cards which you got right.

Markdown may be used to define content for either the front or the back of the
card.

### Development

To get started developing from scratch, run the following from the root dir:

    ./script/bootstrap.sh

To run the minitests, run:

    bundle exec rake test

To run the spinach tests, run:

    bundle exec rake spinach

To run the entire test suite, run:

    bundle exec rake test:all

To run them automatically while developing, run:

    bundle exec guard

To run the documentation server:

    bundle exec yard server -r
