function currentDeck(name, subject) {
  this.name = name;
  this.subject = subject;
}

currentDeck.prototype.format = function() {
  return this.name + " is your deck on " + this.subject;
}

