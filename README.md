# Flutter File Structure

## Overview

**Flutter File Structure** is a Mason brick designed to generate a scalable and well-organized Flutter project structure. This setup ensures maintainability and follows best practices by structuring the project into core, feature-based modules, and reusable components.

## Features

- Organized **core** and **feature** modules.
- Pre-configured **widgets, services, and utilities**.
- Supports adding new features dynamically using Mason.
- Includes asset management for **images, icons, and videos**.
- Uses **Cubit (flutter\_bloc)** for state management.

## Initial Setup

### 1. Create a flutter app.
Use your IDE or the command line to create a new flutter application. 

### 2. Install Mason

If you haven’t installed Mason yet, install it using:

```sh
dart pub global activate mason_cli
```

### 3. Initialize mason
Ensure you are in the root folder of your flutter application and initialize mason with the following command.
```sh
mason init
```
This will create a file mason.yaml in your root folder.

### 4. Adding code to mason.yaml
Add the following code to the mason.yaml file
```sh
bricks:
  flutter_structure:
    git:
      url: https://github.com/Sudevnedumparambath/flutter_file_structure.git
      path: bricks/flutter_structure
  feature:
    git:
      url: https://github.com/Sudevnedumparambath/flutter_file_structure.git
      path: bricks/feature
```

### 5. Download structure data
Run the following command to download and cache the bricks listed in your mason.yaml file
```sh
mason get
```


## Generate the Flutter Project Structure

From the root directory of the application itself, call the following command to create the file structure. 

```sh
mason make flutter_structure
```

This will generate the entire **Flutter project structure** with pre-configured files inside the lib folder of your application.

## Add a New Feature

To add a new feature inside the **features/** folder, run:

```sh
mason make feature_brick -o lib/features
```

Then, enter the **feature name** when prompted.




## Contributing

Feel free to open an issue or submit a pull request if you have improvements!

## License

This project is licensed under the [MIT License](LICENSE).

**Note:** This respository is a work in progress. I have only added a basic structure. I will be updating this soon ans will be adding more bricks as well as some initial codes in the default files so that it is possible to to work on the application easily.

