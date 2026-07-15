enum direct  {up,down,left,right}

void main(){
  direct d = direct.up;
  switch(d){
    case direct.up:
      print('is up');
      break;
    case direct.down:
      print('is down');
      break;
    case direct.left:
      print('is left');
      break;
    case direct.right:
      print('is right');
      break;
  }
  print('${d.name} ${d.index}');

}