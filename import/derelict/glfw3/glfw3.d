/*

Boost Software License - Version 1.0 - August 17th, 2003

Permission is hereby granted, free of charge, to any person or organization
obtaining a copy of the software and accompanying documentation covered by
this license (the "Software") to use, reproduce, display, distribute,
execute, and transmit the Software, and to prepare derivative works of the
Software, and to permit third-parties to whom the Software is furnished to
do so, all subject to the following:

The copyright notices in the Software and this entire statement, including
the above license grant, this restriction and the following disclaimer,
must be included in all copies of the Software, in whole or in part, and
all derivative works of the Software, unless such copies or derivative
works are solely in the form of machine-executable object code generated by
a source language processor.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE
FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.

*/
module derelict.glfw3.glfw3;

public
{
    import derelict.glfw3.types;
    import derelict.glfw3.functions;
}

private
{
    import derelict.util.loader;
    import derelict.util.system;

    static if(Derelict_OS_Windows)
        enum libNames = "glfw3.dll";
    else static if(Derelict_OS_Mac)
        enum libNames = "libglfw.3.dylib";
    else static if(Derelict_OS_Posix)
        enum libNames = "libglfw3.so,libglfw.so.3,/usr/local/lib/libglfw3.so,/usr/local/lib/libglfw.so.3";
    else
        static assert(0, "Need to implement GLFW libNames for this operating system.");
}

