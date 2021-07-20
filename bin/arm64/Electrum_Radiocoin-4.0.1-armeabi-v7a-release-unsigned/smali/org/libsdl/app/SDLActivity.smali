.class public Lorg/libsdl/app/SDLActivity;
.super Landroid/app/Activity;
.source "SDLActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libsdl/app/SDLActivity$ShowTextInputTask;,
        Lorg/libsdl/app/SDLActivity$SDLCommandHandler;,
        Lorg/libsdl/app/SDLActivity$NativeState;
    }
.end annotation


# static fields
.field static final COMMAND_CHANGE_TITLE:I = 0x1

.field static final COMMAND_CHANGE_WINDOW_STYLE:I = 0x2

.field static final COMMAND_SET_KEEP_SCREEN_ON:I = 0x5

.field static final COMMAND_TEXTEDIT_HIDE:I = 0x3

.field protected static final COMMAND_USER:I = 0x8000

.field protected static final SDL_ORIENTATION_LANDSCAPE:I = 0x1

.field protected static final SDL_ORIENTATION_LANDSCAPE_FLIPPED:I = 0x2

.field protected static final SDL_ORIENTATION_PORTRAIT:I = 0x3

.field protected static final SDL_ORIENTATION_PORTRAIT_FLIPPED:I = 0x4

.field protected static final SDL_ORIENTATION_UNKNOWN:I = 0x0

.field private static final SDL_SYSTEM_CURSOR_ARROW:I = 0x0

.field private static final SDL_SYSTEM_CURSOR_CROSSHAIR:I = 0x3

.field private static final SDL_SYSTEM_CURSOR_HAND:I = 0xb

.field private static final SDL_SYSTEM_CURSOR_IBEAM:I = 0x1

.field private static final SDL_SYSTEM_CURSOR_NO:I = 0xa

.field private static final SDL_SYSTEM_CURSOR_NONE:I = -0x1

.field private static final SDL_SYSTEM_CURSOR_SIZEALL:I = 0x9

.field private static final SDL_SYSTEM_CURSOR_SIZENESW:I = 0x6

.field private static final SDL_SYSTEM_CURSOR_SIZENS:I = 0x8

.field private static final SDL_SYSTEM_CURSOR_SIZENWSE:I = 0x5

.field private static final SDL_SYSTEM_CURSOR_SIZEWE:I = 0x7

.field private static final SDL_SYSTEM_CURSOR_WAIT:I = 0x2

.field private static final SDL_SYSTEM_CURSOR_WAITARROW:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SDL"

.field private static expansionFile:Ljava/lang/Object; = null

.field private static expansionFileMethod:Ljava/lang/reflect/Method; = null

.field public static keyboardInputType:I = 0x91

.field public static mBrokenLibraries:Z

.field protected static mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

.field public static mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

.field protected static mCurrentOrientation:I

.field protected static mCursors:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static mExitCalledFromJava:Z

.field protected static mFullscreenModeActive:Z

.field protected static mHIDDeviceManager:Lorg/libsdl/app/HIDDeviceManager;

.field public static mHasFocus:Z

.field public static mIsResumedCalled:Z

.field public static mIsSurfaceReady:Z

.field protected static mLastCursorID:I

.field protected static mLayout:Landroid/view/ViewGroup;

.field protected static mMotionListener:Lorg/libsdl/app/SDLGenericMotionListener_API12;

.field public static mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

.field protected static mSDLThread:Ljava/lang/Thread;

.field protected static mScreenKeyboardShown:Z

.field public static mSeparateMouseAndTouch:Z

.field protected static mSingleton:Lorg/libsdl/app/SDLActivity;

.field protected static mSurface:Lorg/libsdl/app/SDLSurface;

.field protected static mTextEdit:Landroid/view/View;


# instance fields
.field commandHandler:Landroid/os/Handler;

.field protected dialogs:I

