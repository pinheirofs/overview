#ifndef JOYSTICKCONTROLLER_H
#define JOYSTICKCONTROLLER_H

#include <QObject>

class JoystickController : public QObject
{
        Q_OBJECT
    public:
        JoystickController(QObject *parent = 0);

    signals:

    public slots:
        void moveUp();
        void moveDown();
        void moveLeft();
        void moveRight();
};

#endif // JOYSTICKCONTROLLER_H
