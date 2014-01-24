SELECT pet.id, pet.name, pet.age, pet.dead
  FROM pet, person_pet, person
  WHERE
  pet.id = person_pet.pet_id AND
  person_pet.person_id = person.id AND
  person.first_name = "Zed";

/*
Ruby version:

class Pet
  @@pet_array # Create array to hold all our people
  attr_accessor :id, :name, :age, :dead, :breed, :owner
  def initialze(*attributes)
    # Set attributes;
    @@pet_array << self
  end

  def self.get_pets
    @@pets_array
  end
end

class Person
  @@people_array
  attr_accessor :id, :first_name, :last_name, :age, :pets
  def initialize(*attributes)
    # Set attributes;
    @@people_array << self
  end

  def self.get_people
    @@people_array
  end
end

# Each person is then an instance of Person, and each pet an instance of Pet
# Then we do something along the lines of:

zed = Person.get_people.select { |person| person.first_name }

pets = Pet.get_pets.select do |pet|
  zed.pets.include?(pet)
end

# First we find the Person instance with first_name "Zed",
# Then we search the array of Pet instances to see which are included
# In his @pets array
*/
 -- Get my pets by person.first_name
SELECT pet.id, pet.name, pet.age, pet.dead
  FROM pet, person_pet, person
  WHERE
  pet.id = person_pet.pet_id AND
  person_pet.person_id = person.id AND
  person.first_name = "Prescott";

-- Get my pets by person.id
SELECT pet.id, pet.name, pet.age, pet.dead
  FROM pet, person_pet, person
  WHERE
  pet.id = person_pet.pet_id AND
  person_pet.person_id = person.id AND
  person.id = "1";

