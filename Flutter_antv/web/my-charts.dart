// Dart JS示例
// AntV可视化组件（https://antv.antfin.com/zh-cn/g2/3.x/demo/pie/color-rose.html#）
// Dart JS文档（https://api.dart.cn/stable/2.16.2/dart-js/dart-js-library.html）

import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  DivElement dartStatus = querySelector('#dart-status') as DivElement;
  dartStatus.text = 'Dart is running!';

  var myData = JsObject.jsify([{
            "type": '睡眠',
            "value": 70
        }, {
            "type": '淡茶 & 烟斗 & 冥想',
            "value": 10
        }, {
            "type": '写作',
            "value": 10
        }, {
            "type": '教课',
            "value": 40
        }, {
            "type": '酒吧吃肉配白酒',
            "value": 40
        }, {
            "type": '散步',
            "value": 10
        }, {
            "type": '拜访',
            "value": 30
        }, {
            "type": '阅读',
            "value": 30
        }]);

  var userDv = context['chart'];
  userDv.callMethod('source', [myData]);
  userDv.callMethod('render', []);
}
