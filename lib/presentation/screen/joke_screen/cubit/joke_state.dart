import 'package:equatable/equatable.dart';
import 'package:mobile_test/data/source/models/data_joke.dart';

class JokeState extends Equatable {
  final List<DataJoke>? listJoke;
  final String? textJokeEmpty;
  final String? textTitle;
  final String? textSubTitle;
  final String? textFooter;
  final String? textCopyRight;
  final int? currentIndex;
  final String? titleAppBar;
  final String? contentAppBar;
  final String? urlAvtAppBar;
  final String? urlLogoAppBar;
  final bool? allJokesRead;

  @override
  List<Object?> get props => [listJoke, textTitle, textFooter, textCopyRight, textJokeEmpty, currentIndex,allJokesRead,textSubTitle];

//<editor-fold desc="Data Methods">
  const JokeState({
    this.listJoke,
    this.textJokeEmpty,
    this.textTitle,
    this.textSubTitle,
    this.textFooter,
    this.textCopyRight,
    this.currentIndex = 0,
    this.titleAppBar,
    this.contentAppBar,
    this.urlAvtAppBar,
    this.urlLogoAppBar,
    this.allJokesRead =false,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is JokeState &&
          runtimeType == other.runtimeType &&
          listJoke == other.listJoke &&
          textJokeEmpty == other.textJokeEmpty &&
          textTitle == other.textTitle &&
          textSubTitle == other.textSubTitle &&
          textFooter == other.textFooter &&
          textCopyRight == other.textCopyRight &&
          currentIndex == other.currentIndex &&
          titleAppBar == other.titleAppBar &&
          contentAppBar == other.contentAppBar &&
          urlAvtAppBar == other.urlAvtAppBar &&
          urlLogoAppBar == other.urlLogoAppBar &&
          allJokesRead == other.allJokesRead);

  @override
  int get hashCode =>
      listJoke.hashCode ^
      textJokeEmpty.hashCode ^
      textTitle.hashCode ^
      textSubTitle.hashCode ^
      textFooter.hashCode ^
      textCopyRight.hashCode ^
      currentIndex.hashCode ^
      titleAppBar.hashCode ^
      contentAppBar.hashCode ^
      urlAvtAppBar.hashCode ^
      urlLogoAppBar.hashCode ^
      allJokesRead.hashCode;

  @override
  String toString() {
    return 'JokeState{' +
        ' listJoke: $listJoke,' +
        ' textJokeEmpty: $textJokeEmpty,' +
        ' textTitle: $textTitle,' +
        ' textSubTitle: $textSubTitle,' +
        ' textFooter: $textFooter,' +
        ' textCopyRight: $textCopyRight,' +
        ' currentIndex: $currentIndex,' +
        ' titleAppBar: $titleAppBar,' +
        ' contentAppBar: $contentAppBar,' +
        ' urlAvtAppBar: $urlAvtAppBar,' +
        ' urlLogoAppBar: $urlLogoAppBar,' +
        ' allJokesRead: $allJokesRead,' +
        '}';
  }

  JokeState copyWith({
    List<DataJoke>? listJoke,
    String? textJokeEmpty,
    String? textTitle,
    String? textSubTitle,
    String? textFooter,
    String? textCopyRight,
    int? currentIndex,
    String? titleAppBar,
    String? contentAppBar,
    String? urlAvtAppBar,
    String? urlLogoAppBar,
    bool? allJokesRead,
  }) {
    return JokeState(
      listJoke: listJoke ?? this.listJoke,
      textJokeEmpty: textJokeEmpty ?? this.textJokeEmpty,
      textTitle: textTitle ?? this.textTitle,
      textSubTitle: textSubTitle ?? this.textSubTitle,
      textFooter: textFooter ?? this.textFooter,
      textCopyRight: textCopyRight ?? this.textCopyRight,
      currentIndex: currentIndex ?? this.currentIndex,
      titleAppBar: titleAppBar ?? this.titleAppBar,
      contentAppBar: contentAppBar ?? this.contentAppBar,
      urlAvtAppBar: urlAvtAppBar ?? this.urlAvtAppBar,
      urlLogoAppBar: urlLogoAppBar ?? this.urlLogoAppBar,
      allJokesRead: allJokesRead ?? this.allJokesRead,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'listJoke': this.listJoke,
      'textJokeEmpty': this.textJokeEmpty,
      'textTitle': this.textTitle,
      'textSubTitle': this.textSubTitle,
      'textFooter': this.textFooter,
      'textCopyRight': this.textCopyRight,
      'currentIndex': this.currentIndex,
      'titleAppBar': this.titleAppBar,
      'contentAppBar': this.contentAppBar,
      'urlAvtAppBar': this.urlAvtAppBar,
      'urlLogoAppBar': this.urlLogoAppBar,
      'allJokesRead': this.allJokesRead,
    };
  }

  factory JokeState.fromMap(Map<String, dynamic> map) {
    return JokeState(
      listJoke: map['listJoke'] as List<DataJoke>,
      textJokeEmpty: map['textJokeEmpty'] as String,
      textTitle: map['textTitle'] as String,
      textSubTitle: map['textSubTitle'] as String,
      textFooter: map['textFooter'] as String,
      textCopyRight: map['textCopyRight'] as String,
      currentIndex: map['currentIndex'] as int,
      titleAppBar: map['titleAppBar'] as String,
      contentAppBar: map['contentAppBar'] as String,
      urlAvtAppBar: map['urlAvtAppBar'] as String,
      urlLogoAppBar: map['urlLogoAppBar'] as String,
      allJokesRead: map['allJokesRead'] as bool,
    );
  }

//</editor-fold>
}
