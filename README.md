# Credit Cards

## Privacy Please

Some methods you want so they can only be called within the method. these are called `Private Methods` and are placed below the `private` line in the code.

### Release 1

Try calling the `my_card_number` method in the `DRIVER CODE` section and see what happens.

## Attr' boy

There are 3 attribute methods

- attr_reader
- attr_writer
- attr_accessor

They are used like this. See our original code:

```ruby
class Thing

	def intialize(info)
		@info = info
	end

	def call_info
		@info
	end

end

 # DRIVER CODE

thing = Thing.new(42)
thing.call_info -> returns 42
```

We can also save space and write cleaner, quicker code like this to read our attribute:

```ruby
class Thing

	attr_reader :info

	def intialize(info)
		@info = info
	end

end

 # DRIVER CODE

thing = Thing.new(42)
thing.info -> returns 42
```

- attr_reader for reading information
- attr_writer for writing/updating information
- attr_accessor to do both

These tools can be used as we have described them here, in lecture or you can google `attr_accessor ruby` for more information.

## Release 2

Read through the code to see what it is doing.

## Release 3

Some of the code can be replaced with attr methods. Be careful that what you are replacing does the same thing as the attr method. You don't want to change the function of your class. Note that setter (writer) methods take in an argument in parentheses when written out, where as attr_writer allows you to use the `=` sign instead.


```ruby
 # setter method written out
def new_info(info)
	@info = info
end

thing.new_info(49)
 # vs.
 # attr_writer method
attr_writer :info

thing.info = 49
```

Comment out the original solution, copy it to refactored solution, and use attr methods to refactor.

##Reflect

Respond to the questions at the bottom of the `credit_cards.rb` file.
