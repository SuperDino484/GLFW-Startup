#include "Sandbox.h"
#include "Engine/Window.h"

GLFWwindow* Engine::Window::s_Window;

Sandbox::Sandbox()
{
	Engine::Window::Create();
}

Sandbox::~Sandbox()
{
	delete Engine::Window::s_Window;
}

void Sandbox::Run()
{
	while (true);
}
