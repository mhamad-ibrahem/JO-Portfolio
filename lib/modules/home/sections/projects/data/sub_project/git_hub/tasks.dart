
import '../../../model/project_model.dart';

MyWorkModel taskToDo = MyWorkModel(
  image: "assets/E-commerce.webp",
  name: "Task To Do",
  gitHubLink: "//github.com/mhamad-ibrahem/TaskToDo",
  appStoreLink: "",
  playStoreLink: "",
  details: """This is a just a sample to do app with flutter using getx state management and hive local storage you can add delete update task and make it as done.
""",
  imageList: getAllImages(),
);

List<String> getAllImages() {
  List<String> images = [];
  for (int i = 1; i < 7; i++) {
    images.add("assets/images/git_hub/tasks/tasks$i.webp");
  }
  return images;
}
