# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{scails}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["simon-hicks"]
  s.date = %q{2010-07-30}
  s.default_executable = %q{scails}
  s.description = %q{Scails is a basic framework for live-coding/algorithmic composition, inspired by impromtu and Topher Cyll's amazing book "Practical Ruby Projects". It doesn't do anything that you couldn't do using other gems (in fact most of the code was lifted straight out of either MIDIator or scruby), but it does things the way I want them done...}
  s.email = %q{ruby@simonhicks.org}
  s.executables = ["scails"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION.yml",
     "bin/scails",
     "lib/extensions/array.rb",
     "lib/extensions/kernel.rb",
     "lib/extensions/numeric.rb",
     "lib/extensions/object.rb",
     "lib/extensions/string.rb",
     "lib/scails.rb",
     "lib/scails/chord.rb",
     "lib/scails/clock.rb",
     "lib/scails/constants.rb",
     "lib/scails/control_oscillator.rb",
     "lib/scails/extensions.rb",
     "lib/scails/instrument.rb",
     "lib/scails/key.rb",
     "lib/scails/live.rb",
     "lib/scails/live/session.rb",
     "lib/scails/metronome.rb",
     "lib/scails/midiator.rb",
     "lib/scails/midiator/driver.rb",
     "lib/scails/midiator/driver_registry.rb",
     "lib/scails/midiator/drivers/alsa.rb",
     "lib/scails/midiator/drivers/core_midi.rb",
     "lib/scails/midiator/drivers/dls_synth.rb",
     "lib/scails/midiator/drivers/mmj.rb",
     "lib/scails/midiator/drivers/reaktor.rb",
     "lib/scails/midiator/drivers/winmm.rb",
     "lib/scails/midiator/exceptions.rb",
     "lib/scails/midiator/instrument.rb",
     "lib/scails/midiator/interface.rb",
     "lib/scails/motive.rb",
     "lib/scails/pitch_class.rb",
     "lib/scails/rhythm.rb",
     "lib/scails/shortcuts.rb",
     "live.scails.rb",
     "notes.txt",
     "practice/psy.scails.rb",
     "psy.scails.rb",
     "reason/MIDI_Implementation_Charts_Reason_Version_4.pdf",
     "reason/redrum.txt",
     "scails.gemspec",
     "scails_patchbay.mpb",
     "scheduling_notes.md",
     "score.scails.rb",
     "sessions/simple_piano.scails.rb",
     "sessions/slightly_better_piano.scails.rb",
     "spec/scails_spec.rb",
     "spec/spec_helper.rb",
     "test.scails.rb",
     "tutorials/1_getting_started.haml",
     "tutorials/1_getting_started.html",
     "tutorials/1_getting_started.md",
     "tutorials/2_making_sound.haml",
     "tutorials/2_making_sound.html",
     "tutorials/2_making_sound.md",
     "tutorials/3_scheduling_notes.haml",
     "tutorials/3_scheduling_notes.html",
     "tutorials/3_scheduling_notes.md"
  ]
  s.homepage = %q{http://github.com/simon-hicks/scails}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{live-coding/algorithmic composition for ruby}
  s.test_files = [
    "spec/scails_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end

