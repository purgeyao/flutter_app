import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

enum IconNames {
  rongyuqiang,
  zhibohuifang,
  mimiliwu,
  shouhuzhubo,
  shouhuqishi,
  zhibohuiyuan,
  vjhuangse,
  renqi,
  icon_test_1,
  icon_test_2,
  icon_test_3,
  yajun,
  guanjun,
  jijun,
  nan,
  nv,
  dongtai,
  gongxianbang,
  xiangce,
  remen,
  renrenzhubo,
  icon_test
}

/// A class includes all icons which you provided from https://iconfont.cn
///
/// How to use it:
/// ```dart
/// IconFont(IconNames.xxx);
/// IconFont(IconNames.xxx, color: '#f00');
/// IconFont(IconNames.xxx, colors: ['#f00', 'blue']);
/// IconFont(IconNames.xxx, size: 30, color: '#000');
/// ```
///
/// The name is dynamic to against server interface.
/// Feel free to input string literal.
/// ```dart
/// IconFont('xxx');
/// ```
class IconFont extends StatelessWidget {
  IconNames name;
  final String color;
  final List<String> colors;
  final double size;

  IconFont(dynamic iconName, {this.size = 18, this.color, this.colors}) {
    switch (iconName) {
      case 'rongyuqiang':
        iconName = IconNames.rongyuqiang;
        break;
      case 'zhibohuifang':
        iconName = IconNames.zhibohuifang;
        break;
      case 'mimiliwu':
        iconName = IconNames.mimiliwu;
        break;
      case 'shouhuzhubo':
        iconName = IconNames.shouhuzhubo;
        break;
      case 'shouhuqishi':
        iconName = IconNames.shouhuqishi;
        break;
      case 'zhibohuiyuan':
        iconName = IconNames.zhibohuiyuan;
        break;
      case 'vjhuangse':
        iconName = IconNames.vjhuangse;
        break;
      case 'renqi':
        iconName = IconNames.renqi;
        break;
      case 'icon_test_1':
        iconName = IconNames.icon_test_1;
        break;
      case 'icon_test_2':
        iconName = IconNames.icon_test_2;
        break;
      case 'icon_test_3':
        iconName = IconNames.icon_test_3;
        break;
      case 'yajun':
        iconName = IconNames.yajun;
        break;
      case 'guanjun':
        iconName = IconNames.guanjun;
        break;
      case 'jijun':
        iconName = IconNames.jijun;
        break;
      case 'nan':
        iconName = IconNames.nan;
        break;
      case 'nv':
        iconName = IconNames.nv;
        break;
      case 'dongtai':
        iconName = IconNames.dongtai;
        break;
      case 'gongxianbang':
        iconName = IconNames.gongxianbang;
        break;
      case 'xiangce':
        iconName = IconNames.xiangce;
        break;
      case 'remen':
        iconName = IconNames.remen;
        break;
      case 'renrenzhubo':
        iconName = IconNames.renrenzhubo;
        break;
      case 'icon_test':
        iconName = IconNames.icon_test;
        break;
    }

    this.name = iconName;
  }

  static String getColor(int arrayIndex, String color, List<String> colors,
      String defaultColor) {
    if (color != null && color.isNotEmpty) {
      return color;
    }

    if (colors != null && colors.isNotEmpty && colors.length > arrayIndex) {
      return colors.elementAt(arrayIndex);
    }

    return defaultColor;
  }

