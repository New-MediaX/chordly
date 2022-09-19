module MusicUtils
  ASSUMED_OCTAVE = 5
  ACCIDENTALS = "(?:#|b|♭)?".freeze
  CHORD_TYPES = "(maj|min|m|sus|dim|aug)?".freeze
  CHORD_EXTENSIONS = "(2|4|5|7)?".freeze
  BASS_NOTE = "(?:\/([A-Ga-g]#{ACCIDENTALS}))?".freeze
  NOTE_REGEX = /([A-Ga-g]#{ACCIDENTALS})#{CHORD_TYPES}#{CHORD_EXTENSIONS}#{BASS_NOTE}/

  def extract_note(potential_chord)
    no_note_proc = -> { potential_chord }

    scan_chord(potential_chord, no_note_proc)
  end

  def extract_note!(potential_chord)
    no_note_proc = -> { raise(ArgumentError, "No valid note found in #{potential_chord}") }

    scan_chord(potential_chord, no_note_proc)
  end

  private

  def scan_chord(chord, no_match_proc)
    matches = chord.scan(/^#{NOTE_REGEX}$/)

    matches.empty? ? no_match_proc.call : matches.flatten.first
  end
end
