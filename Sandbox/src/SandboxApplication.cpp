#include "GameEngine.h"
#include "Sandbox.h"

int main()
{
	Sandbox* sandbox = new Sandbox();
	sandbox->Run();
	delete sandbox;
	return 0;
}
