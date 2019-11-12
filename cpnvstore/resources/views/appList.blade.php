<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>CPNV Store</title>

        <link rel="stylesheet" href="/css/app.css"/>
    </head>
    <body>
        <section class="cardsContainer">
            @foreach ($appsArray as $app)
                <div class="appCard">
                    <div class="appCardImg"
                        @if($app->image)
                            style="background-image:url(/files/{{$app->image}})"
                        @endif
                    >
                        <p class="appCardName">
                            <a href="/app/{{$app->id}}">
                                {{$app->name}}
                            </a>
                        </p>
                    </div>
                    <p class="appCardDesc">
                        {{$app->description}}
                    </p>
                </div>
            @endforeach
        </section>

        <script>
            //add fake links to cards
            var cardElems = document.getElementsByClassName("appCard");
            for(var indCard = 0; indCard < cardElems.length; indCard++){
                addEvtOnCards(cardElems[indCard]);
            }
            function addEvtOnCards(card){
                var url = card.getElementsByClassName('appCardName')[0].getElementsByTagName("a")[0].href;
                card.addEventListener("click", function(ev){
                    window.location = url;
                });
            }
        </script>
    </body>
</html>
