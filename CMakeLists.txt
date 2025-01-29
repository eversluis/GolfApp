cmake_minimum_required(VERSION 3.16)

project(GolfApp VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appGolf
    main.cpp
)

set_source_files_properties(Theme.qml
    PROPERTIES QT_QML_SINGLETON_TYPE TRUE)

qt_add_qml_module(appGolf
    URI Golf
    VERSION 1.0
    QML_FILES
        Main.qml
        Theme.qml
        Gauge.qml
        Green.qml
        Book.qml
        Hole.qml
        Settings.qml
        MenuButton.qml
    RESOURCES
        images/book.svg
        images/flag.svg
        images/green.svg
        images/Hole1.jpg
        images/Green1.jpg
        images/book.jpg
)

set_target_properties(appGolf PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.golfapp
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appGolf
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appGolf
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
