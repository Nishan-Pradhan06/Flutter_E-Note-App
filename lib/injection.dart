import 'package:get_it/get_it.dart';
import 'features/highlights/repositories/highlight_repository.dart';
import 'features/highlights/blocs/highlight_bloc.dart';
import 'features/highlights/cubits/highlight_selection_cubit.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies() async {
  // Repositories
  getIt.registerLazySingleton<HighlightRepository>(
    () => HighlightRepositoryImpl(),
  );

  // Blocs
  getIt.registerFactory(() => HighlightBloc(repository: getIt()));

  // Cubits
  getIt.registerFactory(() => HighlightSelectionCubit());
}
