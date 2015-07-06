#include <iostream>

#include "joystickcontroller.h"

JoystickController::JoystickController(QObject *parent) : QObject(parent)
{

}
void JoystickController::moveUp()
{
    std::cout << "cpp: move up" << std::endl;
}

void JoystickController::moveDown()
{
    std::cout << "cpp: move down" << std::endl;
}

void JoystickController::moveLeft()
{
    std::cout << "cpp: move left" << std::endl;
}

void JoystickController::moveRight()
{
    std::cout << "cpp: move right" << std::endl;
}