.field protected final messageboxSelection:[I

.field private final rehideSystemUi:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 650
    new-instance v0, Lorg/libsdl/app/SDLActivity$SDLCommandHandler;

    invoke-direct {v0}, Lorg/libsdl/app/SDLActivity$SDLCommandHandler;-><init>()V

    iput-object v0, p0, Lorg/libsdl/app/SDLActivity;->commandHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1153
    iput-object v0, p0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    const/4 v0, 0x0

    .line 1156
    iput v0, p0, Lorg/libsdl/app/SDLActivity;->dialogs:I

    .line 1355
    new-instance v0, Lorg/libsdl/app/SDLActivity$7;

    invoke-direct {v0, p0}, Lorg/libsdl/app/SDLActivity$7;-><init>(Lorg/libsdl/app/SDLActivity;)V

    iput-object v0, p0, Lorg/libsdl/app/SDLActivity;->rehideSystemUi:Ljava/lang/Runnable;

    return-void
.end method

.method public static clipboardGetText()Ljava/lang/String;
    .locals 1

    .line 1391
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    invoke-interface {v0}, Lorg/libsdl/app/SDLClipboardHandler;->clipboardGetText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static clipboardHasText()Z
    .locals 1

    .line 1384
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    invoke-interface {v0}, Lorg/libsdl/app/SDLClipboardHandler;->clipboardHasText()Z

    move-result v0

    return v0
.end method

.method public static clipboardSetText(Ljava/lang/String;)V
    .locals 1

    .line 1398
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    invoke-interface {v0, p0}, Lorg/libsdl/app/SDLClipboardHandler;->clipboardSetText(Ljava/lang/String;)V

    return-void
.end method

.method public static createCustomCursor([IIIII)I
    .locals 6

    .line 1405
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1406
    sget p1, Lorg/libsdl/app/SDLActivity;->mLastCursorID:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    sput p1, Lorg/libsdl/app/SDLActivity;->mLastCursorID:I

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "android.view.PointerIcon"

    .line 1409
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    .line 1410
    const-class v3, Landroid/graphics/Bitmap;

    aput-object v3, v2, p1

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, p2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string v3, "create"

    .line 1411
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1412
    sget-object v2, Lorg/libsdl/app/SDLActivity;->mCursors:Ljava/util/Hashtable;

    sget v3, Lorg/libsdl/app/SDLActivity;->mLastCursorID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-virtual {v0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1416
    sget p0, Lorg/libsdl/app/SDLActivity;->mLastCursorID:I

    return p0

    :catch_0
    return p1
.end method

.method public static getContentView()Landroid/view/View;
    .locals 1

    .line 972
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 874
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentOrientation()I
    .locals 4

    .line 331
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    .line 332
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public static getDisplayDPI()Landroid/util/DisplayMetrics;
    .locals 1

    .line 939
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public static getManifestEnvironmentVariables()Z
    .locals 7

    const/4 v0, 0x0

    .line 947
    :try_start_0
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 948
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v2, "SDL_ENV."

    const/16 v3, 0x8

    .line 954
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 955
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 956
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 957
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 958
    invoke-static {v6, v5}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 964
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDL"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method protected static getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;
    .locals 2

    .line 100
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mMotionListener:Lorg/libsdl/app/SDLGenericMotionListener_API12;

    if-nez v0, :cond_2

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 102
    new-instance v0, Lorg/libsdl/app/SDLGenericMotionListener_API26;

    invoke-direct {v0}, Lorg/libsdl/app/SDLGenericMotionListener_API26;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mMotionListener:Lorg/libsdl/app/SDLGenericMotionListener_API12;

    goto :goto_0

    .line 104
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 105
    new-instance v0, Lorg/libsdl/app/SDLGenericMotionListener_API24;

    invoke-direct {v0}, Lorg/libsdl/app/SDLGenericMotionListener_API24;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mMotionListener:Lorg/libsdl/app/SDLGenericMotionListener_API12;

    goto :goto_0

    .line 107
    :cond_1
    new-instance v0, Lorg/libsdl/app/SDLGenericMotionListener_API12;

    invoke-direct {v0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mMotionListener:Lorg/libsdl/app/SDLGenericMotionListener_API12;

    .line 111
    :cond_2
    :goto_0
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mMotionListener:Lorg/libsdl/app/SDLGenericMotionListener_API12;

    return-object v0
.end method

.method public static getNativeSurface()Landroid/view/Surface;
    .locals 1

    .line 1040
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1043
    :cond_0
    invoke-virtual {v0}, Lorg/libsdl/app/SDLSurface;->getNativeSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public static handleNativeExit()V
    .locals 1

    const/4 v0, 0x0

    .line 533
    sput-object v0, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    .line 534
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {v0}, Lorg/libsdl/app/SDLActivity;->finish()V

    :cond_0
    return-void
.end method

.method public static handleNativeState()V
    .locals 3

    .line 490
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sget-object v1, Lorg/libsdl/app/SDLActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    if-ne v0, v1, :cond_0

    return-void

    .line 496
    :cond_0
    sget-object v1, Lorg/libsdl/app/SDLActivity$NativeState;->INIT:Lorg/libsdl/app/SDLActivity$NativeState;

    if-ne v0, v1, :cond_1

    .line 498
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    return-void

    .line 503
    :cond_1
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sget-object v1, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    if-ne v0, v1, :cond_3

    .line 504
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->nativePause()V

    .line 505
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    if-eqz v0, :cond_2

    .line 506
    invoke-virtual {v0}, Lorg/libsdl/app/SDLSurface;->handlePause()V

    .line 507
    :cond_2
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    return-void

    .line 512
    :cond_3
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sget-object v1, Lorg/libsdl/app/SDLActivity$NativeState;->RESUMED:Lorg/libsdl/app/SDLActivity$NativeState;

    if-ne v0, v1, :cond_5

    .line 513
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mIsSurfaceReady:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mHasFocus:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mIsResumedCalled:Z

    if-eqz v0, :cond_5

    .line 514
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    if-nez v0, :cond_4

    .line 519
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/libsdl/app/SDLMain;

    invoke-direct {v1}, Lorg/libsdl/app/SDLMain;-><init>()V

    const-string v2, "SDLThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    .line 520
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/libsdl/app/SDLSurface;->enableSensor(IZ)V

    .line 521
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 524
    :cond_4
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->nativeResume()V

    .line 525
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLSurface;->handleResume()V

    .line 526
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    :cond_5
    return-void
.end method

.method public static initialize()V
    .locals 2

    const/4 v0, 0x0

    .line 176
    sput-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    .line 177
    sput-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    .line 178
    sput-object v0, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    .line 179
    sput-object v0, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    .line 180
    sput-object v0, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    .line 181
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lorg/libsdl/app/SDLActivity;->mCursors:Ljava/util/Hashtable;

    const/4 v1, 0x0

    .line 182
    sput v1, Lorg/libsdl/app/SDLActivity;->mLastCursorID:I

    .line 183
    sput-object v0, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    .line 184
    sput-boolean v1, Lorg/libsdl/app/SDLActivity;->mExitCalledFromJava:Z

    .line 185
    sput-boolean v1, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    .line 186
    sput-boolean v1, Lorg/libsdl/app/SDLActivity;->mIsResumedCalled:Z

    .line 187
    sput-boolean v1, Lorg/libsdl/app/SDLActivity;->mIsSurfaceReady:Z

    const/4 v0, 0x1

    .line 188
    sput-boolean v0, Lorg/libsdl/app/SDLActivity;->mHasFocus:Z

    .line 189
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->INIT:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 190
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->INIT:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    return-void
.end method

.method public static inputGetInputDeviceIds(I)[I
    .locals 6

    .line 1053
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .line 1054
    array-length v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1056
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 1057
    aget v4, v0, v2

    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1058
    invoke-virtual {v4}, Landroid/view/InputDevice;->getSources()I

    move-result v5

    and-int/2addr v5, p0

    if-eqz v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 1059
    invoke-virtual {v4}, Landroid/view/InputDevice;->getId()I

    move-result v4

    aput v4, v1, v3

    move v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1062
    :cond_1
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method public static isAndroidTV()Z
    .locals 3

    .line 881
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 882
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    return v1

    .line 885
    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "MINIX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "NEO-U1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 888
    :cond_1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Amlogic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "X96-W"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static isChromebook()Z
    .locals 2

    .line 915
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "org.chromium.arc.device_management"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDeXMode()Z
    .locals 5

    .line 922
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-ge v0, v2, :cond_0

    return v1

    .line 926
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 927
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "SEM_DESKTOP_MODE_ENABLED"

    .line 928
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    const-string v4, "semDesktopModeEnabled"

    .line 929
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v0, :cond_1

    const/4 v1, 0x1

    :catch_0
    :cond_1
    return v1
.end method

.method public static isScreenKeyboardShown()Z
    .locals 2

    .line 811
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 815
    :cond_0
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mScreenKeyboardShown:Z

    if-nez v0, :cond_1

    return v1

    .line 819
    :cond_1
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 820
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v0

    return v0
.end method

.method public static isTablet()Z
    .locals 7

    .line 898
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 899
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 900
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 902
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    iget v3, v0, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v3, v3

    div-double/2addr v1, v3

    .line 903
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v3, v3

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-double v5, v0

    div-double/2addr v3, v5

    mul-double v1, v1, v1

    mul-double v3, v3, v3

    add-double/2addr v1, v3

    .line 905
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTextInputEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1027
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 1028
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1033
    :cond_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static manualBackButton()V
    .locals 1

    .line 449
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLActivity;->pressBackButton()V

    return-void
.end method

.method public static native nativeGetHint(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativeLowMemory()V
.end method

.method public static native nativePause()V
.end method

.method public static native nativeQuit()V
.end method

.method public static native nativeResume()V
.end method

.method public static native nativeRunMain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
.end method

.method public static native nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetupJNI()I
.end method

.method public static native onNativeAccel(FFF)V
.end method

.method public static native onNativeClipboardChanged()V
.end method

.method public static native onNativeDropFile(Ljava/lang/String;)V
.end method

.method public static native onNativeKeyDown(I)V
.end method

.method public static native onNativeKeyUp(I)V
.end method

.method public static native onNativeKeyboardFocusLost()V
.end method

.method public static native onNativeMouse(IIFFZ)V
.end method

.method public static native onNativeOrientationChanged(I)V
.end method

.method public static native onNativeResize(IIIIIF)V
.end method

.method public static native onNativeSurfaceChanged()V
.end method

.method public static native onNativeSurfaceDestroyed()V
.end method

.method public static native onNativeTouch(IIIFFF)V
.end method

.method public static openAPKExpansionInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1095
    sget-object v0, Lorg/libsdl/app/SDLActivity;->expansionFile:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const-string v0, "SDL_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION"

    .line 1096
    invoke-static {v0}, Lorg/libsdl/app/SDLActivity;->nativeGetHint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    const-string v4, "SDL_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION"

    .line 1100
    invoke-static {v4}, Lorg/libsdl/app/SDLActivity;->nativeGetHint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v3

    .line 1108
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1109
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v5, "com.android.vending.expansion.zipfile.APKExpansionSupport"

    .line 1118
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getAPKExpansionZipFile"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    .line 1119
    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    .line 1120
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v7

    aput-object v7, v6, v1

    aput-object v0, v6, v2

    aput-object v4, v6, v10

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/libsdl/app/SDLActivity;->expansionFile:Ljava/lang/Object;

    .line 1122
    sget-object v0, Lorg/libsdl/app/SDLActivity;->expansionFile:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "getInputStream"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    .line 1123
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/libsdl/app/SDLActivity;->expansionFileMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1125
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1126
    sput-object v3, Lorg/libsdl/app/SDLActivity;->expansionFile:Ljava/lang/Object;

    .line 1127
    sput-object v3, Lorg/libsdl/app/SDLActivity;->expansionFileMethod:Ljava/lang/reflect/Method;

    .line 1128
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not access APK expansion support library"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1111
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1112
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No valid file versions set for APK expansion files"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1135
    :cond_2
    :goto_0
    :try_start_2
    sget-object v0, Lorg/libsdl/app/SDLActivity;->expansionFileMethod:Ljava/lang/reflect/Method;

    sget-object v3, Lorg/libsdl/app/SDLActivity;->expansionFile:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p0, :cond_3

    return-object p0

    .line 1144
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Could not find path in APK expansion file"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    move-exception p0

    .line 1138
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1139
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not open stream from APK expansion file"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static sendMessage(II)Z
    .locals 1

    .line 864
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 867
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/libsdl/app/SDLActivity;->sendCommand(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static setActivityTitle(Ljava/lang/String;)Z
    .locals 2

    .line 743
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lorg/libsdl/app/SDLActivity;->sendCommand(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static setCustomCursor(I)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.view.PointerIcon"

    .line 1425
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1426
    const-class v2, Lorg/libsdl/app/SDLSurface;

    const-string v3, "setPointerIcon"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v1, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1427
    sget-object v2, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    new-array v3, v4, [Ljava/lang/Object;

    sget-object v5, Lorg/libsdl/app/SDLActivity;->mCursors:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    return v0
.end method

.method public static setOrientation(IIZLjava/lang/String;)V
    .locals 1

    .line 761
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/libsdl/app/SDLActivity;->setOrientationBis(IIZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setRelativeMouseEnabled(Z)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 853
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->supportsRelativeMouse()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 857
    :cond_0
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->setRelativeMouseEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public static setSystemCursor(I)Z
    .locals 9

    const/16 v0, 0x3ec

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x3ea

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x3f4

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x3fc

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x3f7

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x3f6

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x3f8

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x3f9

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x3ef

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x3f0

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x3e8

    :goto_0
    :pswitch_a
    :try_start_0
    const-string p0, "android.view.PointerIcon"

    .line 1479
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 1480
    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "getSystemIcon"

    .line 1481
    invoke-virtual {p0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1482
    const-class v4, Lorg/libsdl/app/SDLSurface;

    const-string v6, "setPointerIcon"

    new-array v7, v5, [Ljava/lang/Class;

    aput-object p0, v7, v1

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 1483
    sget-object v4, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v8

    aput-object v8, v2, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v3, v7, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-virtual {p0, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setWindowStyle(Z)V
    .locals 2

    .line 751
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lorg/libsdl/app/SDLActivity;->sendCommand(ILjava/lang/Object;)Z

    return-void
.end method

.method public static showTextInput(IIII)Z
    .locals 2

    .line 1021
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    iget-object v0, v0, Lorg/libsdl/app/SDLActivity;->commandHandler:Landroid/os/Handler;

    new-instance v1, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public static supportsRelativeMouse()Z
    .locals 3

    .line 830
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->isChromebook()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 841
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-ge v0, v2, :cond_1

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->isDeXMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 845
    :cond_1
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->supportsRelativeMouse()Z

    move-result v0

    return v0
.end method

.method public static triggerAppConfirmedActive()V
    .locals 1

    .line 1069
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLActivity;->appConfirmedActive()V

    return-void
.end method


# virtual methods
.method public appConfirmedActive()V
    .locals 0

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 470
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 474
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x19

    if-eq v0, v2, :cond_2

    const/16 v2, 0x18

    if-eq v0, v2, :cond_2

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa8

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa9

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 484
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method protected finishLoad()V
    .locals 6

    const/4 v0, 0x1

    .line 213
    :try_start_0
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->loadLibraries()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v1

    .line 219
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 220
    sput-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    .line 221
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    .line 215
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    sput-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    .line 217
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 224
    :goto_0
    sget-boolean v1, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 226
    sput-object p0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    .line 227
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An error occurred while trying to start the application. Please try again and/or reinstall."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "line.separator"

    .line 229
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "SDL Error"

    .line 232
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 233
    new-instance v0, Lorg/libsdl/app/SDLActivity$1;

    invoke-direct {v0, p0}, Lorg/libsdl/app/SDLActivity$1;-><init>(Lorg/libsdl/app/SDLActivity;)V

    const-string v3, "Exit"

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 241
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 242
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 248
    :cond_0
    invoke-static {}, Lorg/libsdl/app/SDL;->setupJNI()V

    .line 251
    invoke-static {}, Lorg/libsdl/app/SDL;->initialize()V

    .line 254
    sput-object p0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    .line 255
    invoke-static {p0}, Lorg/libsdl/app/SDL;->setContext(Landroid/content/Context;)V

    .line 257
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 258
    new-instance v0, Lorg/libsdl/app/SDLClipboardHandler_API11;

    invoke-direct {v0}, Lorg/libsdl/app/SDLClipboardHandler_API11;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    goto :goto_1

    .line 261
    :cond_1
    new-instance v0, Lorg/libsdl/app/SDLClipboardHandler_Old;

    invoke-direct {v0}, Lorg/libsdl/app/SDLClipboardHandler_Old;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    .line 264
    :goto_1
    invoke-static {p0}, Lorg/libsdl/app/HIDDeviceManager;->acquire(Landroid/content/Context;)Lorg/libsdl/app/HIDDeviceManager;

    move-result-object v0

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mHIDDeviceManager:Lorg/libsdl/app/HIDDeviceManager;

    .line 267
    new-instance v0, Lorg/libsdl/app/SDLSurface;

    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/libsdl/app/SDLSurface;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    .line 269
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    .line 270
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    sget-object v1, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 273
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getCurrentOrientation()I

    move-result v0

    sput v0, Lorg/libsdl/app/SDLActivity;->mCurrentOrientation:I

    .line 274
    sget v0, Lorg/libsdl/app/SDLActivity;->mCurrentOrientation:I

    invoke-static {v0}, Lorg/libsdl/app/SDLActivity;->onNativeOrientationChanged(I)V

    .line 276
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLActivity;->setContentView(Landroid/view/View;)V

    .line 278
    invoke-static {v2}, Lorg/libsdl/app/SDLActivity;->setWindowStyle(Z)V

    .line 280
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 283
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 284
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 285
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDL"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {v0}, Lorg/libsdl/app/SDLActivity;->onNativeDropFile(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected getArguments()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getLibraries()[Ljava/lang/String;
    .locals 2

    const-string v0, "SDL2"

    const-string v1, "main"

    .line 146
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMainFunction()Ljava/lang/String;
    .locals 1

    const-string v0, "SDL_main"

    return-object v0
.end method

.method protected getMainSharedObject()Ljava/lang/String;
    .locals 3

    .line 120
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLActivity;->getLibraries()[Ljava/lang/String;

    move-result-object v0

    .line 121
    array-length v1, v0

    if-lez v1, :cond_0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".so"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "libmain.so"

    .line 126
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadLibraries()V
    .locals 4

    .line 158
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getLibraries()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 159
    invoke-static {v3}, Lorg/libsdl/app/SDL;->loadLibrary(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public messageboxShowMessageBox(ILjava/lang/String;Ljava/lang/String;[I[I[Ljava/lang/String;[I)I
    .locals 4

    .line 1177
    iget-object v0, p0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 1181
    array-length v0, p4

    array-length v3, p5

    if-eq v0, v3, :cond_0

    array-length v0, p5

    array-length v3, p6

    if-eq v0, v3, :cond_0

    return v2

    .line 1187
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "flags"

    .line 1188
    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "title"

    .line 1189
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "message"

    .line 1190
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "buttonFlags"

    .line 1191
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string p1, "buttonIds"

    .line 1192
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string p1, "buttonTexts"

    .line 1193
    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "colors"

    .line 1194
    invoke-virtual {v0, p1, p7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1198
    new-instance p1, Lorg/libsdl/app/SDLActivity$3;

    invoke-direct {p1, p0, v0}, Lorg/libsdl/app/SDLActivity$3;-><init>(Lorg/libsdl/app/SDLActivity;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1207
    iget-object p1, p0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    monitor-enter p1

    .line 1209
    :try_start_0
    iget-object p2, p0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1214
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1218
    iget-object p1, p0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    aget p1, p1, v1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1211
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1212
    monitor-exit p1

    return v2

    .line 1214
    :goto_0
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "SDL_ANDROID_TRAP_BACK_BUTTON"

    .line 437
    invoke-static {v0}, Lorg/libsdl/app/SDLActivity;->nativeGetHint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "1"

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 444
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDL"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "onCreate()"

    .line 198
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 201
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->initialize()V

    .line 203
    sput-object p0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "colors"

    .line 1228
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 1236
    aget v6, v2, v5

    .line 1237
    aget v7, v2, v4

    .line 1238
    aget v8, v2, v3

    const/4 v8, 0x3

    .line 1239
    aget v8, v2, v8

    const/4 v9, 0x4

    .line 1240
    aget v2, v2, v9

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1251
    :goto_0
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const-string v9, "title"

    .line 1252
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1253
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1254
    new-instance v9, Lorg/libsdl/app/SDLActivity$4;

    invoke-direct {v9, v0}, Lorg/libsdl/app/SDLActivity$4;-><init>(Lorg/libsdl/app/SDLActivity;)V

    invoke-virtual {v2, v9}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1265
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v10, 0x11

    .line 1266
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    const-string v11, "message"

    .line 1267
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_1

    .line 1269
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const-string v11, "buttonFlags"

    .line 1274
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const-string v12, "buttonIds"

    .line 1275
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v12

    const-string v13, "buttonTexts"

    .line 1276
    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1278
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 1280
    new-instance v14, Landroid/widget/LinearLayout;

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1281
    invoke-virtual {v14, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1282
    invoke-virtual {v14, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1283
    :goto_1
    array-length v10, v1

    if-ge v5, v10, :cond_8

    .line 1284
    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1285
    aget v15, v12, v5

    .line 1286
    new-instance v3, Lorg/libsdl/app/SDLActivity$5;

    invoke-direct {v3, v0, v15, v2}, Lorg/libsdl/app/SDLActivity$5;-><init>(Lorg/libsdl/app/SDLActivity;ILandroid/app/Dialog;)V

    invoke-virtual {v10, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1293
    aget v3, v11, v5

    if-eqz v3, :cond_3

    .line 1295
    aget v3, v11, v5

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    const/16 v3, 0x42

    .line 1296
    invoke-virtual {v13, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1298
    :cond_2
    aget v3, v11, v5

    const/4 v15, 0x2

    and-int/2addr v3, v15

    if-eqz v3, :cond_4

    const/16 v3, 0x6f

    .line 1299
    invoke-virtual {v13, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    const/4 v15, 0x2

    .line 1302
    :cond_4
    :goto_2
    aget-object v3, v1, v5

    invoke-virtual {v10, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_5

    .line 1304
    invoke-virtual {v10, v7}, Landroid/widget/Button;->setTextColor(I)V

    :cond_5
    if-eqz v8, :cond_7

    .line 1310
    invoke-virtual {v10}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_6

    .line 1313
    invoke-virtual {v10, v8}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_3

    .line 1316
    :cond_6
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v8, v15}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1322
    :cond_7
    :goto_3
    invoke-virtual {v14, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x2

    goto :goto_1

    .line 1327
    :cond_8
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1328
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1329
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1330
    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v6, :cond_9

    .line 1332
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1337
    :cond_9
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1338
    new-instance v1, Lorg/libsdl/app/SDLActivity$6;

    invoke-direct {v1, v0, v13}, Lorg/libsdl/app/SDLActivity$6;-><init>(Lorg/libsdl/app/SDLActivity;Landroid/util/SparseArray;)V

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object v2
.end method

.method protected onDestroy()V
    .locals 5

    const-string v0, "SDL"

    const-string v1, "onDestroy()"

    .line 391
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    sget-object v1, Lorg/libsdl/app/SDLActivity;->mHIDDeviceManager:Lorg/libsdl/app/HIDDeviceManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 394
    invoke-static {v1}, Lorg/libsdl/app/HIDDeviceManager;->release(Lorg/libsdl/app/HIDDeviceManager;)V

    .line 395
    sput-object v2, Lorg/libsdl/app/SDLActivity;->mHIDDeviceManager:Lorg/libsdl/app/HIDDeviceManager;

    .line 398
    :cond_0
    sget-boolean v1, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v1, :cond_1

    .line 399
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 401
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->initialize()V

    return-void

    .line 405
    :cond_1
    sget-object v1, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v1, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 406
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    const/4 v1, 0x1

    .line 409
    sput-boolean v1, Lorg/libsdl/app/SDLActivity;->mExitCalledFromJava:Z

    .line 410
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->nativeQuit()V

    .line 413
    sget-object v1, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    .line 415
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem stopping thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_0
    sput-object v2, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    .line 424
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 427
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->initialize()V

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    const-string v0, "SDL"

    const-string v1, "onLowMemory()"

    .line 379
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 382
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v0, :cond_0

    return-void

    .line 386
    :cond_0
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->nativeLowMemory()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "SDL"

    const-string v1, "onPause()"

    .line 296
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 298
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    const/4 v0, 0x0

    .line 299
    sput-boolean v0, Lorg/libsdl/app/SDLActivity;->mIsResumedCalled:Z

    .line 301
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v0, :cond_0

    return-void

    .line 305
    :cond_0
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mHIDDeviceManager:Lorg/libsdl/app/HIDDeviceManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 306
    invoke-virtual {v0, v1}, Lorg/libsdl/app/HIDDeviceManager;->setFrozen(Z)V

    .line 309
    :cond_1
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "SDL"

    const-string v1, "onResume()"

    .line 314
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 316
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->RESUMED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    const/4 v0, 0x1

    .line 317
    sput-boolean v0, Lorg/libsdl/app/SDLActivity;->mIsResumedCalled:Z

    .line 319
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v0, :cond_0

    return-void

    .line 323
    :cond_0
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mHIDDeviceManager:Lorg/libsdl/app/HIDDeviceManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 324
    invoke-virtual {v0, v1}, Lorg/libsdl/app/HIDDeviceManager;->setFrozen(Z)V

    .line 327
    :cond_1
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 3

    .line 1371
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mFullscreenModeActive:Z

    if-eqz v0, :cond_1

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    .line 1372
    :cond_0
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1374
    iget-object v0, p0, Lorg/libsdl/app/SDLActivity;->rehideSystemUi:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1375
    iget-object v0, p0, Lorg/libsdl/app/SDLActivity;->rehideSystemUi:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method protected onUnhandledMessage(ILjava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 359
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDL"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v0, :cond_0

    return-void

    .line 366
    :cond_0
    sput-boolean p1, Lorg/libsdl/app/SDLActivity;->mHasFocus:Z

    if-eqz p1, :cond_1

    .line 368
    sget-object p1, Lorg/libsdl/app/SDLActivity$NativeState;->RESUMED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object p1, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 369
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;

    move-result-object p1

    invoke-virtual {p1}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->reclaimRelativeMouseModeIfNeeded()V

    goto :goto_0

    .line 371
    :cond_1
    sget-object p1, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object p1, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 374
    :goto_0
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    return-void
.end method

.method public pressBackButton()V
    .locals 1

    .line 454
    new-instance v0, Lorg/libsdl/app/SDLActivity$2;

    invoke-direct {v0, p0}, Lorg/libsdl/app/SDLActivity$2;-><init>(Lorg/libsdl/app/SDLActivity;)V

    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected sendCommand(ILjava/lang/Object;)Z
    .locals 5

    .line 654
    iget-object v0, p0, Lorg/libsdl/app/SDLActivity;->commandHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 655
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 656
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 657
    iget-object v1, p0, Lorg/libsdl/app/SDLActivity;->commandHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    .line 659
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 665
    instance-of p1, p2, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string p1, "window"

    .line 667
    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 668
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 669
    invoke-virtual {p1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 671
    iget p1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v3, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-virtual {v3}, Lorg/libsdl/app/SDLSurface;->getWidth()I

    move-result v3

    const/4 v4, 0x1

    if-ne p1, v3, :cond_0

    iget p1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v2, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    .line 672
    invoke-virtual {v2}, Lorg/libsdl/app/SDLSurface;->getHeight()I

    move-result v2

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    .line 674
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v4, :cond_1

    xor-int/lit8 v1, v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 700
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    monitor-enter p1

    .line 702
    :try_start_0
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    const-wide/16 v1, 0x1f4

    invoke-virtual {p2, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    .line 705
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 707
    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_2
    :goto_2
    return v0
.end method

.method public setOrientationBis(IIZLjava/lang/String;)V
    .locals 6

    const-string v0, "LandscapeRight"

    .line 773
    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x6

    const-string v4, "LandscapeLeft"

    const/4 v5, -0x1

    if-eqz v1, :cond_0

    invoke-virtual {p4, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    .line 775
    :cond_0
    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 777
    :cond_1
    invoke-virtual {p4, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    const-string v0, "Portrait"

    .line 779
    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v4, "PortraitUpsideDown"

    if-eqz v1, :cond_3

    invoke-virtual {p4, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x7

    goto :goto_0

    .line 781
    :cond_3
    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    .line 783
    :cond_4
    invoke-virtual {p4, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x9

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    :goto_0
    if-ne v0, v5, :cond_8

    if-eqz p3, :cond_6

    goto :goto_1

    :cond_6
    if-le p1, p2, :cond_7

    const/4 v0, 0x6

    goto :goto_1

    :cond_7
    const/4 v0, 0x7

    .line 800
    :cond_8
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientation() orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " height="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resizable="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " hint="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SDL"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v5, :cond_9

    .line 802
    sget-object p1, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {p1, v0}, Lorg/libsdl/app/SDLActivity;->setRequestedOrientation(I)V

    :cond_9
    return-void
.end method

.method public superOnBackPressed()V
    .locals 0

    .line 464
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
