class Converter
  INPUT_ENCODING  = "iso-8859-1"
  OUTPUT_ENCODING = "utf-8"
  CONVERSIONS     = {
    "á" => "ą",
    "è" => "ś",
    "ç" => "ć",
    "à" => "ż",
    "ò" => "ź",
    "ó" => "ó",
    "ì" => "ł",
    "é" => "ę",
    "ñ" => "ń",
    "Á" => "Ą",
    "È" => "Ś",
    "Ç" => "Ć",
    "À" => "Ż",
    "Ò" => "Ź",
    "Ó" => "Ó",
    "Ì" => "Ł",
    "É" => "Ę",
    "Ñ" => "Ń",
  }

  def self.import(input)
    input.encode!(OUTPUT_ENCODING, INPUT_ENCODING)
    CONVERSIONS.each { |from, to| input.tr!(from, to) }

    input
  end

  def self.export(input)
    CONVERSIONS.each { |from, to| input.tr!(to, from) }

    input.encode(INPUT_ENCODING)
  end
end
