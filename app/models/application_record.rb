#A Rails Model is a Ruby class that can add database records
 #(think of whole rows in an Excel table), find particular data you're looking for,
  #update that data, or remove data. ... The simplest way to write a model class 
 # is to let Rails do it for you.


class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
