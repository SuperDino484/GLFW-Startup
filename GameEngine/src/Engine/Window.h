#pragma once
#include "GLFW/glfw3.h"

namespace Engine {

	class Window
	{
	public:

		static void Create()
		{

			/* Initialize the library */
			if (!glfwInit())
				return;

			/* Create a windowed mode window and its OpenGL context */
			s_Window = glfwCreateWindow(640, 480, "Hello World", NULL, NULL);
			if (!s_Window)
			{
				glfwTerminate();
				return;
			}

			/* Make the window's context current */
			glfwMakeContextCurrent(s_Window);

			/* Loop until the user closes the window */
			while (!glfwWindowShouldClose(s_Window))
			{
				/* Render here */
				glClear(GL_COLOR_BUFFER_BIT);

				/* Swap front and back buffers */
				glfwSwapBuffers(s_Window);

				/* Poll for and process events */
				glfwPollEvents();
			}

			glfwTerminate();
		}

		static GLFWwindow* s_Window;
	};

}