class DerelictGLFW3Loader : SharedLibLoader
{
    protected
    {
        override void loadSymbols()
        {
            bindFunc(cast(void**)&glfwInit, "glfwInit");
            bindFunc(cast(void**)&glfwTerminate, "glfwTerminate");
            bindFunc(cast(void**)&glfwGetVersion, "glfwGetVersion");
            bindFunc(cast(void**)&glfwGetVersionString, "glfwGetVersionString");
            bindFunc(cast(void**)&glfwSetErrorCallback, "glfwSetErrorCallback");
            bindFunc(cast(void**)&glfwGetMonitors, "glfwGetMonitors");
            bindFunc(cast(void**)&glfwGetPrimaryMonitor, "glfwGetPrimaryMonitor");
            bindFunc(cast(void**)&glfwGetMonitorPos, "glfwGetMonitorPos");
            bindFunc(cast(void**)&glfwGetMonitorPhysicalSize, "glfwGetMonitorPhysicalSize");
            bindFunc(cast(void**)&glfwGetMonitorName, "glfwGetMonitorName");
            bindFunc(cast(void**)&glfwSetMonitorCallback, "glfwSetMonitorCallback");
            bindFunc(cast(void**)&glfwGetVideoModes, "glfwGetVideoModes");
            bindFunc(cast(void**)&glfwGetVideoMode, "glfwGetVideoMode");
            bindFunc(cast(void**)&glfwSetGamma, "glfwSetGamma");
            bindFunc(cast(void**)&glfwGetGammaRamp, "glfwGetGammaRamp");
            bindFunc(cast(void**)&glfwSetGammaRamp, "glfwSetGammaRamp");
            bindFunc(cast(void**)&glfwDefaultWindowHints, "glfwDefaultWindowHints");
            bindFunc(cast(void**)&glfwWindowHint, "glfwWindowHint");
            bindFunc(cast(void**)&glfwCreateWindow, "glfwCreateWindow");
            bindFunc(cast(void**)&glfwDestroyWindow, "glfwDestroyWindow");
            bindFunc(cast(void**)&glfwWindowShouldClose, "glfwWindowShouldClose");
            bindFunc(cast(void**)&glfwSetWindowShouldClose, "glfwSetWindowShouldClose");
            bindFunc(cast(void**)&glfwSetWindowTitle, "glfwSetWindowTitle");
            bindFunc(cast(void**)&glfwGetWindowPos, "glfwGetWindowPos");
            bindFunc(cast(void**)&glfwSetWindowPos, "glfwSetWindowPos");
            bindFunc(cast(void**)&glfwGetWindowSize, "glfwGetWindowSize");
            bindFunc(cast(void**)&glfwSetWindowSize, "glfwSetWindowSize");
            bindFunc(cast(void**)&glfwGetFramebufferSize, "glfwGetFramebufferSize");
            bindFunc(cast(void**)&glfwIconifyWindow, "glfwIconifyWindow");
            bindFunc(cast(void**)&glfwRestoreWindow, "glfwRestoreWindow");
            bindFunc(cast(void**)&glfwShowWindow, "glfwShowWindow");
            bindFunc(cast(void**)&glfwHideWindow, "glfwHideWindow");
            bindFunc(cast(void**)&glfwGetWindowMonitor, "glfwGetWindowMonitor");
            bindFunc(cast(void**)&glfwGetWindowAttrib, "glfwGetWindowAttrib");
            bindFunc(cast(void**)&glfwSetWindowUserPointer, "glfwSetWindowUserPointer");
            bindFunc(cast(void**)&glfwGetWindowUserPointer, "glfwGetWindowUserPointer");
            bindFunc(cast(void**)&glfwSetWindowPosCallback, "glfwSetWindowPosCallback");
            bindFunc(cast(void**)&glfwSetWindowSizeCallback, "glfwSetWindowSizeCallback");
            bindFunc(cast(void**)&glfwSetWindowCloseCallback, "glfwSetWindowCloseCallback");
            bindFunc(cast(void**)&glfwSetWindowRefreshCallback, "glfwSetWindowRefreshCallback");
            bindFunc(cast(void**)&glfwSetWindowFocusCallback, "glfwSetWindowFocusCallback");
            bindFunc(cast(void**)&glfwSetWindowIconifyCallback, "glfwSetWindowIconifyCallback");
            bindFunc(cast(void**)&glfwSetFramebufferSizeCallback, "glfwSetFramebufferSizeCallback");
            bindFunc(cast(void**)&glfwPollEvents, "glfwPollEvents");
            bindFunc(cast(void**)&glfwWaitEvents, "glfwWaitEvents");
            bindFunc(cast(void**)&glfwGetInputMode, "glfwGetInputMode");
            bindFunc(cast(void**)&glfwSetInputMode, "glfwSetInputMode");
            bindFunc(cast(void**)&glfwGetKey, "glfwGetKey");
            bindFunc(cast(void**)&glfwGetMouseButton, "glfwGetMouseButton");
            bindFunc(cast(void**)&glfwGetCursorPos, "glfwGetCursorPos");
            bindFunc(cast(void**)&glfwSetCursorPos, "glfwSetCursorPos");
            bindFunc(cast(void**)&glfwSetKeyCallback, "glfwSetKeyCallback");
            bindFunc(cast(void**)&glfwSetCharCallback, "glfwSetCharCallback");
            bindFunc(cast(void**)&glfwSetMouseButtonCallback, "glfwSetMouseButtonCallback");
            bindFunc(cast(void**)&glfwSetCursorPosCallback, "glfwSetCursorPosCallback");
            bindFunc(cast(void**)&glfwSetScrollCallback, "glfwSetScrollCallback");
            bindFunc(cast(void**)&glfwJoystickPresent, "glfwJoystickPresent");
            bindFunc(cast(void**)&glfwGetJoystickAxes, "glfwGetJoystickAxes");
            bindFunc(cast(void**)&glfwGetJoystickButtons, "glfwGetJoystickButtons");
            bindFunc(cast(void**)&glfwGetJoystickName, "glfwGetJoystickName");
            bindFunc(cast(void**)&glfwSetClipboardString, "glfwSetClipboardString");
            bindFunc(cast(void**)&glfwGetClipboardString, "glfwGetClipboardString");
            bindFunc(cast(void**)&glfwGetTime, "glfwGetTime");
            bindFunc(cast(void**)&glfwSetTime, "glfwSetTime");
            bindFunc(cast(void**)&glfwMakeContextCurrent, "glfwMakeContextCurrent");
            bindFunc(cast(void**)&glfwGetCurrentContext, "glfwGetCurrentContext");
            bindFunc(cast(void**)&glfwSwapBuffers, "glfwSwapBuffers");
            bindFunc(cast(void**)&glfwSwapInterval, "glfwSwapInterval");
            bindFunc(cast(void**)&glfwExtensionSupported, "glfwExtensionSupported");
            bindFunc(cast(void**)&glfwGetProcAddress, "glfwGetProcAddress");
        }
    }
    public
    {
        this()
        {
            super(libNames);
        }
    }
}

__gshared DerelictGLFW3Loader DerelictGLFW3;

shared static this()
{
    DerelictGLFW3 = new DerelictGLFW3Loader();
}

shared static ~this()
{
    DerelictGLFW3.unload();
}
