This program is develop by BaekSD & JSJ in Linear Algebra class.

This program is a rubics cube simulation program that automatically solve mixed cube.

We used Processing and Matlab.

The following is the instruction manual of the program.

Sorry for explaining in Korean but we developed this several years ago so we can not remember well now.




a

matlab이랑 연동되는 클래스

setting() - 초기설정함수. 생성자를 사용하지 않았던 이유가 아마 matlabcontrol과 생성자를 같이쓰면 에러가 났던걸로 기억

eval() - 매트랩에서 코드를 실행하기 위한 함수. str의 코드를 실행한다.

solving() - 섞여있는 큐브의 솔루션을 찾는 함수. eval()함수를 호출해서 매트랩 내의 큐브를 맞추는 함수를 실행시킨다.


b

a에서 이어짐ㅇㅇ 이어지는 부분을 잘 맞추보셈

returnCubeStatus() - 현재 큐브가 섞여있는 상태를 매트랩에 전달해주기위한 함수. 사용자가 임의로 큐브를 조정하는 등의 상황을 위해 존재한다. 호출하면 Cube클래스의 객체에 존재하는 26개의 CubePart클래스의 객체의 returnCubeStatus()함수를 호출한다.


c

CubePart 클래스 내에 있는 함수다. MatlabCube클래스에서 returnCubeStatus()함수를 호출하면 그 내부에서 이 함수를 다시 호출한다.


d

CubePart클래스의 객체 안에 각 객체마다 6개의 CubePartPart클래스의 객체를 갖고 있는데, 조각 하나하나를 그리기위한 함수이다.







그리고 또 넣어야할 내용이 프로세싱을 실행파일로 만들면 자동으로 java파일이 만들어지는데, 소스를 확인해보면 프로세싱 파일명으로 클래스를 만든 다음에 프로세싱 파일 내부에 있던 모든 함수를 넣고, 다른 클래스들은 이너클래스로 만들어져서 들어간다.ㅇㅇ