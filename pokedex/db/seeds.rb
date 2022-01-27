require 'json' #to parse the content
require 'rest-client'

url = 'https://pokeapi.co/api/v2/pokemon/100'

response = RestClient.get url
result = JSON.parse response.to_str

pokeindex = 1

while true
    response = nil
    begin 
        response = RestClient.get("https://pokeapi.co/api/v2/pokemon/#{pokeindex}")
    rescue StandardError => e
        p "My error: #{e}. There aren't more pokemonts to store in your DB."
        raise e
    end
    if response.code != 200
        break
    end
    result = JSON.parse(response.to_str)
    #create a pokemon
    pokemon = Pokemon.create(
        name: result["name"], 
        base_experience: result["base_experience"], 
        weight: result["weight"], 
        height: result["height"], 
        index: result["id"], 
        weaknes: '',
        img: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/#{pokeindex}.png"
    )

    #create and match abilities with the pokemon
    result['abilities'].each do |ability|
        #get the ability id
        url = ability['ability']['url']
        size = url.size-35
        ability_id = url[34,size].to_i
        #create
        pokemon.abilities << Ability.find_or_create_by(
            name: ability['ability']['name'],
            id: ability_id
        )
    end

    #create pokemon types
    result['types'].each do |type|
        #get the type id
        url = type['type']['url']
        size = url.size-32
        type_id = url[31,size].to_i
        #create
        pokemon.poketypes << Poketype.find_or_create_by(
            name: type['type']['name'],
            id: type_id
        )
    end

    pokemon.save
    p "#{result["name"]} has been added to your database."
    pokeindex += 1
end

p "#{pokeindex} pokemons have been added to your database"

