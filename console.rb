require('pry-byebug')
require_relative('models/property')

Property.delete_all()

property1 = Property.new({
'address'=> '12 Rayborn St',
'value'=> 350000,
'bedrooms'=> 4,
'year'=> 1995
})
property1.save()

property2 = Property.new({
'address'=> '1 Frey St',
'value'=> 250000,
'bedrooms'=> 3,
'year'=> 1990
})
property2.save()

property1.delete()

Property.all()
frey_st = Property.find(property2.id)
complete_address_property2 = Property.find_using_address('1 Frey St')
binding.pry
nil
