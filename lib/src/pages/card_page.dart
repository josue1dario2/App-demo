
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget{
  const CardPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
           _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
        ],
      ),
    );
  }

  Widget _cardTipo1() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue,),
            title: Text('Título de la tarjeta card!!'),
            subtitle: Text('Los subtítulos son los textos que aparecen en el borde inferior de una imagen, con frecuencia superpuesto a ella, aportando información adicional sobre esta o traduciendo una narración o diálogo hablado en un idioma diferente.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('Ok'),
                onPressed: (){

                },
              ),
               TextButton(
                 child: const Text('Cancel'),
                 onPressed: (){

               },
               )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {

      final card = Container(

      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAPDw0QEA8QDw8PDQ0NDQ0PDw8PDw8NFREWFhURFRUYHSggGBolGxUVITEhJSkrLi4uFx8zODMsNygtLisBCgoKDg0NFQ8PFysZFR0rKysrLSsrKysrLS0tLS0rLS0tKystLS0tKy0rKzctLS0tLS0rNy0rKystKystLS0tLf/AABEIALcBFAMBIgACEQEDEQH/xAAbAAADAQEBAQEAAAAAAAAAAAAAAQIDBAUGB//EADoQAAIBAwEFBwIEBAUFAAAAAAABAgMREgQhMVFhkQUTFEFxgaFS0RVCseEyU5LwBiJDwfEjM2KCk//EABgBAQEBAQEAAAAAAAAAAAAAAAABAgME/8QAIREBAAMBAAICAwEBAAAAAAAAAAEREgITITFRAwRBFDL/2gAMAwEAAhEDEQA/APeVJ8ClSfA9RU0UqSPLHL0zLy1p2UtMeoqaKVNG45Znp5a03IpaR8D1VEpRNxEM28paIpaNHqqA+7NVCXLy1pOQ/CPgeqqaKVNGvSW8paJ8jSPZ/M9RQKUC+kuXnR0CH4RLyPRxHiW4T28x6R8ELwMnwR6uIWGoPby12c+JS7NXFnpWCw1B7ed+HoPAo9CwmhcHt570SE9Ej0GhNC4Kl5/hFwE9NyO5oTRLhalwPTCelR2tENEmYX25Hpoi7hcDqaIZmZWmHdIXdmrJZmZKZuJLiaMlmJ6WmbiQ4mrIZzmWohlYC7AYtadiLRCKRuO1ypFIlFI1sypFolFI1pMqRSEikNJk0UhIpF0ZNIoSGNGTAAuNmQAXFcmzJgK4DZkAwuK6G1wQmWmhNonkXxs2S0WyWXSZQ0Qy2QxoyhkNFshmdLlLRDLsQzM9LlLJY2JmZ6XKWSxtktmJ6XKGMTYGNLTrTLRkmWmWOmstEUjNMpM1pMtEykzNMpM1oy1TKTMky0xoy0TKTM0yky2ZaJhczuFxZlpkFzO4rksy0uFzO4rizLTIMjO4sha5aZBkZ5CyFmWmQZGWQZDRlpkJszyC5bMm2S2JslsllBshjbIbJZQbIbBshszZQZLYNkNmZlaDZLYNkNmJlaFxkXAi06ky0zFMpMRLVNkykzFMpM1ElNkykzJMrI1ZTVMpMxUi1ItmWqZWRimPItmWuQZGWQshZlrkGRlkLIlrTXIMjLIWQsprkLIzyFkLKa5CyM8hZCzLXIWRlkGQsy0yDIyyDIWZa5EtkZCyFpSmyGxORDkQo2yGwciGyStG2Q2JyJbMlG2S2JyIcjK0bYEZARadSZSZgpFKRYapsmUmYqRSkaKbKRSkYqRSkaKbpjTMVIpSKU2yDIxzDIFNcgyMcgyC01yDIyyFkCmuQZGWQshRTXIMjLIWQoprkLIyzDMFNchZGWYZgprkLIyzDIFNcgyMsxZFKaORLkQ5EuREpTZLZLkQ5EWlNkuRLkS5EopTZDZLkQ5EopbYjPIDNLTdSKUjlUy1M3TTpUilI5lMamapHSplKRzZlKZqOR0qZSmcqmPM1kdOYnMwzFmXI6MxZmGYsxkdGYZnNmGYyOjMMznzDMuR0ZizOfIMxlLb5BkYZizGC27mGZhmLIYLb5hmc+YZjA3zDMwyDMZG7mS5mLmS5knkauZLmZOZDmZyW2cyXMwcyXMmRs5kOZk5kuRMq2zAwyAmRqpFKRyKsUqx0jmU1DrUisjjVcrvzUcym4dakUpHGq41XNxyzuHapDyOPvw8Qbynkh2ZBkcfiRPVLiXCeXn7dmQZHE9WuJPjFxLiU83P27sgyODxiB6wYlPPz9u/ILnmz1j8rL1TZy1XKW+o3ys0uhY/Gx1+zzHx7e33i4q/qZvUwW+cf6keF4dcfgfh1x+DXjj7c5/an6ez46n9aMKvasF/CnLnuR5ncc/gXcPivk1H44Yn9nufj09Kl2rFu0k4873Xud0aiaundcUfPdwy6cZx2ptejJP44/i8fs9R/wBe3vZBkeG+0Wt84e7VyPxJv/Uiui/Uz45dP9XL3sgyPA/EX/NXwaw7UXnKL97DxyR+1y9lyJcjz4axS3ST5Jpld8zM8S15+XY5EuRyOqyJV7b3ZcTM8L5odjkS2edLXx+pfLMNT2zSgneV39K/i/YzP45WPzcvWciJ1Et7S9WkfHaz/ENad1D/AKceK2y6nj1ajk25Nyk98pNt9SeO0n9iI+H6A+0aC31qf/0j9wPzsC+GPtj/AEz9P0JSKUjFFpmohme2uQ1IyTMdTradP+KW36Vtk/Y3EMT27FIeR4a7ejfbTlbjdX6B+Pxv/wBuWPHJX6G4hifyPduI8Sp2+vy02+cml+lzKPb8/OnF+jaNRDE9voBNHhr/ABA77aSt52nt/Q9LS9pUqm6Vn5xlsf7lpNOmwrGMtfRWx1IdUyPxOh/MXSX2KlumwWMF2hR/mw62JXadB/6i91Jf7At02Cxg+0KP8yPXacdXtiNmo2T8m3fYE07q2ojCyk9r8krnHLtPbsjs5vaeVV1K27cn5vn6mXiJcF8lqGdS9p9p8IdZfsEe0+MOkv2PIjqV5q3ptNVVh9SLUJqXZW185PY8VwW/qcspSe9t+rbMZamK3Jv4IlqX5JL5Ho9t7A0c3iX9Ufgwq6mP5px6ollO9We5p+6HY8l6un9S6NkPXUvqfRjRT2XEE2tza92eTDVwe6a9G7fqXKpsvv8Ack9LEPXWoqL88urOSvr1ucnN8LuR50rv05CUbcjE9Nxy1raqT3f5V8nM2/3G5RW+S6mctRDjf2Zh0+DZmwnq4br/AAye/g/zL1ez9Sp8nYCu+h9VwJbWYfU1+2acf4U5v+ldX9jnl25N7oRT4tuX2Pm/Hx4S6L7m1PUwf5kuT2Fpie5epV7Rqy31Jekf8v6HK5t/fzM1NcV1RV1xXU1EMTKkNGcq0VvlFe6J8bT+r4l9io3AinWjLdJPlfb0NUioQWKsOxRIDk0t7SMKuqit20TMQsczLcTfHYeXX1E5cUuWw5pyS3vb1Jonl7uS4rqiXXgvzR9nc+elV5DWo/8AH5Fo9ipr4rdFv1djnn2jPyUV1ZwqtHzy+B+JS3R67SXK+ms69WX55L0eK+BQr1VuqS93f9TF6q+9FLUR4P4COl6yr9Vv/WJnOrKW+bfK7sZd6uPwxwmuKAbFbkU5r+9pnKvFbNvsiKsExRr03525NM0dSPlZ9LE01HF/1jIlTtulb4KnP0OaoWJSYprKo/NvqDqt75N+ruczkJPgGXUqj4v2ByfP3OdVX6j71cPkNNXIWaMZTuCZCG3eAZXAjToSEyO/jzfsLxC4FZapDMPEcvka1PJAuG6KsczrvkD1EuS9ilw6UjVTl9Uv6mef38vqB1pcX1CPTWrnH8792n+ofiUvr+GeVkMD0Ja6/m+hm9X6+7ORBcUal0Srv/gzcuHyZjSBa8m+ArFU6d+PttOuNGK8rvmSeqa54mXJCLe5Nmnh357DplUW5dPIzu2yalrxwwdP3+Bwpv7nRGjcbrU47L3a4K5NSuI/vpKo22voRVqRj5XfkiamsT3J+9rHJKV7tliJn5TrqI+Fzqt8lwW4i5NwRqnKzuL+7lOHmTYAzfqGfITZAFZEsQXKHkO5NxMChkXKTIsLTAVwI0yRRNx3KyYCyHcIdxpkpjRRVgBIpIATKQJDICw0guFwLSNYxXm/ZHPc1p0lvb9iS3y6YzSVlb2+5Mqy4pe5zTmlsRjJsmWp7p0S1HIh6iXk7ehgBaYnqV943vbfq7ibIsOxWTC4gYAy4oiI7lDk/wC7mUpFSM2wLUtgrkouMbkEMRv3RHd80UtmMp02SA0FgQEUwEBGmYwArKkhqIAEWolJCAKoG2ABAhiAKdxgABcl1BAAnUE2ABBG48QAB2EwABWEuYAUD5C5oACJyAQBWlOVilJgARMmycl5gAWCvbcx533gADsgAACwABFf/9k='),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
              padding: const EdgeInsets.all(10.0),
              child: const Text('Paisaje de montañas')),
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0),
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card ,
      ),
    );
  }
}

