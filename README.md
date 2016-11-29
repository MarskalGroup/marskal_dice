# MarskalDice

This is simple dice rolling gem to be used for the game of your choice. By default one die will be created with 6 sides.
These defaults can be changed to be any amount of sides and as many dice as you like.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'marskal_dice'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install marskal_dice

## Usage

```ruby

    #create a new die or set of dice using default of 1 die and 
    @dice = MarskalDice.new()
    puts "#{@dice.number_of_dice}, #{@dice.sides}"  # ==> 1, 6
    puts "#{@dice.roll}"                            # ==> a number between 1 and 6  (You can access the most recent roll @dice.total)
    puts "#{@dice.total}"                          # ==> NOT a new roll, simply returns the totals of the most recent call to the 'roll' method
    puts "#{@dice.values}"                          # ==> An array of totals for each individual dice, in this case it will be a single element array = @dice.total 
     
    #create a class with 2 dice of 20 sides each  
    @dice = MarskalDice.new(number_of_dice: 2, sides: 20)
    puts "#{@dice.number_of_dice}, #{@dice.sides}"  # ==> 2, 20
    puts "#{@dice.roll}"                            # ==> a number between 2 and 40  (You can access the most recent roll @dice.total)
    puts "#{@dice.total}"                          # ==> NOT a new roll, simply returns the totals of the most recent call to the "roll" method
    puts "#{@dice.values}"                          # ==> An array of totals for each individual dice, the sum of array should equal the @dice.total  
    
    #Example:
      @dice =  MarskalDice.new(number_of_dice: 3, sides: 8)   # ==> Prepare 3 dice of 8 sides each
      @dice.roll                                              # ==> Assume this resuls in 3 dice with totals of 7, 5 and 4
      @dice.total                                            # 16     (7+5+4 = 16)
      @dice.values                                            #[7, 5, 4]
       
```

## Testing

To run the test suite, download the source, go into MarskalDice top-level directory and run "bundle install" and "rake". 

##Changes

Always refer to [CHANGELOG.md](/CHANGELOG.md) for history or versions and changes.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/MarskalGroup/marskal_dice. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

Copyright (c) 2016-Present Marskal Group LLC
