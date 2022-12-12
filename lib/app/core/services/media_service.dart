import 'package:image_picker/image_picker.dart';
class MediaService {
  Future<XFile?> pickImage({required ImageSource source}) async{
    final ImagePicker picker = ImagePicker();
    final file = await picker.pickImage(source: source);
    return file!;
  }
}

MediaService mediaService = MediaService();