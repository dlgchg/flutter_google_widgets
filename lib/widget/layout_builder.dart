/*
   @Author liwei
   @Date 2019/1/10 9:04 AM
   @Description: TODO
 */

import 'package:flutter/material.dart';

class GoogleLayoutBuilder extends StatelessWidget {
  String name() {
    return 'LayoutBuilder';
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxHeight < 600) {
          return Row(
            children: <Widget>[
              Container(
                width: 200.0,
                color: Colors.green,
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ],
          );
        } else {
          return Container(
            color: Colors.green,
            child: Text('''
             biggest : ${constraints.biggest} 
             maxHeight : ${constraints.maxHeight} 
             maxWidth : ${constraints.maxWidth}
             constrain : ${constraints.constrain(Size(100.0, 200.0))}
             hasBoundedHeight : ${constraints.hasBoundedHeight}
             hasBoundedWidth : ${constraints.hasBoundedWidth}
             hashCode : ${constraints.hashCode}
             hasInfiniteHeight : ${constraints.hasInfiniteHeight}
             hasInfiniteWidth : ${constraints.hasInfiniteWidth}
             hasTightHeight : ${constraints.hasTightHeight}
             hasTightWidth : ${constraints.hasTightWidth}
             isNormalized : ${constraints.isNormalized}
             isSatisfiedBy : ${constraints.isSatisfiedBy(Size(100.0, 200.0))}
             isTight : ${constraints.isTight}
             flipped : ${constraints.flipped}
             heightConstraints : ${constraints.heightConstraints()}
             smallest : ${constraints.smallest}
             normalize : ${constraints.normalize()}
             widthConstraints : ${constraints.widthConstraints()}
             toString : ${constraints.toString()}
             '''),
          );
        }
      },
    );
  }
}
