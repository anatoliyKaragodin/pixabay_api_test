// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'image_gallery_page_state.dart';

class ImageGalleryPageStateMapper
    extends ClassMapperBase<ImageGalleryPageState> {
  ImageGalleryPageStateMapper._();

  static ImageGalleryPageStateMapper? _instance;
  static ImageGalleryPageStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImageGalleryPageStateMapper._());
      ImageEntityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImageGalleryPageState';

  static List<ImageEntity> _$shownImages(ImageGalleryPageState v) =>
      v.shownImages;
  static const Field<ImageGalleryPageState, List<ImageEntity>> _f$shownImages =
      Field('shownImages', _$shownImages);
  static List<ImageEntity> _$allImages(ImageGalleryPageState v) => v.allImages;
  static const Field<ImageGalleryPageState, List<ImageEntity>> _f$allImages =
      Field('allImages', _$allImages);

  @override
  final MappableFields<ImageGalleryPageState> fields = const {
    #shownImages: _f$shownImages,
    #allImages: _f$allImages,
  };

  static ImageGalleryPageState _instantiate(DecodingData data) {
    return ImageGalleryPageState(
        shownImages: data.dec(_f$shownImages),
        allImages: data.dec(_f$allImages));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageGalleryPageState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImageGalleryPageState>(map);
  }

  static ImageGalleryPageState fromJson(String json) {
    return ensureInitialized().decodeJson<ImageGalleryPageState>(json);
  }
}

mixin ImageGalleryPageStateMappable {
  String toJson() {
    return ImageGalleryPageStateMapper.ensureInitialized()
        .encodeJson<ImageGalleryPageState>(this as ImageGalleryPageState);
  }

  Map<String, dynamic> toMap() {
    return ImageGalleryPageStateMapper.ensureInitialized()
        .encodeMap<ImageGalleryPageState>(this as ImageGalleryPageState);
  }

  ImageGalleryPageStateCopyWith<ImageGalleryPageState, ImageGalleryPageState,
          ImageGalleryPageState>
      get copyWith => _ImageGalleryPageStateCopyWithImpl(
          this as ImageGalleryPageState, $identity, $identity);
  @override
  String toString() {
    return ImageGalleryPageStateMapper.ensureInitialized()
        .stringifyValue(this as ImageGalleryPageState);
  }

  @override
  bool operator ==(Object other) {
    return ImageGalleryPageStateMapper.ensureInitialized()
        .equalsValue(this as ImageGalleryPageState, other);
  }

  @override
  int get hashCode {
    return ImageGalleryPageStateMapper.ensureInitialized()
        .hashValue(this as ImageGalleryPageState);
  }
}

extension ImageGalleryPageStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageGalleryPageState, $Out> {
  ImageGalleryPageStateCopyWith<$R, ImageGalleryPageState, $Out>
      get $asImageGalleryPageState =>
          $base.as((v, t, t2) => _ImageGalleryPageStateCopyWithImpl(v, t, t2));
}

abstract class ImageGalleryPageStateCopyWith<
    $R,
    $In extends ImageGalleryPageState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, ImageEntity,
      ImageEntityCopyWith<$R, ImageEntity, ImageEntity>> get shownImages;
  ListCopyWith<$R, ImageEntity,
      ImageEntityCopyWith<$R, ImageEntity, ImageEntity>> get allImages;
  $R call({List<ImageEntity>? shownImages, List<ImageEntity>? allImages});
  ImageGalleryPageStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ImageGalleryPageStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageGalleryPageState, $Out>
    implements ImageGalleryPageStateCopyWith<$R, ImageGalleryPageState, $Out> {
  _ImageGalleryPageStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageGalleryPageState> $mapper =
      ImageGalleryPageStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, ImageEntity,
          ImageEntityCopyWith<$R, ImageEntity, ImageEntity>>
      get shownImages => ListCopyWith($value.shownImages,
          (v, t) => v.copyWith.$chain(t), (v) => call(shownImages: v));
  @override
  ListCopyWith<$R, ImageEntity,
          ImageEntityCopyWith<$R, ImageEntity, ImageEntity>>
      get allImages => ListCopyWith($value.allImages,
          (v, t) => v.copyWith.$chain(t), (v) => call(allImages: v));
  @override
  $R call({List<ImageEntity>? shownImages, List<ImageEntity>? allImages}) =>
      $apply(FieldCopyWithData({
        if (shownImages != null) #shownImages: shownImages,
        if (allImages != null) #allImages: allImages
      }));
  @override
  ImageGalleryPageState $make(CopyWithData data) => ImageGalleryPageState(
      shownImages: data.get(#shownImages, or: $value.shownImages),
      allImages: data.get(#allImages, or: $value.allImages));

  @override
  ImageGalleryPageStateCopyWith<$R2, ImageGalleryPageState, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ImageGalleryPageStateCopyWithImpl($value, $cast, t);
}
