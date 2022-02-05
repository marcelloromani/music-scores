%{
Author: Marcello Romani
Title: Hello Lilypond
%}

\header{
  title = "Hello Lilypond"
}

drh = \drummode {
    hh8[ hh8] hh8[ hh8] hh8[ hh8] hh8[ hh8]
    hh8[ hh8] hh8[ hh8] hh8[ hho8]
}

drl = \drummode {
    bd4 sn4 bd8 bd8 sn4
    bd4 sn4 bd8 bd8 sn16 sn16 tomh8
}

\new DrumStaff \with { instrumentName = "drums" }
<<
  \tempo 4 = 80
  \time 4/4
  \new DrumVoice { \stemUp \drh }
  \new DrumVoice { \stemDown \drl }
>>


\version "2.22.1"  % necessary for upgrading to future LilyPond versions.
