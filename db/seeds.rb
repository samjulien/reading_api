Book.destroy_all
Genre.destroy_all

fiction = Genre.create!(name: 'Fiction')
non_fiction = Genre.create!(name: 'Non-Fiction')
poetry = Genre.create!(name: 'Poetry')
sci_fi = Genre.create!(name: 'Sci-Fi')

Book.create!([
	{title: "Snowcrash",
	 author: "Neil Stephenson",
	 review: "Only once in a great while does a writer come along who defies comparison—a writer so original he redefines the way we look at the world. Neal Stephenson is such a writer and Snow Crash is such a novel, weaving virtual reality, Sumerian myth, and just about everything in between with a cool, hip cybersensibility to bring us the gigathriller of the information age.",
	 amazon_id: "0553380958",
	 rating: 5,
	 genre: sci_fi},
	 {title: "Jayber Crow",
	 	author: "Wendell Berry",
	 	review: "Jayber Crow, born in Goforth, Kentucky, orphaned at age ten, began his search as a 'pre-ministerial student' at Pigeonville College. There, freedom met with new burdens and a young man needed more than a mirror to find himself. But the beginning of that finding was a short conversation with 'Old Grit,' his profound professor of New Testament Greek.",
	    amazon_id: "1582431604",
	    rating: 4,
	    genre: fiction},
	 {title: "A Timbered Choir",
	 	author: "Wendell Berry",
	 	review: "Berry’s Sabbath poems embrace much that is elemental to human life--beauty, death, peace, and hope.In his preface to the collection, Berry writes about the growing audience for public poetry readings. While he sees poetry in the public eye as a good thing, Berry asks us to recognize the private life of the poem.",
	    amazon_id: "1582430063",
	    rating: 3,
	    genre: poetry},
	 {title: "What Are People For?",
	 	author: "Wendell Berry",
	 	review: "Wendell Berry identifies himself as both 'a farmer of sorts and an artist of sorts,' which he deftly illustrates in the scope of these 22 essays. Ranging from America’s insatiable consumerism and household economies to literary subjects and America’s attitude toward waste, Berry gracefully navigates from one topic to the next. He speaks candidly about the ills plaguing America and the growing gap between people and the land. Despite the somber nature of these essays, Berry’s voice and prose provide an underlying sense of faith and hope. He frames his reflections with poetic responsibility, standing up as a firm believer in the power of the human race not only to fix its past mistakes but to build a future that will provide a better life for all.",
	    amazon_id: "1582434875",
	    rating: 4,
	    genre: non_fiction},   
	])
