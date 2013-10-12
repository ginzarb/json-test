publishers = Publisher.create([{name: 'ascii'}, {name: 'oreilly'}, {name: 'pragprog'}])
authros = Author.create([{name: 'bob'}, {name: 'alice'}])

Book.create(title: 'Ruby', price: 100, publisher: publishers.first, authors: [authros.first])
Book.create(title: 'rails', price: 200, publisher: publishers.second, authors: [authros.first])

Book.create(title: 'Python', price: 300, publisher: publishers.first, authors: [authros.second])
Book.create(title: 'Perl', price: 150, publisher: publishers.second, authors: [authros.second])

