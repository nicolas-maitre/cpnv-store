<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>CPNV Store - App</title>

        <link rel="stylesheet" href="/css/app.css"/>
    </head>
    <body>
        <section class="backButton"><a href="/"><button>Accueil</button></a></section>
        <section class="appContainer">
            <h1 class="appName">
                <a href="/app/{{$appData->id}}">
                    {{$appData->name}}
                </a>
            </h1>
            <div class="downloadSection">
                <a href="/app/{{$appData->id}}/download">
                    <button>Télécharger</button>
                </a>
            <p class="downloadCount">{{$appData->download_count}}</p>
            </div>
            <div class="appImg"
                @if(isset($appData->image))
                    style="background-image:url(/files/{{$appData->image}})"
                @endif
            ></div>

            <p class="appDesc">
                {{$appData->description}}
            </p>
        </section>
    </body>
</html>
