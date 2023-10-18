
class Pokemon {
  int? id;
  String? name;
  int? height;
  int? weight;
  List<PokemonType>? types;
  PokemonSprite? sprites;
  List<PokemonStat>? stats;

  Pokemon({
    this.id,
    this.name,
    this.height,
    this.weight,
    this.types,
    this.sprites,
    this.stats,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      id: json['id'],
      name: json['name'],
      height: json['height'],
      weight: json['weight'],
      types: List<PokemonType>.from((json['types'] as List).map((type) => PokemonType.fromJson(type))),
      sprites: PokemonSprite.fromJson(json['sprites']),
      stats: List<PokemonStat>.from((json['stats'] as List).map((stat) => PokemonStat.fromJson(stat))),
    );
  }
}

class PokemonStat {
  int? baseStat;
  StatName? stat;

  PokemonStat({
    this.baseStat,
    this.stat,
  });

  factory PokemonStat.fromJson(Map<String, dynamic> json) {
    return PokemonStat(
      baseStat: json['base_stat'],
      stat: StatName.fromJson(json['stat']),
    );
  }
}

class StatName {
  String? name;

  StatName({
    this.name,
  });

  factory StatName.fromJson(Map<String, dynamic> json) {
    return StatName(
      name: json['name'],
    );
  }
}

class PokemonType {
  int? slot;
  TypeName? type;

  PokemonType({
    this.slot,
    this.type,
  });

  factory PokemonType.fromJson(Map<String, dynamic> json) {
    return PokemonType(
      slot: json['slot'],
      type: TypeName.fromJson(json['type']),
    );
  }
}

class TypeName {
  String? name;
  String? url;

  TypeName({
    this.name,
    this.url,
  });

  factory TypeName.fromJson(Map<String, dynamic> json) {
    return TypeName(
      name: json['name'],
      url: json['url'],
    );
  }
}

class PokemonSprite {
  String? frontDefault;
  Other? other;

  PokemonSprite({
    this.frontDefault,
    this.other,
  });

  factory PokemonSprite.fromJson(Map<String, dynamic> json) {
    return PokemonSprite(
      frontDefault: json['front_default'],
      other: Other.fromJson(json['other']),
    );
  }
}

class Other {
  OfficialArtwork officialArtwork;

  Other({
    required this.officialArtwork,
  });

  factory Other.fromJson(Map<String, dynamic> json) {
    return Other(
      officialArtwork: OfficialArtwork.fromJson(json['official-artwork']),
    );
  }
}

class OfficialArtwork {
  String? frontDefault;

  OfficialArtwork({
    this.frontDefault,
  });

  factory OfficialArtwork.fromJson(Map<String, dynamic> json) {
    return OfficialArtwork(
      frontDefault: json['front_default'],
    );
  }
}
