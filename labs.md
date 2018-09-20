---
layout: post-no-feature
comments: true
title: Laboratories
---

## Hostnames

Each *Raspberry Pi* has been assigned a unique [*hostname*](https://en.wikipedia.org/wiki/Hostname).
We decided to name them after [Digimons](https://en.wikipedia.org/wiki/Digimon) and [Pokemons](https://en.wikipedia.org/wiki/Pokemon).
Therefore, as part of your kit, you should have a *Raspberry Pi* labeled with one of the following identifiers:

**Digimons**  
[Agumon](http://digimon.wikia.com/wiki/Agumon_(Adventure)),
[Armadillomon](http://digimon.wikia.com/wiki/Armadillomon_(Adventure)),
[Biyomon](http://digimon.wikia.com/wiki/Biyomon_(Adventure)),
[Gabumon](http://digimon.wikia.com/wiki/Gabumon_(Adventure)),
[Gatomon](http://digimon.wikia.com/wiki/Gatomon_(Adventure)),
[Gomamon](http://digimon.wikia.com/wiki/Gomamon_(Adventure)),
[Hawkmon](http://digimon.wikia.com/wiki/Hawkmon_(Adventure)),
[Meicoomon](http://digimon.wikia.com/wiki/Meicoomon_(Adventure)),
[Palmon](http://digimon.wikia.com/wiki/Palmon_(Adventure)),
[Patamon](http://digimon.wikia.com/wiki/Patamon_(Adventure)),
[Tentomon](http://digimon.wikia.com/wiki/Tentomon_(Adventure)),
[Veemon](http://digimon.wikia.com/wiki/Veemon_(Adventure)),
[Wormmon](http://digimon.wikia.com/wiki/Wormmon_(Adventure)).

**Pokemons**  
[Bulbasaur](https://pokemondb.net/pokedex/bulbasaur),
[Caterpie](https://pokemondb.net/pokedex/caterpie),
[Charmander](https://pokemondb.net/pokedex/charmander),
[Clefairy](https://pokemondb.net/pokedex/clefairy),
[Diglett](https://pokemondb.net/pokedex/diglett),
[Jigglypuff](https://pokemondb.net/pokedex/jigglypuff),
[Meowth](https://pokemondb.net/pokedex/meowth),
[Pikachu](https://pokemondb.net/pokedex/pikachu),
[Psyduck](https://pokemondb.net/pokedex/psyduck),
[Rattata](https://pokemondb.net/pokedex/rattata),
[Squirtle](https://pokemondb.net/pokedex/squirtle).

## Helpful commands

### Connect via SSH
`ssh -XC student@<hostname>.local`

**Note —** In the command above you must replace *\<hostname\>* with the identifier in the label of your *Raspberry Pi*. For example:  
`ssh -XC student@agumon.local`

### Reboot
`sudo reboot`

### Power Off
`sudo shutdown -h now`
