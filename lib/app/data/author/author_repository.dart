
import 'package:getx_checkmark_button/app/data/author/author.dart';
import 'package:getx_checkmark_button/app/data/author/author_repository_interface.dart';

 class AuthorRepository implements IAuthorRepository{
   @override
     List<Author> getAuthors(){
      List<Author> authors = [
        Author(name: "Jonny Borges", description: "Author of GetX"), 
        Author(name: "Felix Angelov", description: "Author of BLoC"),
        Author(name: "Remi Rousselet", description: "Author of Riverpod")
        ];
        return authors;
   }
}