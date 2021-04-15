# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Doorkeeper::Application.count.zero?
  Doorkeeper::Application.create(name: "Browser client", redirect_uri: "", scopes: "")
end

if Classroom.count.zero?
  Classroom.create(name: 'Snails');
  Classroom.create(name: 'Roots');
  Classroom.create(name: 'Seeds');
  Classroom.create(name: 'Volcanoes');
end

if Student.count.zero?
  snails = Classroom.find(1);
  roots = Classroom.find(2);
  seeds = Classroom.find(3);
  volcanoes = Classroom.find(4);
  Student.create(name: 'Courtois', birth_date: '2019-01-01', classroom: snails);
  Student.create(name: 'Lunin', birth_date: '2019-01-01', classroom: snails);
  Student.create(name: 'Carvajal', birth_date: '2019-01-01', classroom: snails);
  Student.create(name: 'E. Militao', birth_date: '2019-01-01', classroom: snails);
  Student.create(name: 'Sergio Ramos', birth_date: '2019-01-01', classroom: snails);
  Student.create(name: 'R. Varane', birth_date: '2019-01-01', classroom: snails);
  Student.create(name: 'Nacho', birth_date: '2019-01-01', classroom: snails);
  Student.create(name: 'marcelo', birth_date: '2019-01-01', classroom: snails);
  Student.create(name: 'Odriozola', birth_date: '2019-01-01', classroom: snails);
  Student.create(name: 'F. Mendy', birth_date: '2019-01-01', classroom: snails);
  Student.create(name: 'Kroos', birth_date: '2019-01-01', classroom: snails);
  Student.create(name: 'Modric', birth_date: '2019-01-01', classroom: snails);
  Student.create(name: 'Marc-André ter Stegen', birth_date: '2017-01-01', classroom: roots);
  Student.create(name: 'Sergiño Dest', birth_date: '2017-01-01', classroom: roots);
  Student.create(name: 'Gerard Piqué', birth_date: '2017-01-01', classroom: roots);
  Student.create(name: 'Ronald Araujo', birth_date: '2017-01-01', classroom: roots);
  Student.create(name: 'Clément Lenglet', birth_date: '2017-01-01', classroom: roots);
  Student.create(name: 'Jordi Alba', birth_date: '2017-01-01', classroom: roots);
  Student.create(name: 'Sergi Roberto', birth_date: '2017-01-01', classroom: roots);
  Student.create(name: 'Samuel Umtiti', birth_date: '2017-01-01', classroom: roots);
  Student.create(name: 'Junior Firpo', birth_date: '2017-01-01', classroom: roots);
  Student.create(name: 'Óscar Mingueza', birth_date: '2017-01-01', classroom: roots);
  Student.create(name: 'Pedri', birth_date: '2017-01-01', classroom: roots);
  Student.create(name: 'Lionel Messi', birth_date: '2017-01-01', classroom: roots);
  Student.create(name: 'Jan Oblak', birth_date: '2017-01-01', classroom: seeds);
  Student.create(name: 'José Giménez', birth_date: '2017-01-01', classroom: seeds);
  Student.create(name: 'Stefan Savic', birth_date: '2017-01-01', classroom: seeds);
  Student.create(name: 'Felipe', birth_date: '2017-01-01', classroom: seeds);
  Student.create(name: 'Kieran Trippier', birth_date: '2017-01-01', classroom: seeds);
  Student.create(name: 'Koke', birth_date: '2017-01-01', classroom: seeds);
  Student.create(name: 'Saúl Ñíguez', birth_date: '2017-01-01', classroom: seeds);
  Student.create(name: 'Marcos Llorente', birth_date: '2017-01-01', classroom: seeds);
  Student.create(name: 'Yannick Carrasco', birth_date: '2017-01-01', classroom: seeds);
  Student.create(name: 'João Félix', birth_date: '2017-01-01', classroom: seeds);
  Student.create(name: 'Luis Suárez', birth_date: '2017-01-01', classroom: seeds);
  Student.create(name: 'Moussa Dembele', birth_date: '2017-01-01', classroom: seeds);
  Student.create(name: 'Adrián González', birth_date: '2013-01-01', classroom: volcanoes);
  Student.create(name: 'Joris Gnagnon', birth_date: '2013-01-01', classroom: volcanoes);
  Student.create(name: 'Sergi Gómez', birth_date: '2013-01-01', classroom: volcanoes);
  Student.create(name: 'Aleix Vidal', birth_date: '2013-01-01', classroom: volcanoes);
  Student.create(name: 'Jesús Navas', birth_date: '2013-01-01', classroom: volcanoes);
  Student.create(name: 'Nemanja Gudelj', birth_date: '2013-01-01', classroom: volcanoes);
  Student.create(name: 'Ivan Rakitic', birth_date: '2013-01-01', classroom: volcanoes);
  Student.create(name: 'Suso', birth_date: '2013-01-01', classroom: volcanoes);
  Student.create(name: 'Franco Vázquez', birth_date: '2013-01-01', classroom: volcanoes);
  Student.create(name: 'Óliver Torres', birth_date: '2013-01-01', classroom: volcanoes);
  Student.create(name: 'Luuk de Jong', birth_date: '2013-01-01', classroom: volcanoes);
  Student.create(name: 'Youssef En-Nesyri', birth_date: '2013-01-01', classroom: volcanoes);
end
