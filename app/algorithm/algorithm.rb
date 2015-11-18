#Get distances between each beer and each category
def distance_abv(a,b,c,d)
  sum = ((1.0-a)**2)+((0.0-b)**2)+((0.0-c)**2)+((0.0-d)**2)
  res = Math.sqrt(sum)
  return res
end

def distance_flavor(a,b,c,d)
  sum = ((0.0-a)**2)+((1.0-b)**2)+((0.0-c)**2)+((0.0-d)**2)
  res = Math.sqrt(sum)
  return res
end

def distance_color(a,b,c,d)
  sum = ((0.0-a)**2)+((0.0-b)**2)+((1.0-c)**2)+((0.0-d)**2)
  res = Math.sqrt(sum)
  return res
end

def distance_bubbly(a,b,c,d)
  sum = ((0.0-a)**2)+((0.0-b)**2)+((0.0-c)**2)+((1.0-d)**2)
  res = Math.sqrt(sum)
  return res
end

#Get index of smaller distance.
def get_smaller(a,b,c,d)
  abv = distance_abv(a,b,c,d)
  flavor = distance_flavor(a,b,c,d)
  color = distance_color(a,b,c,d)
  bubbly = distance_bubbly(a,b,c,d)
  arr = [abv,flavor,color,bubbly]
  return arr.index(arr.min)
end

#Get group of beer and assign it in db
Beer.all.each do |i|
  index = get_smaller(i.abv,i.flavor,i.color,i.bubbly)
  case index
  when 0
    Beer.find(i.id).update_attribute(:group, "abv")
  when 1
    Beer.find(i.id).update_attribute(:group, "flavor")
  when 2
    Beer.find(i.id).update_attribute(:group, "color")
  when 3
    Beer.find(i.id).update_attribute(:group, "bubbly")
  end
end


=begin
if i.id == 1
  Beer.find(i.id).update_attribute(:group, "bubbly")
end
=end
