require 'helper'

class TestShaken < Test::Unit::TestCase
  should "sound like Sean Connery" do
    assert_equal "Sheven shexy Shcotshmen shcrambling in Shan Francishco", "Seven sexy Scotsmen scrambling in San Francisco".shaken
    assert_equal "I shaw a ship in shight, Mishsh Money Penny", "I saw a ship in sight, Mishsh Money Penny".shaken
    assert_equal "You're cold? shtamp your feet", "You're cold? stamp your feet".shaken
    assert_equal "ALL CAPSH SHHOULD WORK TOO", "ALL CAPS SHOULD WORK TOO".shaken
    assert_equal "I like wordsh", "I like wordsh"
    assert_equal "", "".shaken
    assert_equal "U.Sh.Sh Enterprishe", "U.S.S Enterprise".shaken
  end
end
