module ApplicationHelper
require 'awesome_print'

  # Debug and Logging

  $debug_msg = ''
  $debug_hash = {}
  @ap_colors = {
    :args       => :red,   # purpleish
    :array      => :white,
    :bigdecimal => :blue,
    :class      => :yellow,
    :date       => :blueish,
    :falseclass => :red,
    :fixnum     => :blue,
    :float      => :blue,
    :hash       => :gray,  # redish
    :keyword    => :cyan,  # cyanish
    :method     => :purpleish,
    :nilclass   => :red,
    :rational   => :blue,
    :string     => :yellowish,
    :struct     => :pale,
    :symbol     => :cyanish,
    :time       => :blue,
    :trueclass  => :green,
    :variable   => :cyanish 
  }

  def log key, value = :method_name, indent = 4

    if key.class == Symbol && value == :method_name
      print "\nmethod: "
      ap key, indent: 0, color: @ap_colors  
    else
      indent.times { print ' '}
      print '    ' + key + ': '
      ap value, indent: 8 + indent, color: @ap_colors
    end
  end
  
end
