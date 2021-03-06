#!/usr/bin/env ruby
#### THE FOLLOWING NOTICES ONLY APPLY TO String#camelize and #underscore. The rest is written by simon hicks who is too lazy to bother with copyright notices and so on. 

#
# Some extensions to the built-in Ruby String class.
#
# == Authors
#
# * Ben Bleything <ben@bleything.net>
# * Various others as noted in the code
#
# == Copyright
#
# Copyright (c) 2008 Ben Bleything, except where noted. 
#
# This code released under the terms of the MIT license.
#

class String
  def to_bytes
    bytes = 0
    self.each_byte do |byte|
      bytes <<= 8
      bytes += byte
    end
    return bytes
  end

  def to_k
    Scails::Key.new(self)
  end


  ### NOTE: Stolen from ActiveSupport.  They hold the copyright.  Our
  ### modifications are making it a method on String and removing the
  ### lowerCamelCase option since we don't use it.
  ###
  ### +camelize+ converts strings to CamelCase.
  ###
  ### +camelize+ will also convert '/' to '::' which is useful for converting
  ### paths to namespaces.
  ###
  ### Examples
  ###   "active_record".camelize #=> "ActiveRecord"
  ###   "active_record/errors".camelize #=> "ActiveRecord::Errors"
  def camelize
    return self.gsub( /\/(.?)/ ) {
      "::" + $1.upcase
    }.
    gsub( /(^|_)(.)/ ) {
      $2.upcase
    }
  end

  ### NOTE: Stolen from ActiveSupport.  They hold the copyright.  The only
  ### modifications were to make it a String instance method instead of a
  ### function.
  ###
  ### The reverse of +camelize+. Makes an underscored form from the expression
  ### in the string.
  ###
  ### Changes '::' to '/' to convert namespaces to paths.
  ###
  ### Examples
  ###   "ActiveRecord".underscore #=> "active_record"
  ###   "ActiveRecord::Errors".underscore #=> active_record/errors
  def underscore
    return self.gsub( /::/, '/' ).
    gsub( /([A-Z]+)([A-Z][a-z])/, '\1_\2' ).
    gsub( /([a-z\d])([A-Z])/    , '\1_\2' ).
    tr( "-", "_" ).
    downcase
  end
end