  @override
  Widget build(BuildContext context) {
    String svgXml;

    switch (this.name) {
      case IconNames.rongyuqiang:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M690.3 152.6v131.5L564.1 314v18.8H447.8V313l-123.2-29V153c-128.1 66.4-215.7 200.2-215.7 354.5 0 220.4 178.6 399 399 399s399-178.6 399-399c0-154.6-88-288.7-216.6-354.9z"
              fill="''' +
            getColor(0, color, colors, '#1452F1') +
            '''"
            />
            <path
              d="M564.2 331.8l126.2-19V152.6c-38.8-19.9-81.3-33.8-126.2-40.1v219.3zM447.8 333V113c-43.8 6.6-85.3 20.4-123.2 40.1v159.7L447.8 333z"
              fill="''' +
            getColor(1, color, colors, '#0878F9') +
            '''"
            />
            <path
              d="M447.8 313.2v19.5h116.4V314L508 327.2z"
              fill="''' +
            getColor(2, color, colors, '#2CD5FF') +
            '''"
            />
            <path
              d="M507.9 108.6c-20.4 0-40.5 1.5-60.1 4.5v200l60.2 14.2 56.2-13.3V112.5c-18.4-2.6-37.2-3.9-56.3-3.9z"
              fill="''' +
            getColor(3, color, colors, '#2CD5FF') +
            '''"
            />
            <path
              d="M507.9 108.6c-20.4 0-40.5 1.5-60.1 4.5v200l60.2 14.2 56.2-13.3V112.5c-18.4-2.6-37.2-3.9-56.3-3.9z"
              fill="''' +
            getColor(4, color, colors, '#0091FF') +
            '''"
            />
            <path
              d="M633.8 685.3c-33.9 1.5-63.3 13.7-88.4 36.6s-50.1 22.9-75.1 0c-25.1-22.9-54.5-35-88.4-36.6-33.9-1.5-51.6-19.2-53.1-53.1-1.5-33.9-13.7-63.3-36.6-88.4s-22.9-50.1 0-75.1c22.9-25.1 35-54.5 36.6-88.4 1.5-33.9 19.2-51.6 53.1-53.1 33.9-1.5 63.3-13.7 88.4-36.6 25.1-22.9 50-22.9 75.1 0 25.1 22.9 54.5 35 88.4 36.6 33.9 1.6 51.6 19.2 53.1 53.1s13.7 63.3 36.6 88.4c22.9 25.1 22.9 50.1 0 75.1-22.9 25.1-35 54.5-36.6 88.4-1.5 33.8-19.2 51.6-53.1 53.1z"
              fill="''' +
            getColor(5, color, colors, '#2CD5FF') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.zhibohuifang:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M865.5 330.1c-65.2-132.1-201.3-223-358.6-223-220.8 0-399.7 179-399.7 399.7 0 220.8 179 399.7 399.7 399.7 157.3 0 293.3-90.9 358.6-222.9L541.8 506.9l323.7-176.8z"
              fill="''' +
            getColor(0, color, colors, '#FF6934') +
            '''"
            />
            <path
              d="M865.5 330.1L541.8 506.9l323.6 176.7c26.3-53.3 41.2-113.3 41.2-176.8 0-63.4-14.8-123.4-41.1-176.7z"
              fill="''' +
            getColor(1, color, colors, '#FFE400') +
            '''"
            />
            <path
              d="M334.9 323.7h313c33.1 0 59.9 27.3 59.9 61.1V629c0 33.7-26.8 61.1-59.9 61.1h-313c-33.1 0-59.9-27.3-59.9-61.1V384.7c0-33.7 26.8-61 59.9-61z"
              fill="''' +
            getColor(2, color, colors, '#FFA500') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.mimiliwu:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M506.8 506.8m-399.7 0a399.7 399.7 0 1 0 799.4 0 399.7 399.7 0 1 0-799.4 0Z"
              fill="''' +
            getColor(0, color, colors, '#FF4994') +
            '''"
            />
            <path
              d="M682.5 745.3c-53.9 6.4-111.4 10-171.3 10-67.8 0-132.3-4.7-192.3-12.8-21.9-4.8-38.7-22.3-41.2-44v0.7c-5.6-44.7-8.6-91.7-8.6-140.3 0-49.2 3.1-96.6 8.8-141.6v0.9c3.2-21.8 20.9-39.2 43.5-43.2 59.2-7.9 122.9-12.4 189.9-12.4 59.2 0 116 3.6 169.3 9.8h-0.8c24.2 3 43.4 21.4 46.4 44.5-0.1-1 0.1-1.7 0-2.8 6 45.9 9.3 94.5 9.3 144.8 0 51.1-3.4 100.5-9.6 147.1-4.8 20.2-21.8 35.9-43.4 39.3z"
              fill="''' +
            getColor(1, color, colors, '#DE0E51') +
            '''"
            />
            <path
              d="M340.5 279.3c31.7-31.6 83.3-31.6 115 0l28.7 28.6c31.7 31.6 31.7 82.8 0 114.4s-83.3 31.6-115 0l-28.7-28.6c-31.7-31.6-31.7-82.8 0-114.4z"
              fill="''' +
            getColor(2, color, colors, '#DE0E51') +
            '''"
            />
            <path
              d="M663.5 279.2c-31.8-31.6-83.3-31.6-115.1 0l-28.7 28.6c-31.8 31.6-31.8 82.8 0 114.4 31.8 31.6 83.3 31.6 115.1 0l28.7-28.6c31.8-31.6 31.8-82.8 0-114.4z"
              fill="''' +
            getColor(3, color, colors, '#DE0E51') +
            '''"
            />
            <path
              d="M523.5 577.8c2.6-4.7 9.1-10.9 19.3-18.7 14.6-11 24.2-20.4 29.1-28 4.7-7.7 7.1-15.6 7.1-23.9 0-19.9-9.2-35.7-27.5-47.7-13.6-8.8-31.2-13.2-53.2-13.2-28.3 0-49.2 6.3-62.8 19-13.7 12.6-21.5 29.3-23.5 50.1l58.6 7c1.3-11.4 4.3-19.3 9-23.8 4.7-4.6 10.6-6.8 17.8-6.8 6.7 0 11.6 1.5 14.9 4.5 3.2 3 4.9 7.1 4.9 12.4 0 5.3-4.1 11.1-12.3 17.6-15.3 12.2-25.2 20.8-29.5 25.6-4.4 4.8-7.7 10.2-9.9 16.1s-3.3 13.4-3.3 22.9v5.5h57.4c-0.1-7.8 1.1-13.9 3.9-18.6z m-63.4 85.3h61.5V611h-61.5v52.1z"
              fill="''' +
            getColor(4, color, colors, '#FFE402') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.shouhuzhubo:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M506.8 506.8m-399.7 0a399.7 399.7 0 1 0 799.4 0 399.7 399.7 0 1 0-799.4 0Z"
              fill="''' +
            getColor(0, color, colors, '#FF6826') +
            '''"
            />
            <path
              d="M503.4 273.9v146.2h40.3l-40.3 121.4v103l34.3-46.1L597 420.1h71.1l-59.3 178.5-53.3 71.3h-52.1v136.5c149.7-59.3 249.8-165.1 249.8-286v-207c-85.8-5-169.4-18.5-249.8-39.5z"
              fill="''' +
            getColor(1, color, colors, '#FFA600') +
            '''"
            />
            <path
              d="M484.4 669.9l19-25.4v-103l-19 57.1H378l-59.3-178.5h71l41.5 125 41.5-125h30.8V273.9c-80.4 21-164 34.5-249.8 39.5v207.1c0 121.1 100.2 226.9 249.8 286V669.9h-19.1z"
              fill="''' +
            getColor(2, color, colors, '#FFE600') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.shouhuqishi:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M506 506.8m-399.7 0a399.7 399.7 0 1 0 799.4 0 399.7 399.7 0 1 0-799.4 0Z"
              fill="''' +
            getColor(0, color, colors, '#1452F1') +
            '''"
            />
            <path
              d="M506 262.8v120.1l49.8 70.2 83.2 25.2-52.3 68.7 1.5 85.9L506 605v190.5c149.8-59.2 249.8-165 249.8-286.1V302.2c-85.9-5-169.4-18.4-249.8-39.4z"
              fill="''' +
            getColor(1, color, colors, '#14D4FF') +
            '''"
            />
            <path
              d="M505.8 604.8l-82.3 28 1.5-85.9-52.3-68.7L456 453l49.9-70.4 0.1 0.2v-120c-80.4 21-163.9 34.4-249.8 39.4v207.1c0 121 100.1 226.8 249.8 285.9V604.8h-0.2z"
              fill="''' +
            getColor(2, color, colors, '#008EFF') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.zhibohuiyuan:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M507.3 506.3m-399.2 0a399.2 399.2 0 1 0 798.4 0 399.2 399.2 0 1 0-798.4 0Z"
              fill="''' +
            getColor(0, color, colors, '#6422D2') +
            '''"
            />
            <path
              d="M387.1 340.4l64.8 103.7c7.2 11.4 7.2 30.1 0 41.5l-64.8 103.7c-7.2 11.4-18.8 11.4-26 0l-64.8-103.7c-7.2-11.4-7.2-30.1 0-41.5l64.8-103.7c7.3-11.4 18.9-11.4 26 0zM653 340.4l64.8 103.7c7.2 11.4 7.2 30.1 0 41.5L653 589.3c-7.2 11.4-18.8 11.4-26 0l-64.8-103.7c-7.2-11.4-7.2-30.1 0-41.5L627 340.4c7.2-11.4 18.9-11.4 26 0z"
              fill="''' +
            getColor(1, color, colors, '#7348ED') +
            '''"
            />
            <path
              d="M735.7 675.6c-2.2 20.4-14.9 37.1-32.2 44.7-38.9 15.6-112.1 26.8-197.3 27.6-83.2 0.7-155-8.4-194.1-22.8-17.9-7.2-31.2-24.6-33.4-45.6 0 0.5-0.1 0.7 0 1.2L241 381.2c0.1-0.1 0.5 0.1 0.5-0.5 0-10.4 7.9-18.9 17.8-18.9 3.8 0 7.1 1.5 10.1 3.7l121.3 116.2 95-202.3c4.2-8.3 12.4-14 22-14 8.9 0 16.5 5.2 20.9 12.8l95.6 203.5 119-114s-0.1 0.6 0 0.4c3.2-3.2 7.6-5.3 12.3-5.3 9.8 0 17.8 8.4 17.8 18.9 0 0.5 0.2 0.2 0.4 0.4l-37.5 297.7c-0.3-1.5-0.6-2.6-0.5-4.2z"
              fill="''' +
            getColor(2, color, colors, '#9369FE') +
            '''"
            />
            <path
              d="M521.1 474.9l51.9 90.7c5.7 10.1 5.7 26.2 0 36.3l-51.9 90.7c-5.7 10.1-15 10.1-20.7 0l-51.8-90.7c-5.7-10.1-5.7-26.2 0-36.3l51.8-90.7c5.8-9.9 15-9.9 20.7 0z"
              fill="''' +
            getColor(3, color, colors, '#FFE400') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.vjhuangse:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M507.3 107.1c-220.5 0-399.2 178.7-399.2 399.2s178.7 399.2 399.2 399.2 399.2-178.7 399.2-399.2-178.6-399.2-399.2-399.2zM399.2 643.7h-74.9l-74.9-299.4h99.8L413.5 601l85.4-256.7h99.8l-99.8 299.4h-99.7z m274.4 0l-74.9 99.8h-99.8l74.9-99.8 99.8-299.4h99.8l-99.8 299.4z"
              fill="''' +
            getColor(0, color, colors, '#FFDC00') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.renqi:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M206.9 348.7c53.2-60.2 95.8-127.2 90.6-200.9-0.5-7.5-0.4-15-0.9-22.4-0.3-3.6 2.4-6.7 6.1-7 2.2-0.1 4.3-0.3 6.4-0.3 160.2 0 290.1 124 290.1 276.9 0 11.5-0.8 22.7-2.3 33.8-0.8 6.1 6.4 9.7 10.8 5.4 46.2-44.6 76.7-103.9 82.8-170.2 0.4-4.6 5.5-7.3 9.7-4.9 106.4 62.5 177.5 174.3 177.5 302.3 0 146.3-92.9 271.9-225.5 326-24 9.8-50.7 11.2-75.7 4-57.3-16.4-111.5-46.7-156.9-90.8-17-16.6-31.8-34.5-44.9-53.2-3-4.4-9.7-3.4-11.3 1.5-13.5 39.1-19.9 79.9-19.3 120.8 0.1 4.8-4.9 8-9.3 5.9-118.5-59.3-199.7-177.5-199.7-314.2 0-76.2 24.1-149.5 67-207.3"
              fill="''' +
            getColor(0, color, colors, '#FFA500') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.icon_test_1:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M505.3 317.3c176.5 0 319.7 116.3 319.7 259.8S681.9 836.9 505.3 836.9 185.6 720.6 185.6 577.1s143.2-259.8 319.7-259.8z"
              fill="''' +
            getColor(0, color, colors, '#662AFF') +
            '''"
            />
            <path
              d="M846.4 277c-33.2 0-59.9 26.8-59.9 59.9 0 15.9 6.2 30.3 16.2 41.1L660.9 505.9 557.5 298.8c17.8-14.7 29.1-36.9 29.1-61.7 0-44.1-35.8-80-80-80-44.1 0-80 35.8-80 80 0 24.8 11.4 47 29.2 61.7L352.5 505.9 210.7 378.1c10-10.7 16.2-25.2 16.2-41.1 0-33.1-26.8-59.9-59.9-59.9S107.1 304 107.1 337c0 29.8 21.7 54.4 50.1 59.1l48.2 360.1c0-1.4-0.1-2.8-0.3-4.4 3 26.1 20.5 47.6 44.3 56.6-2.1-0.8-4.2-1.4-6.2-1.7 50.2 18.8 148.8 31 262.5 30 114.2-1 213.8-15.1 264.6-35-1.9 0.3-3.9 0.9-6 1.7 23.7-9 41.2-30.6 44.3-56.6-0.3 3-0.5 5.9-0.2 8.5l48.1-359.1c28.4-4.7 50.1-29.3 50.1-59.1-0.1-33.2-27-60.1-60.2-60.1z"
              fill="''' +
            getColor(1, color, colors, '#FFE400') +
            '''"
            />
            <path
              d="M383 644.1l120-120 120 120-120 120-120-120z"
              fill="''' +
            getColor(2, color, colors, '#FF6934') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.icon_test_2:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M505.3 315C681.9 315 825 431.3 825 574.8S681.9 834.6 505.3 834.6 185.6 718.3 185.6 574.8 328.8 315 505.3 315z"
              fill="''' +
            getColor(0, color, colors, '#662AFF') +
            '''"
            />
            <path
              d="M846.4 277c-33.2 0-59.9 26.8-59.9 59.9 0 15.9 6.2 30.3 16.2 41.1L660.9 505.9 557.5 298.8c17.8-14.7 29.1-36.9 29.1-61.7 0-44.1-35.8-80-80-80-44.1 0-80 35.8-80 80 0 24.8 11.4 47 29.2 61.7L352.5 505.9 210.7 378.1c10-10.7 16.2-25.2 16.2-41.1 0-33.1-26.8-59.9-59.9-59.9S107.1 304 107.1 337c0 29.8 21.7 54.4 50.1 59.1l48.2 360.1c0-1.4-0.1-2.8-0.3-4.4 3 26.1 20.5 47.6 44.3 56.6-2.1-0.8-4.2-1.4-6.2-1.7 50.2 18.8 148.8 31 262.5 30 114.2-1 213.8-15.1 264.6-35-1.9 0.3-3.9 0.9-6 1.7 23.7-9 41.2-30.6 44.3-56.6-0.3 3-0.5 5.9-0.2 8.5l48.1-359.1c28.4-4.7 50.1-29.3 50.1-59.1-0.1-33.2-27-60.1-60.2-60.1z"
              fill="''' +
            getColor(1, color, colors, '#FFE400') +
            '''"
            />
            <path
              d="M383 644.1l120-120 120 120-120 120-120-120z"
              fill="''' +
            getColor(2, color, colors, '#662AFF') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.icon_test_3:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M505.3 313.9c176.5 0 319.7 116.3 319.7 259.8S681.9 833.5 505.3 833.5 185.6 717.2 185.6 573.7s143.2-259.8 319.7-259.8z"
              fill="''' +
            getColor(0, color, colors, '#FF115A') +
            '''"
            />
            <path
              d="M846.4 277c-33.2 0-59.9 26.8-59.9 59.9 0 15.9 6.2 30.3 16.2 41.1L660.9 505.9 557.5 298.8c17.8-14.7 29.1-36.9 29.1-61.7 0-44.1-35.8-80-80-80-44.1 0-80 35.8-80 80 0 24.8 11.4 47 29.2 61.7L352.5 505.9 210.7 378.1c10-10.7 16.2-25.2 16.2-41.1 0-33.1-26.8-59.9-59.9-59.9S107.1 304 107.1 337c0 29.8 21.7 54.4 50.1 59.1l48.2 360.1c0-1.4-0.1-2.8-0.3-4.4 3 26.1 20.5 47.6 44.3 56.6-2.1-0.8-4.2-1.4-6.2-1.7 50.2 18.8 148.8 31 262.5 30 114.2-1 213.8-15.1 264.6-35-1.9 0.3-3.9 0.9-6 1.7 23.7-9 41.2-30.6 44.3-56.6-0.3 3-0.5 5.9-0.2 8.5l48.1-359.1c28.4-4.7 50.1-29.3 50.1-59.1-0.1-33.2-27-60.1-60.2-60.1z"
              fill="''' +
            getColor(1, color, colors, '#FFE400') +
            '''"
            />
            <path
              d="M383 644.1l120-120 120 120-120 120-120-120z"
              fill="''' +
            getColor(2, color, colors, '#FF115A') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.yajun:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M392 440.3l-148-73.2c-16.3-8.1-30.5 0.1-31.7 18.3l-10.6 164.8c-1.2 18.2 11.1 39.5 27.5 47.6L377.1 671c16.3 8.1 30.6-0.1 31.7-18.3l10.6-164.8c1.3-18.2-11.1-39.5-27.4-47.6z m339.3-195.9l-148-73.2c-16.3-8.1-30.6 0.1-31.7 18.3L541 354.2c-1.2 18.2 11.1 39.5 27.5 47.6l148 73.2c16.3 8.1 30.6-0.1 31.7-18.3L758.7 292c1.2-18.2-11-39.5-27.4-47.6z"
              fill="''' +
            getColor(0, color, colors, '#C6C6C6') +
            '''"
            />
            <path
              d="M559.9 725.4c5.7 9.9 16.6 11.4 27 5.4l81.9-47.4c8-4.6 10.8-14.6 6.3-22.6-4.6-8-14.8-10.7-22.8-6.2L599.7 685l13.6-33.2c14.8-36.2 20.5-56.1 5.9-81.4l-0.2-0.4c-16.3-28.2-47.6-34.6-78.9-16.5-22.9 13.2-32.3 29.6-36.3 50.6-0.8 4.2 0 9 2.1 12.5 4.9 8.4 15.5 11.2 23.8 6.4 5.2-3 7.7-7.6 8.4-11.2 3.1-13.9 7.5-21.8 17-27.4 11.9-6.8 24.2-4.8 31.6 7.9 7.2 12.5 4.8 25.2-5.2 51.4l-22.6 60c-2.9 7.9-2.7 15.3 1 21.7z"
              fill="''' +
            getColor(1, color, colors, '#E8E8E8') +
            '''"
            />
            <path
              d="M900.9 507c10.5 24.5 6.1 52.3-9.8 72.9-36.9 44.8-118.5 108.5-221.2 169.1-100.4 59.1-193.4 98.9-250.1 110.2-26.4 4.3-53.7-5.9-70.2-27.8 0.3 0.4 0.4 1 0.8 1.4L110.2 522c0.1-0.3 0.6-0.2 0.2-1-6.8-11.7-2.6-26.8 9.3-33.6 4.5-2.7 9.6-3.2 14.5-2.8l222.5 45.9-16.3-294.3c-0.4-12.3 5.9-24.5 17.5-31.1 10.8-6.3 23.5-5.6 33.6-0.2l248.1 162.2 70.1-211.6c0.1 0 0.2 0.8 0.2 0.5 1.7-5.9 5.7-11.2 11.5-14.6 11.9-6.8 26.9-2.9 33.7 8.8 0.3 0.6 0.4 0.1 0.8 0.2l148 361.2c-1-1.6-2.2-2.7-3-4.6z"
              fill="''' +
            getColor(2, color, colors, '#E8E8E8') +
            '''"
            />
            <path
              d="M487.1 426.2c65.6-37.8 149.4-15.4 187.4 50.2 37.8 65.6 15.4 149.4-50.2 187.4-65.6 37.8-149.4 15.4-187.4-50.2s-15.4-149.4 50.2-187.4z"
              fill="''' +
            getColor(3, color, colors, '#C6C6C6') +
            '''"
            />
            <path
              d="M538.2 627.2c5.4 9.3 15.7 10.7 25.4 5.1l77.2-44.5c7.6-4.3 10.2-13.7 5.8-21.3-4.3-7.6-13.9-10.1-21.5-5.7l-49.6 28.6 12.9-31.2c13.9-34.1 19.4-52.9 5.6-76.7l-0.2-0.4c-15.4-26.6-44.9-32.6-74.3-15.6-21.5 12.4-30.5 27.9-34.3 47.7-0.8 3.9 0 8.4 1.9 11.9 4.5 7.9 14.5 10.6 22.5 6.1 4.9-2.8 7.2-7.1 8-10.6 3-13.1 7-20.6 16-25.7 11.1-6.5 22.8-4.5 29.7 7.5 6.8 11.8 4.4 23.7-4.9 48.3L537.2 607c-2.7 7.1-2.6 14 1 20.2z"
              fill="''' +
            getColor(4, color, colors, '#E8E8E8') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.guanjun:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M392 440.3l-148-73.2c-16.3-8.1-30.5 0.1-31.7 18.3l-10.6 164.8c-1.2 18.2 11.1 39.5 27.5 47.6L377.1 671c16.3 8.1 30.6-0.1 31.7-18.3l10.6-164.8c1.3-18.2-11.1-39.5-27.4-47.6z m339.3-195.9l-148-73.2c-16.3-8.1-30.6 0.1-31.7 18.3L541 354.2c-1.2 18.2 11.1 39.5 27.5 47.6l148 73.2c16.3 8.1 30.6-0.1 31.7-18.3l10.6-164.8c1.1-18.1-11.1-39.4-27.5-47.5z"
              fill="''' +
            getColor(0, color, colors, '#FEAE30') +
            '''"
            />
            <path
              d="M559.9 725.4c5.7 9.9 16.6 11.4 27 5.4l81.9-47.4c8-4.6 10.8-14.6 6.3-22.6-4.6-8-14.8-10.7-22.8-6.2L599.7 685l13.6-33.2c14.8-36.2 20.5-56.1 5.9-81.4l-0.2-0.4c-16.3-28.2-47.6-34.6-78.9-16.5-22.9 13.2-32.3 29.6-36.3 50.6-0.8 4.2 0 9 2.1 12.5 4.9 8.4 15.5 11.2 23.8 6.4 5.2-3 7.7-7.6 8.4-11.2 3.1-13.9 7.5-21.8 17-27.4 11.9-6.8 24.2-4.8 31.6 7.9 7.2 12.5 4.8 25.2-5.2 51.4l-22.6 60c-2.9 7.9-2.7 15.3 1 21.7z"
              fill="''' +
            getColor(1, color, colors, '#E5E5E5') +
            '''"
            />
            <path
              d="M900.9 507c10.5 24.5 6.1 52.3-9.8 72.9-36.9 44.8-118.5 108.5-221.2 169.1-100.4 59.1-193.4 98.9-250.1 110.2-26.4 4.3-53.7-5.9-70.2-27.8 0.3 0.4 0.4 1 0.8 1.4L110.2 522c0.1-0.3 0.6-0.2 0.2-1-6.8-11.7-2.6-26.8 9.3-33.6 4.5-2.7 9.6-3.2 14.5-2.8l222.5 45.9-16.3-294.3c-0.4-12.3 5.9-24.5 17.5-31.1 10.8-6.3 23.5-5.6 33.6-0.2l248.1 162.2 70.1-211.6c0.1 0 0.2 0.8 0.2 0.5 1.7-5.9 5.7-11.2 11.5-14.6 11.9-6.8 26.9-2.9 33.7 8.8 0.3 0.6 0.4 0.1 0.8 0.2l148 361.2c-1-1.6-2.2-2.7-3-4.6z"
              fill="''' +
            getColor(2, color, colors, '#FED530') +
            '''"
            />
            <path
              d="M487.1 426.2c65.6-37.8 149.4-15.4 187.4 50.2 37.8 65.6 15.4 149.4-50.2 187.4-65.6 37.8-149.4 15.4-187.4-50.2s-15.4-149.4 50.2-187.4z"
              fill="''' +
            getColor(3, color, colors, '#FEAE30') +
            '''"
            />
            <path
              d="M584.1 606.2c6.1 10.6 19.6 14.2 30.2 8.1 10.6-6.1 14.2-19.6 8.1-30.2l-62.3-102.7c-6.1-10.6-19.6-14.2-30.2-8.1l-0.5 0.3c-5.3 3-10.1 7.5-16.2 13.7L492.5 509c-6.5 6.8-7.8 16.2-3.2 24 5.2 9.1 17.4 12.1 26.4 6.8 2.1-1.2 4.4-3.2 6.2-5l11.6-11.4 50.6 82.8z"
              fill="''' +
            getColor(4, color, colors, '#FED530') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.jijun:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M392 439.3l-148-73.2c-16.3-8.1-30.5 0.1-31.7 18.3l-10.6 164.8c-1.2 18.2 11.1 39.5 27.5 47.6L377.1 670c16.3 8.1 30.6-0.1 31.7-18.3l10.6-164.8c1.3-18.2-11.1-39.5-27.4-47.6z m339.3-195.9l-148-73.2c-16.3-8.1-30.6 0.1-31.7 18.3L541 353.2c-1.2 18.2 11.1 39.5 27.5 47.6l148 73.2c16.3 8.1 30.6-0.1 31.7-18.3L758.7 291c1.2-18.2-11-39.5-27.4-47.6z"
              fill="''' +
            getColor(0, color, colors, '#AA733D') +
            '''"
            />
            <path
              d="M559.9 724.4c5.7 9.9 16.6 11.4 27 5.4l81.9-47.4c8-4.6 10.8-14.6 6.3-22.6-4.6-8-14.8-10.7-22.8-6.2L599.7 684l13.6-33.2c14.8-36.2 20.5-56.1 5.9-81.4l-0.2-0.4c-16.3-28.2-47.6-34.6-78.9-16.5-22.9 13.2-32.3 29.6-36.3 50.6-0.8 4.2 0 9 2.1 12.5 4.9 8.4 15.5 11.2 23.8 6.4 5.2-3 7.7-7.6 8.4-11.2 3.1-13.9 7.5-21.8 17-27.4 11.9-6.8 24.2-4.8 31.6 7.9 7.2 12.5 4.8 25.2-5.2 51.4l-22.6 60c-2.9 7.9-2.7 15.3 1 21.7z"
              fill="''' +
            getColor(1, color, colors, '#E5E5E5') +
            '''"
            />
            <path
              d="M900.9 506c10.5 24.5 6.1 52.3-9.8 72.9-36.9 44.8-118.5 108.5-221.2 169.1-100.4 59.1-193.4 98.9-250.1 110.2-26.4 4.3-53.7-5.9-70.2-27.8 0.3 0.4 0.4 1 0.8 1.4L110.2 521c0.1-0.3 0.6-0.2 0.2-1-6.8-11.7-2.6-26.8 9.3-33.6 4.5-2.7 9.6-3.2 14.5-2.8l222.5 45.9-16.3-294.3c-0.4-12.3 5.9-24.5 17.5-31.1 10.8-6.3 23.5-5.6 33.6-0.2l248.1 162.2 70.1-211.6c0.1 0 0.2 0.8 0.2 0.5 1.7-5.9 5.7-11.2 11.5-14.6 11.9-6.8 26.9-2.9 33.7 8.8 0.3 0.6 0.4 0.1 0.8 0.2l148 361.2c-1-1.6-2.2-2.7-3-4.6z"
              fill="''' +
            getColor(2, color, colors, '#CA9561') +
            '''"
            />
            <path
              d="M487.1 425.2c65.6-37.8 149.4-15.4 187.4 50.2 37.8 65.6 15.4 149.4-50.2 187.4-65.6 37.8-149.4 15.4-187.4-50.2s-15.4-149.4 50.2-187.4z"
              fill="''' +
            getColor(3, color, colors, '#AA733D') +
            '''"
            />
            <path
              d="M600.1 619.3c30.1-17.4 37.7-46.7 23.1-72.2l-0.2-0.4c-14.5-25.1-37.9-24.3-58.1-16.9l11.8-40.5c2.4-8.3 3.6-14.4-0.8-21.7-4.6-8.1-13.9-9.4-22.6-4.4l-65.6 38.2c-6.9 4-9.4 13.1-5.4 20.1 4 6.9 13.1 9.4 20.1 5.4l41.4-23.9-10.8 41.4c-1.9 7.2-1.7 11.8 0.6 15.8 4 6.9 13.1 9.4 20.1 5.4l4.6-2.7c16.5-9.6 29.9-9.1 36.3 1.9l0.2 0.4c5.8 10.1 1.5 21-9.6 27.4-10.6 6.2-20.6 7.4-32.2 5.2-3.5-0.5-7.4-0.6-11.6 1.8-7.7 4.4-10.5 14.8-6.1 22.5 2.5 4.2 7.1 6.9 11.1 7.7 16.5 3 34.5 0.6 53.7-10.5z"
              fill="''' +
            getColor(4, color, colors, '#CA9561') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.nan:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512 105.3c-220.7 0-399.7 179-399.7 399.7s179 399.7 399.7 399.7 399.7-179 399.7-399.7-179-399.7-399.7-399.7z m241.6 270.8h-0.5v175.4h-99.8v-90.1l-46.6 49.7c13.7 27.1 21.4 57.6 21.4 90 0 110.4-89.5 200-199.9 200s-199.9-89.5-199.9-200 89.5-200 199.9-200c36.1 0 70.1 9.6 99.3 26.4l48.3-51.4h-97.5v-99.7h275.3v99.7z"
              fill="''' +
            getColor(0, color, colors, '#0091FF') +
            '''"
            />
            <path
              d="M428 501.5c-55.1 0-99.7 44.8-99.7 100s44.6 100 99.7 100 99.7-44.8 99.7-100-44.7-100-99.7-100z"
              fill="''' +
            getColor(1, color, colors, '#0091FF') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.nv:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512 105.5c-220.6 0-399.5 178.9-399.5 399.5S291.4 904.5 512 904.5 911.5 725.6 911.5 505 732.6 105.5 512 105.5z m200 621.9H561.5v75.1h-99.1v-75.1H312V627.3h150.4v-6.2c-33.6-8.6-65.5-25.9-91.8-52.2-78-78-78-204.5 0-282.5s204.5-78 282.5 0 78 204.5 0 282.5c-26.3 26.3-58.1 43.7-91.7 52.2v6.2h150.4v100.1h0.2z"
              fill="''' +
            getColor(0, color, colors, '#FF4D94') +
            '''"
            />
            <path
              d="M582.4 356.1c-39.1-39.1-102.5-39.1-141.6 0-39.1 39.1-39.1 102.4 0 141.5 39.1 39.1 102.5 39.1 141.6 0 39.1-39 39.1-102.4 0-141.5z"
              fill="''' +
            getColor(1, color, colors, '#FF4D94') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.dongtai:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M109.9 514.6a399 399 0 1 0 798 0 399 399 0 1 0-798 0Z"
              fill="''' +
            getColor(0, color, colors, '#0091FF') +
            '''"
            />
            <path
              d="M597.6 401.9h99.8c27.6 0 49.9 22.3 49.9 49.9v232.8c0 27.6-22.3 49.9-49.9 49.9h-99.8c-27.6 0-49.9-22.3-49.9-49.9V451.8c0-27.6 22.3-49.9 49.9-49.9z"
              fill="''' +
            getColor(1, color, colors, '#1452F1') +
            '''"
            />
            <path
              d="M327.9 281.2H565c27.6 0 49.9 22.3 49.9 49.9l-2.5 365.8c12.3 28.3 25.7 49.9-1.8 49.9H327.9c-27.6 0-49.9-22.3-49.9-49.9V331.1c0-27.6 22.3-49.9 49.9-49.9z"
              fill="''' +
            getColor(2, color, colors, '#2CD5FF') +
            '''"
            />
            <path
              d="M681.3 749.2L483 746.7V608.8l135.5 72.6z"
              fill="''' +
            getColor(3, color, colors, '#2CD5FF') +
            '''"
            />
            <path
              d="M679.8 614.3c37.2 0 67.4 30.2 67.4 67.4s-30.2 67.5-67.4 67.5-67.5-30.2-67.5-67.5c0.1-37.2 30.2-67.4 67.5-67.4z"
              fill="''' +
            getColor(4, color, colors, '#1452F1') +
            '''"
            />
            <path
              d="M232.2 716c42.2 0 76.5 34.2 76.5 76.5 0 42.2 88.2-45.9 45.9-45.9-42.2 0-76.5-34.2-76.5-76.5 0-42.2-88.1 45.9-45.9 45.9z"
              fill="''' +
            getColor(5, color, colors, '#0091FF') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.gongxianbang:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M508.4 505.3m-398.2 0a398.2 398.2 0 1 0 796.4 0 398.2 398.2 0 1 0-796.4 0Z"
              fill="''' +
            getColor(0, color, colors, '#20BB45') +
            '''"
            />
            <path
              d="M754.8 275.5l-27.7 30.8 5.3 43.6c-0.2 2.2-0.9 4.5-2.5 6.1-3.1 3.3-7.9 3.8-11.4 1.4 0 0 0 0.1 0.1 0.5L682.4 340l-35.6 17.4c0-0.1 0.1-0.1 0-0.1-3.5 2.3-8.4 1.8-11.4-1.4-2.1-2.2-3-5-2.6-7.9 0-0.1 0 0-0.1 0l5-41.8-27-30.1c-3.1-3.1-3.9-8-1.7-12 1.5-2.6 3.9-4.3 6.6-4.8 0.1 0 0.1-0.1 0-0.2l39.1-7.9 19.1-36.1c1.1-2.6 3.3-4.7 6.1-5.5 4.2-1.1 8.6 0.9 10.6 4.8l19.4 36.8 39.2 7.9c-0.1 0.1-0.1 0.1 0 0.1 2.6 0.5 5.1 2.2 6.6 4.8 2.3 3.9 1.6 8.4-0.9 11.5z"
              fill="''' +
            getColor(1, color, colors, '#5ADB37') +
            '''"
            />
            <path
              d="M735.3 462l-86.1 95.6 16.4 135.3c-0.6 6.9-2.6 13.7-7.7 19-9.7 10.2-24.5 11.6-35.7 4.3-0.1-0.1 0.1 0.5 0.5 1.4L510 662.8l-110.7 54c0.1-0.2 0.2-0.6 0.1-0.5-11.2 7.2-26.1 5.7-35.7-4.3-6.4-6.7-9.2-15.8-8.4-24.6 0-0.2-0.1-0.1-0.2-0.1l15.6-129.7-84-93.3h0.1c-9.6-9.5-12.1-24.8-5.3-37.3 4.6-8.2 12.2-13.4 20.5-14.8 0.5-0.1 0.3-0.3-0.1-0.6l121.9-24.4L483.3 275s0.1 0.1 0.1 0c3.4-8 10.2-14.4 19-16.9 13.3-3.8 26.8 2.7 33.1 14.9L596 387.3l122.3 24.4c-0.3 0.2-0.3 0.5 0 0.6 8.4 1.4 15.9 6.6 20.5 14.8 6.4 11.4 4.4 25.4-3.5 34.9z"
              fill="''' +
            getColor(2, color, colors, '#89F92E') +
            '''"
            />
            <path
              d="M350.2 715.9H242.3C284.6 575.6 407.4 470.1 557 453c-104.9 49.6-183.2 146.2-206.8 262.9z"
              fill="''' +
            getColor(3, color, colors, '#20BB45') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.xiangce:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M506.8 506.8m-399.7 0a399.7 399.7 0 1 0 799.4 0 399.7 399.7 0 1 0-799.4 0Z"
              fill="''' +
            getColor(0, color, colors, '#20BB45') +
            '''"
            />
            <path
              d="M390.3 278h299.9c36.8 0 66.6 29.8 66.6 66.6v233.2c0 36.8-29.8 66.6-66.6 66.6H390.3c-36.8 0-66.6-29.8-66.6-66.6v-233c0-36.9 29.7-66.8 66.6-66.8z"
              fill="''' +
            getColor(1, color, colors, '#59DB37') +
            '''"
            />
            <path
              d="M323.7 361.3h299.9c36.8 0 66.6 29.8 66.6 66.6v233.2c0 36.8-29.8 66.6-66.6 66.6H323.7c-36.8 0-66.6-29.8-66.6-66.6V427.9c0-36.8 29.7-66.6 66.6-66.6z"
              fill="''' +
            getColor(2, color, colors, '#89F92F') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.remen:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M206.9 348.7c53.2-60.2 95.8-127.2 90.6-200.9-0.5-7.5-0.4-15-0.9-22.4-0.3-3.6 2.4-6.7 6.1-7 2.2-0.1 4.3-0.3 6.4-0.3 160.2 0 290.1 124 290.1 276.9 0 11.5-0.8 22.7-2.3 33.8-0.8 6.1 6.4 9.7 10.8 5.4 46.2-44.6 76.7-103.9 82.8-170.2 0.4-4.6 5.5-7.3 9.7-4.9 106.4 62.5 177.5 174.3 177.5 302.3 0 146.3-92.9 271.9-225.5 326-24 9.8-50.7 11.2-75.7 4-57.3-16.4-111.5-46.7-156.9-90.8-17-16.6-31.8-34.5-44.9-53.2-3-4.4-9.7-3.4-11.3 1.5-13.5 39.1-19.9 79.9-19.3 120.8 0.1 4.8-4.9 8-9.3 5.9-118.5-59.3-199.7-177.5-199.7-314.2 0-76.2 24.1-149.5 67-207.3"
              fill="''' +
            getColor(0, color, colors, '#F02D63') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.renrenzhubo:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M506.8 506.8m-399.7 0a399.7 399.7 0 1 0 799.4 0 399.7 399.7 0 1 0-799.4 0Z"
              fill="''' +
            getColor(0, color, colors, '#1452F1') +
            '''"
            />
            <path
              d="M494 573.8c0-22.9 4.7-44.8 12.9-64.6-1.5-0.2-3-0.5-4.6-0.6 1.5 0 3 0.2 4.3 0.5-8.8-1.8-15.4-10.6-15.4-21.1 0-5.3 1.7-10.2 4.6-14.1 10.7-11.7 20.1-26 27.5-41.7 11.5 1.4 25.6-7.3 34.4-22.4 10.6-18.2 9.2-38.8-3-45.9-4.1-2.3-8.9-2.7-13.8-1.7v-0.7h0.5v-59.6h-0.6c-3-32.8-29.5-58.7-62.4-59.3-15.7-14.8-36.5-24-59.6-24-46.4 0-84.2 36.9-87.2 83.3h-0.2v59.6h0.5v0.7c-4.9-1-9.7-0.6-13.8 1.7-12.2 7-13.6 27.6-3 45.9 8.8 15.2 22.8 23.8 34.4 22.4 7.4 15.9 16.9 30.3 27.9 42.2 2.8 3.7 4.6 8.6 4.6 14.1 0 10-6 18.2-14.2 20.6-38 5.3-74.7 15-109.5 28.6-32.3 14.7-55.1 47.6-55.1 86.3v12.6c0 28.5 18.5 52.4 43.8 60.2a833.24 833.24 0 0 0 189.4 21.8c42.9 0 85.1-3.3 126.3-9.6-41.6-30.7-68.7-79.7-68.7-135.2z"
              fill="''' +
            getColor(1, color, colors, '#0091FF') +
            '''"
            />
            <path
              d="M660.6 407.2c-69 0-128.4 42-153.6 102-8.4 19.9-12.9 41.7-12.9 64.6 0 55.5 27.1 104.6 68.8 134.9 27.5 20 61.3 31.7 97.8 31.7 92 0 166.6-74.6 166.6-166.6-0.1-92-74.6-166.6-166.7-166.6zM546.3 516.5l-2.1-6.4h47.3l7.2 21.5 20.5 61.8 14.7-44.3 12.9-39.1h47.3l-28.5 85.8-11 33.2h-71l-37.3-112.5z m191.4 112.7l-35.5 47.6H654.8l7.3-9.9 28.2-37.7 39.5-119H777l-39.3 119z"
              fill="''' +
            getColor(2, color, colors, '#2CD5FF') +
            '''"
            />
            <path
              d="M655.4 676.7c2.5-3.1 4.7-6.3 6.7-9.9l-7.3 9.9h0.6z"
              fill="''' +
            getColor(3, color, colors, '#2CD5FF') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.icon_test:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M903.9 256.5c0.8 0.3 1.4 0.7 2.2 1l0.4-3.3-2.6 2.3z m-33.5 39.7c-7.1 0-13.6 2.8-18.3 7.4-0.3 0.3-0.4 0.2-0.3-0.2l-176.2 159-143.7-287.7c-6.7-8.9-17.4-14.6-29.4-14.6-14 0-26.3 7.9-32.5 19.5L328.8 462.3 146.9 298.2c-3.8-2.1-8.2-3.3-12.9-3.3-14.6 0-26.3 11.8-26.3 26.3 0 1.2-0.2 1.8-0.6 1.8l56.3 420.5c0-1.6-0.1-3.2-0.3-4.9 3.5 29.3 23.2 53.6 49.8 63.6-2.5-0.9-4.8-1.6-7-2 56.5 21.2 167.3 34.9 295.1 33.8 128.3-1.1 240.2-16.9 297.4-39.3-2.1 0.4-4.3 1-6.7 1.9 26.6-10.1 46.3-34.4 49.8-63.7-0.4 3.5-0.4 6.6-0.2 9.6l55.9-418.3c-0.2-0.2-0.4-0.8-0.4-1.7 0-14.4-11.8-26.3-26.4-26.3zM98.1 256c0.4-0.2 0.9-0.3 1.3-0.6l-1.7-1.4 0.4 2z"
              fill="''' +
            getColor(0, color, colors, '#FFE400') +
            '''"
            />
            <path
              d="M383.7 616.6l118.5-118.5 118.5 118.5-118.5 118.6-118.5-118.6z"
              fill="''' +
            getColor(1, color, colors, '#FF6934') +
            '''"
            />
          </svg>
        ''';
        break;
    }

    return SvgPicture.string(svgXml, width: this.size, height: this.size);
  }
}
