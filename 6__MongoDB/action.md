```js

// CREATE:
    1:
        const awesome_instance = new SomeModel({ name: "awesome" });
        await awesome_instance.save();

    2: 
        const awesome_instance = new SomeModel(); // or find instance
        awesome_instance.name = "New cool name";
        await awesome_instance.save();
    
    3:
        await SomeModel.create({ name: "also_awesome" });

// FIND:
    1:
        await Model.findById(id, 'name length').exec(); // WHERE id: id SELECT name & length

    2: 
        await Model.findOne({ country: 'Croatia' }, 'name length').exec(); // WHERE country: Croatia SELECT name & length
    
    3:
        await Athlete.find()
                .where("sport").equals("Tennis") // WHERE sport: Tennis 
                .where("age").gt(17).lt(50) // Additional where query
                .where('likes').in(['vaporizing', 'talking'])
                .skip(100).limit(20) // skip тоже самое что offset
                .sort({ age: -1 })
                .select("name age")
                .exec();

// COUNT:
    1: 
