// function hoisting() {
//   console.log(a)
//   console.log(daHoist())

//   var a = "a";
//   var daHoist = function() {
//     return "now hoisting";
//   }
// }

// hoisting()
// // undefined
// // "now hoisting"

// function hoisting() {
//   var a;
//   function daHoist() {
//     return "now hoisting";
//   }
//   console.log(a)
//   console.log(daHoist())

//   a = "a";
// }


// // What is "this"?

// var username = "megaman";
// var gameCharacter = {
//   username: "mario",
//   prop: {
//     username: "zelda",
//     getUsername: function() {
//       return this.username;
//     }
//   }
// };

// console.log(gameCharacter.prop.getUsername()) // zelda
// var characterName = gameCharacter.prop.getUsername;
// console.log(characterName())

// var cardService = {
//   apiUrl: "https://www.all_the_cards.com/api/v1",

//   getCards(option = {}) {
//     return fetch(`${apiUrl}/cards`)
//       .then(response => response.json())
//       .then(cards => cards)
//       .catch(err => console.log(err))
//   },

//   getCard() {

//   },

//   createCard() {

//   },

//   updateCard() {

//   },

//   destroyCard() {

//   }
// }

// function getGameCards() {
//   cardService.getCards();
// }

// getGameCards()