# Forget Me Not 🌺 - A smart, contextualized todo list. Designed to live in your terminal, and to be in your face.

require 'psych'

puts 'Forget Me Not 🌺\n'

task_file_name = 'tasks.yml'

current_dir = Dir.pwd
dirs = [current_dir]
while File.expand_path('..', current_dir) != current_dir do
  dir = File.expand_path('..', current_dir)
  dirs.push dir
  current_dir = dir
end

tasks = []
dirs.each do |dir|
  path = "#{dir}/#{task_file_name}"
  if File.exists?(path) then
    yaml = Psych.load_file(path)
    tasks.push(yaml["tasks"])
  end
end

tasks = tasks.flatten

tasks.each do |t|
  puts "- #{t}"
end
