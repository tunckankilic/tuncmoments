/// {@template api_repository}
/// A fake API repository.
/// {@endtemplate}
class ApiRepository {
  /// {@macro api_repository}
  const ApiRepository();
  //Fetches Todos
  List<String> fetchTodos() => ['Make Homework', 'Go to Shop', 'Go to Code'];
}
