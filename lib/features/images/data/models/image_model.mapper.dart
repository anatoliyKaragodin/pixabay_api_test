// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'image_model.dart';

class ImageModelMapper extends ClassMapperBase<ImageModel> {
  ImageModelMapper._();

  static ImageModelMapper? _instance;
  static ImageModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImageModelMapper._());
      ImageEntityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImageModel';

  static String _$largeImageURL(ImageModel v) => v.largeImageURL;
  static const Field<ImageModel, String> _f$largeImageURL =
      Field('largeImageURL', _$largeImageURL);
  static String _$webformatURL(ImageModel v) => v.webformatURL;
  static const Field<ImageModel, String> _f$webformatURL =
      Field('webformatURL', _$webformatURL);
  static int _$likes(ImageModel v) => v.likes;
  static const Field<ImageModel, int> _f$likes = Field('likes', _$likes);
  static int _$views(ImageModel v) => v.views;
  static const Field<ImageModel, int> _f$views = Field('views', _$views);
  static String _$tags(ImageModel v) => v.tags;
  static const Field<ImageModel, String> _f$tags = Field('tags', _$tags);

  @override
  final MappableFields<ImageModel> fields = const {
    #largeImageURL: _f$largeImageURL,
    #webformatURL: _f$webformatURL,
    #likes: _f$likes,
    #views: _f$views,
    #tags: _f$tags,
  };

  static ImageModel _instantiate(DecodingData data) {
    return ImageModel(
        largeImageURL: data.dec(_f$largeImageURL),
        webformatURL: data.dec(_f$webformatURL),
        likes: data.dec(_f$likes),
        views: data.dec(_f$views),
        tags: data.dec(_f$tags));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImageModel>(map);
  }

  static ImageModel fromJson(String json) {
    return ensureInitialized().decodeJson<ImageModel>(json);
  }
}

mixin ImageModelMappable {
  String toJson() {
    return ImageModelMapper.ensureInitialized()
        .encodeJson<ImageModel>(this as ImageModel);
  }

  Map<String, dynamic> toMap() {
    return ImageModelMapper.ensureInitialized()
        .encodeMap<ImageModel>(this as ImageModel);
  }

  ImageModelCopyWith<ImageModel, ImageModel, ImageModel> get copyWith =>
      _ImageModelCopyWithImpl(this as ImageModel, $identity, $identity);
  @override
  String toString() {
    return ImageModelMapper.ensureInitialized()
        .stringifyValue(this as ImageModel);
  }

  @override
  bool operator ==(Object other) {
    return ImageModelMapper.ensureInitialized()
        .equalsValue(this as ImageModel, other);
  }

  @override
  int get hashCode {
    return ImageModelMapper.ensureInitialized().hashValue(this as ImageModel);
  }
}

extension ImageModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageModel, $Out> {
  ImageModelCopyWith<$R, ImageModel, $Out> get $asImageModel =>
      $base.as((v, t, t2) => _ImageModelCopyWithImpl(v, t, t2));
}

abstract class ImageModelCopyWith<$R, $In extends ImageModel, $Out>
    implements ImageEntityCopyWith<$R, $In, $Out> {
  @override
  $R call(
      {String? largeImageURL,
      String? webformatURL,
      int? likes,
      int? views,
      String? tags});
  ImageModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImageModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageModel, $Out>
    implements ImageModelCopyWith<$R, ImageModel, $Out> {
  _ImageModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageModel> $mapper =
      ImageModelMapper.ensureInitialized();
  @override
  $R call(
          {String? largeImageURL,
          String? webformatURL,
          int? likes,
          int? views,
          String? tags}) =>
      $apply(FieldCopyWithData({
        if (largeImageURL != null) #largeImageURL: largeImageURL,
        if (webformatURL != null) #webformatURL: webformatURL,
        if (likes != null) #likes: likes,
        if (views != null) #views: views,
        if (tags != null) #tags: tags
      }));
  @override
  ImageModel $make(CopyWithData data) => ImageModel(
      largeImageURL: data.get(#largeImageURL, or: $value.largeImageURL),
      webformatURL: data.get(#webformatURL, or: $value.webformatURL),
      likes: data.get(#likes, or: $value.likes),
      views: data.get(#views, or: $value.views),
      tags: data.get(#tags, or: $value.tags));

  @override
  ImageModelCopyWith<$R2, ImageModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ImageModelCopyWithImpl($value, $cast, t);
}
