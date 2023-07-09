Feature:

Scenario:
    * url 'https://db.ygoprodeck.com/api/v7/cardinfo.php'
    * param name = 'Blue-Eyes White Dragon'
    # * params { name:'Blue-Eyes White Dragon'}
    * method get
    # * print `======A partir d'ici c'est response.data!======`
    # * print response.data
    # * match response.data contains { name:"Blue-Eyes White Dragon" }

Scenario:
    * url 'https://jsonplaceholder.typicode.com'
    * path 'users'
    * method get
    * match response contains deep { id: 1, name: 'Leanne Graham', website: 'hildegard.org' }

Scenario:
    * def card = 
    """
    {
        game:'yugioh',
        cards: [
            {id: 89631139, name: 'Blue-Eyes White Dragon'}
            {id: 89631138, name: 'Blue-Eyes Black Dragon'}
        ]
    }"""
    * def bewd = get[0] card.cards[?(@.name=="Blue-Eyes White Dragon")]
    * match bewd.id == 89631139