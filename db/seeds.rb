[User, Child, Event].each do |klass|
  klass.send :destroy_all
end

Jacqui = User.create!(
  firstname: 'Angela',
	lastname: 'Mikulasev',
	email: 'angela@angela.com',
	password: 'chicken', 
	password_confirmation:'chicken'
)

Angela = User.create!(
  firstname: 'Buddy',
  lastname: 'B',
  email: 'buddy@buddy.com',
  password: 'buddy12', 
  password_confirmation:'buddy12'
)

jacqui = Child.create!(
	firstname: 'Jacqui', 
	middlename: 'Mary',
	lastname: 'Mikulasev',
	date_of_birth: '06/04/1995', 
	gender: 'Female', 
	eye_color: 'Green',
  image: 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRlItJjT4CIrDYXUVaLYv8hjVbTf4zS4RVvolpSVLZxHLoo9cHlDw'
)

angela = Child.create!(
	firstname: 'Angela', 
	middlename: 'S',
	lastname: 'Mikulasev',
	date_of_birth: '06/04/1995', 
	gender: 'Female', 
	eye_color: 'Green',
  image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoZ4UM0ztcKYp972ANxD90G9z2RGH5Ft4RQybxGc-kNXSdg-w5sA'
)

lauren = Child.create!(
	firstname: 'Lauren', 
	middlename: 'Michelle',
	lastname: 'Mikulasev',
	date_of_birth: '21/06/1991', 
	gender: 'Female', 
	eye_color: 'Blue',
  image: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcShNRHSgD-ZBdbHRLR9A3lJvg08AVnKVpOofBfgsCKeEHtqeWti'
)

adam = Child.create!(
	firstname: 'Adam', 
	middlename: 'Francis',
	lastname: 'Mikulasev',
	date_of_birth: '22/9/1987', 
	gender: 'Male', 
	eye_color: 'Green',
  image: 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSKyMjR2ejHxKpXTQzlnC4HhAyRvH6BKaiNxES-jv3XTDmXWVky'
)

first_walk = Event.create!(
	name: 'First Walk',
	date: '10/10/1995',
	location: '9 Tawmii Place Castle Hill',
	image: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQBmb40YGaLsPE91yLxjp0LdbE9zQUxW6JfJCSgaTlvv6UqKYNysw',
	description: 'it was awesome'
)
