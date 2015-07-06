#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include <joystickcontroller.h>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    JoystickController leftJoystickController;
    JoystickController rightJoystickController;

    QQmlApplicationEngine engine;
    QQmlContext* context = engine.rootContext();
    context->setContextProperty("leftJoystickController", &leftJoystickController);
    context->setContextProperty("rightJoystickController", &rightJoystickController);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
