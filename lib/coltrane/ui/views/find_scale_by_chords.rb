module Coltrane
  module UI
    module Views
      class FindScaleByChords < BaseView
        questions({
          chords: { statement: 'Which Chords?' }
        })

        def render
          chords = Commands::GetChordsFromString.run(params[:chords])
          Commands::FindScaleByChords.run(*chords)
        end
      end
    end
  end
end
