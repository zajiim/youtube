import 'package:youtube_clone/core/strings.dart';
import 'package:youtube_clone/infrastructure/api_key.dart';

class ApiEndPoints {
  static const homeUrl = "$kBaseUrl/videos?part=snippet%2CcontentDetails%2Cstatistics&chart=mostPopular&regionCode=IN&key=$API_KEY";
}
