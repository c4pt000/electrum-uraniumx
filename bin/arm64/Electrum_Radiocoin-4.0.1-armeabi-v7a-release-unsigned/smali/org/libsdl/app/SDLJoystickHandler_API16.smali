.class Lorg/libsdl/app/SDLJoystickHandler_API16;
.super Lorg/libsdl/app/SDLJoystickHandler_API12;
.source "SDLControllerManager.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 294
    invoke-direct {p0}, Lorg/libsdl/app/SDLJoystickHandler_API12;-><init>()V

    return-void
.end method


# virtual methods
.method public getJoystickDescriptor(Landroid/view/InputDevice;)Ljava/lang/String;
    .locals 2

    .line 298
    invoke-virtual {p1}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 304
    :cond_0
    invoke-super {p0, p1}, Lorg/libsdl/app/SDLJoystickHandler_API12;->getJoystickDescriptor(Landroid/view/InputDevice;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
