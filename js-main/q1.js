// 1. Write code to get array of names from given array of users
// 2. Get back only active users
// 3. Sort users by age descending

const users = [
  {
    id: 1,
    name: "Jack",
    isActive: true,
    age: 20,
  },
  {
    id: 2,
    name: "John",
    isActive: true,
    age: 18,
  },
  {
    id: 3,
    name: "Mike",
    isActive: false,
    age: 30,
  },
];


var arr=[]
for(i=0;i<users.length;i++){
  arr.push(users[i].name)
  if(users[i].isActive === false){
      arr.pop()
  }
}
console.log(arr)

// es6 

const getNames=(users)=>{
    var names =  users.map(user => user.name)
    return names ;
}

const activeUsers = users.filter(user => user.isActive).map((user)=>user.name)
console.log('active==>',activeUsers)

const sortedUsers = users.slice().sort((a,b)=>b.age-a.age).map((user)=>user.name)
console.log('sorted==>',sortedUsers)




console.log(getNames(users))


