// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'image_entity.dart';

class ImageEntityMapper extends ClassMapperBase<ImageEntity> {
  ImageEntityMapper._();

  static ImageEntityMapper? _instance;
  static ImageEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImageEntityMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ImageEntity';

  static String _$webformatURL(ImageEntity v) => v.webformatURL;
  static const Field<ImageEntity, String> _f$webformatURL =
      Field('webformatURL', _$webformatURL);
  static int _$likes(ImageEntity v) => v.likes;
  static const Field<ImageEntity, int> _f$likes = Field('likes', _$likes);
  static int _$views(ImageEntity v) => v.views;
  static const Field<ImageEntity, int> _f$views = Field('views', _$views);
  static String _$largeImageURL(ImageEntity v) => v.largeImageURL;
  static const Field<ImageEntity, String> _f$largeImageURL =
      Field('largeImageURL', _$largeImageURL);
  static String _$tags(ImageEntity v) => v.tags;
  static const Field<ImageEntity, String> _f$tags = Field('tags', _$tags);

  @override
  final MappableFields<ImageEntity> fields = const {
    #webformatURL: _f$webformatURL,
    #likes: _f$likes,
    #views: _f$views,
    #largeImageURL: _f$largeImageURL,
    #tags: _f$tags,
  };

  static ImageEntity _instantiate(DecodingData data) {
    return ImageEntity(
        webformatURL: data.dec(_f$webformatURL),
        likes: data.dec(_f$likes),
        views: data.dec(_f$views),
        largeImageURL: data.dec(_f$largeImageURL),
        tags: data.dec(_f$tags));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImageEntity>(map);
  }

  static ImageEntity fromJson(String json) {
    return ensureInitialized().decodeJson<ImageEntity>(json);
  }
}

mixin ImageEntityMappable {
  String toJson() {
    return ImageEntityMapper.ensureInitialized()
        .encodeJson<ImageEntity>(this as ImageEntity);
  }

  Map<String, dynamic> toMap() {
    return ImageEntityMapper.ensureInitialized()
        .encodeMap<ImageEntity>(this as ImageEntity);
  }

  ImageEntityCopyWith<ImageEntity, ImageEntity, ImageEntity> get copyWith =>
      _ImageEntityCopyWithImpl(this as ImageEntity, $identity, $identity);
  @override
  String toString() {
    return ImageEntityMapper.ensureInitialized()
        .stringifyValue(this as ImageEntity);
  }

  @override
  bool operator ==(Object other) {
    return ImageEntityMapper.ensureInitialized()
        .equalsValue(this as ImageEntity, other);
  }

  @override
  int get hashCode {
    return ImageEntityMapper.ensureInitialized().hashValue(this as ImageEntity);
  }
}

extension ImageEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageEntity, $Out> {
  ImageEntityCopyWith<$R, ImageEntity, $Out> get $asImageEntity =>
      $base.as((v, t, t2) => _ImageEntityCopyWithImpl(v, t, t2));
}

abstract class ImageEntityCopyWith<$R, $In extends ImageEntity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? webformatURL,
      int? likes,
      int? views,
      String? largeImageURL,
      String? tags});
  ImageEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImageEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageEntity, $Out>
    implements ImageEntityCopyWith<$R, ImageEntity, $Out> {
  _ImageEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageEntity> $mapper =
      ImageEntityMapper.ensureInitialized();
  @override
  $R call(
          {String? webformatURL,
          int? likes,
          int? views,
          String? largeImageURL,
          String? tags}) =>
      $apply(FieldCopyWithData({
        if (webformatURL != null) #webformatURL: webformatURL,
        if (likes != null) #likes: likes,
        if (views != null) #views: views,
        if (largeImageURL != null) #largeImageURL: largeImageURL,
        if (tags != null) #tags: tags
      }));
  @override
  ImageEntity $make(CopyWithData data) => ImageEntity(
      webformatURL: data.get(#webformatURL, or: $value.webformatURL),
      likes: data.get(#likes, or: $value.likes),
      views: data.get(#views, or: $value.views),
      largeImageURL: data.get(#largeImageURL, or: $value.largeImageURL),
      tags: data.get(#tags, or: $value.tags));

  @override
  ImageEntityCopyWith<$R2, ImageEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ImageEntityCopyWithImpl($value, $cast, t);
}
