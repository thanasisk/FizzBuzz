# a simple Rakefile for the assembler output
task :default do
  sh "nasm -f elf -o fizzBuzz.o fizzBuzz.asm"
  sh "ld -o fizzBuzz fizzBuzz.o" 	
end

task :clean do
  sh "rm *.o fizzBuzz"
  puts "Cleaned"
end
