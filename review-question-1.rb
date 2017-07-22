pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]

def find_ability_url (array)
  lil_bub = array.select do |pokiez|
    pokiez[:name] == "bulbasaur"
  end
  lil_bub[0][:abilities][0][:ability][:url]
end

find_ability_url(pokemon)


def exp_over_40 (array)
  array.first do |pokiez|
    [pokiez][:base_experience] > 40
  end
end

def all_poke_exp_over_40 (array)
  array.select do |pokiez|
    pokiez[:base_experience] > 40
  end
end
      #  exp_over_40(pokemon)
    #  all_poke_exp_over_40(pokemon)
    # find_ability_url(pokemon)

    def all_pokemon_names (array)
      array.collect do |pokies|
        pokies[:name]
      end
    end

      def all_pokemon_names (array)
       return_array = []
      array.select do |pokies|
       return_array << pokies[:name]
      end
      return_array
    end

    all_pokemon_names(pokemon)


    def pokeweight (ary)
      ary.any?{|pokes| pokes[:weight] > 60}
    end

# all_pokemon_names
# # How would you get the url for Bulbasaur's ability?
# How would you return the first pokemon with base experience over 40?
# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
# How would you return an array of all of the pokemon's names?
# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
#  whatever method you use should return true if there are any such pokemon, false if not.
