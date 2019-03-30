Admin.create!([
  {username: "admin", email: "admin@admin.com", password_digest: "$2a$10$UPcUmoaClahPOMy9iRKLnu4uOB8FOdeFG6bzk5Hq1bKHucRwe1F5C"}
])
User.create!([
  {name: "Laurence Bautista", email: "rorens05@gmail.com", address: "roxas anda pangasinan", birthday: "2019-03-29", contact_no: "09071153969", gender: "Male", password_digest: "$2a$10$M9dsXQIbyLviT7pgszG0DuA7b7Ic9d9U7SCynveB6pKbo3YP36AWe"},
  {name: "Bryan", email: "bry@g.com", address: "binmaley", birthday: "2019-03-29", contact_no: "098383884848", gender: "Male", password_digest: "$2a$10$YiuhmZkMBE/.3Tgrcau8L.VUrHwVKGKy6vobDjvs9c8oZfUgJGEA6"}
])
Routine.create!([
  {name: "Chest And Triceps", description: "The pushup is among the very underrated chest tricep workout for mass exercises in the gym. Not only does this build your chest, triceps, and biceps, but, with little modifications, it has grown to be a workout that makes it possible to develop ripped abs and a strong core. There’s a reason that the military, law enforcement, along with other active professions center their workouts linking to this one useful exercise."},
  {name: "Back And Biceps", description: "A back and bicep workout for mass isn’t just about heavy lifting and endurance. When doing any type of back and bicep exercise, the most important aspect you need to be mindful of is the correct form. Proper form is what makes your back and bicep workout for beginners integral to achieving your fitness goals."}
])
Exercise.create!([
  {name: "Triceps dip", description: "Sets 5 \r\nReps 6-10 \r\nTempo 2110 \r\nRest 60sec", usage: " Grip rings or parallel bars with your arms straight. Keeping your chest up, bend your elbows to lower your body as far as your shoulders allow. Press back up powerfully to return to the start.", routine_id: 1},
  {name: "Bench press", description: "Sets 5 \r\nReps 10 \r\nTempo 2010 \r\nRest 60 sec", usage: " Lie on a flat bench holding a barbell with your hands slightly wider than shoulder-width apart. Brace your core, then lower the bar towards your chest. Press it back up to the start.", routine_id: 2}
])