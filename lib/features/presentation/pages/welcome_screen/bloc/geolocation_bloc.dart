// import 'dart:async';

// import 'package:bloc/bloc.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:meta/meta.dart';
// import 'package:weather_app/features/presentation/pages/welcome_screen/repository/geolocation_repository.dart';
// import 'package:weather_app/repositories/weather_repository/models/weather_model.dart';

// import '../../../../../repositories/weather_repository/weather_repository.dart';

// part 'geolocation_event.dart';
// part 'geolocation_state.dart';

// class GeolocationBloc extends Bloc<GeolocationEvent, GeolocationState> {
//   final GeolocationRepository _geolocationRepository;
//   StreamSubscription? _geolocationSubscription;
//   GeolocationBloc(this._geolocationRepository) : super(GeolocationLoading()) {
//     @override 
//     Stream<GeolocationState> mapEventToState(
//       GeolocationEvent event,
//     ) async* {
//       if (event is LoadGeolocation) {
//         yield* _mapLoadGeolocationToState();
//       } else if (event is UpdateGeolocation) {
//         yield* _mapUpdateGeolocationToState(event);
//       }
//     }
//     Stream<GeolocationState> _mapLoadGeolocationToState() async* {
//       _geolocationSubscription?.cancel();
//       final Position position = await _geolocationRepository.getCurrentLocation();

//       add(UpdateGeolocation(position));
//     }
//     Stream<GeolocationState> _mapUpdateGeolocationToState(
//       UpdateGeolocation event) async* {
//         yield GeolocationLoaded(event.position);
//       }
      
//       @override
//       Future<void> close() {
//         _geolocationSubscription?.cancel();
//         return super.close();
//       }
//   }
// }
