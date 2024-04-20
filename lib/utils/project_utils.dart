class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

// PROJECTS
List<ProjectUtils> myProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/ecommerceappui.jpg',
    title: 'Ecommerce App UI',
    subtitle:
        ' A minimalist eCommerce mobile application using Flutter framework, , providing users with essential shopping functionalities in a streamlined interface.',
  ),
  ProjectUtils(
    image: 'assets/projects/notesapp.jpg',
    title: 'Notes App',
    subtitle:
        'A Notes application using Flutter framework for front-end and Firebase for backend. Implemented functionalities for creating, reading, updating, and deleting data from a remote database.',
  ),
  ProjectUtils(
    image: 'assets/projects/todoapp.jpg',
    title: 'To Do App',
    subtitle:
        "A cross-platform to-do list application using Flutter framework. Implemented features for adding,  deleting and checking off  tasks and used hive for data storage",
  ),
  ProjectUtils(
    image: 'assets/projects/weatherapp.jpg',
    title: 'Weather App',
    subtitle:
        'A weather application using Flutter, providing real-time weather information based on user location.',
  ),
];
