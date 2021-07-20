.class public Lorg/kivy/android/PythonActivity;
.super Lorg/libsdl/app/SDLActivity;
.source "PythonActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kivy/android/PythonActivity$PermissionsCallback;,
        Lorg/kivy/android/PythonActivity$ActivityResultListener;,
        Lorg/kivy/android/PythonActivity$NewIntentListener;,
        Lorg/kivy/android/PythonActivity$UnpackFilesTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PythonActivity"

.field public static mActivity:Lorg/kivy/android/PythonActivity;

.field public static mImageView:Landroid/widget/ImageView;

.field public static mLottieView:Landroid/view/View;


# instance fields
.field private activityResultListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/kivy/android/PythonActivity$ActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private havePermissionsCallback:Z

.field protected loadingScreenRemovalTimer:Ljava/util/Timer;

.field protected mAppConfirmedActive:Z

.field private mMetaData:Landroid/os/Bundle;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private newIntentListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/kivy/android/PythonActivity$NewIntentListener;",
            ">;"
        }
    .end annotation
.end field

.field private permissionCallback:Lorg/kivy/android/PythonActivity$PermissionsCallback;

.field private resourceManager:Lorg/renpy/android/ResourceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lorg/libsdl/app/SDLActivity;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lorg/kivy/android/PythonActivity;->resourceManager:Lorg/renpy/android/ResourceManager;

    .line 49
    iput-object v0, p0, Lorg/kivy/android/PythonActivity;->mMetaData:Landroid/os/Bundle;

    .line 50
    iput-object v0, p0, Lorg/kivy/android/PythonActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 231
    iput-object v0, p0, Lorg/kivy/android/PythonActivity;->newIntentListeners:Ljava/util/List;

    .line 266
    iput-object v0, p0, Lorg/kivy/android/PythonActivity;->activityResultListeners:Ljava/util/List;

    const/4 v1, 0x0

    .line 346
    iput-boolean v1, p0, Lorg/kivy/android/PythonActivity;->mAppConfirmedActive:Z

    .line 348
    iput-object v0, p0, Lorg/kivy/android/PythonActivity;->loadingScreenRemovalTimer:Ljava/util/Timer;

    .line 589
    iput-boolean v1, p0, Lorg/kivy/android/PythonActivity;->havePermissionsCallback:Z

    return-void
.end method

.method public static _do_start_service(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 318
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    const-class v2, Lorg/kivy/android/PythonService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    sget-object v1, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v1}, Lorg/kivy/android/PythonActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 320
    sget-object v2, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v2}, Lorg/kivy/android/PythonActivity;->getAppRoot()Ljava/lang/String;

    move-result-object v2

    .line 321
    sget-object v3, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/service"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/kivy/android/PythonActivity;->getEntryPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "androidPrivate"

    .line 322
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "androidArgument"

    .line 323
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "serviceEntrypoint"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pythonName"

    const-string v3, "python"

    .line 325
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pythonHome"

    .line 326
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pythonPath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string p3, "true"

    goto :goto_0

    :cond_0
    const-string p3, "false"

    :goto_0
    const-string v1, "serviceStartAsForeground"

    .line 328
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "serviceTitle"

    .line 331
    invoke-virtual {v0, p3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "serviceDescription"

    .line 332
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "pythonServiceArgument"

    .line 333
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    sget-object p0, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-virtual {p0, v0}, Lorg/kivy/android/PythonActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic access$100(Lorg/kivy/android/PythonActivity;)Lorg/renpy/android/ResourceManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/kivy/android/PythonActivity;->resourceManager:Lorg/renpy/android/ResourceManager;

    return-object p0
.end method

.method static synthetic access$200(Lorg/kivy/android/PythonActivity;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->finishLoad()V

    return-void
.end method

.method static synthetic access$300(Lorg/kivy/android/PythonActivity;)Landroid/os/Bundle;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/kivy/android/PythonActivity;->mMetaData:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$302(Lorg/kivy/android/PythonActivity;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/kivy/android/PythonActivity;->mMetaData:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$400(Lorg/kivy/android/PythonActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/kivy/android/PythonActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$402(Lorg/kivy/android/PythonActivity;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/kivy/android/PythonActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$500()Ljava/lang/Thread;
    .locals 1

    .line 43
    sget-object v0, Lorg/kivy/android/PythonActivity;->mSDLThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$600()Lorg/libsdl/app/SDLActivity;
    .locals 1

    .line 43
    sget-object v0, Lorg/kivy/android/PythonActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    return-object v0
.end method

.method static synthetic access$700()Lorg/libsdl/app/SDLActivity;
    .locals 1

    .line 43
    sget-object v0, Lorg/kivy/android/PythonActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    return-object v0
.end method

.method public static changeKeyboard(I)V
    .locals 1

    .line 648
    sget v0, Lorg/libsdl/app/SDLActivity;->keyboardInputType:I

    if-eq v0, p0, :cond_0

    .line 649
    sput p0, Lorg/libsdl/app/SDLActivity;->keyboardInputType:I

    .line 650
    invoke-static {}, Lorg/kivy/android/PythonActivity;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 651
    sget-object v0, Lorg/kivy/android/PythonActivity;->mTextEdit:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static getLayout()Landroid/view/ViewGroup;
    .locals 1

    .line 216
    sget-object v0, Lorg/kivy/android/PythonActivity;->mLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static getSurface()Landroid/view/SurfaceView;
    .locals 1

    .line 220
    sget-object v0, Lorg/kivy/android/PythonActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    return-object v0
.end method

.method public static start_service(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 297
    invoke-static {p0, p1, p2, v0}, Lorg/kivy/android/PythonActivity;->_do_start_service(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static start_service_not_as_foreground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 307
    invoke-static {p0, p1, p2, v0}, Lorg/kivy/android/PythonActivity;->_do_start_service(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static stop_service()V
    .locals 3

    .line 338
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    const-class v2, Lorg/kivy/android/PythonService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    sget-object v1, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v1, v0}, Lorg/kivy/android/PythonActivity;->stopService(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public addPermissionsCallback(Lorg/kivy/android/PythonActivity$PermissionsCallback;)V
    .locals 1

    .line 592
    iput-object p1, p0, Lorg/kivy/android/PythonActivity;->permissionCallback:Lorg/kivy/android/PythonActivity$PermissionsCallback;

    const/4 p1, 0x1

    .line 593
    iput-boolean p1, p0, Lorg/kivy/android/PythonActivity;->havePermissionsCallback:Z

    const-string p1, "PythonActivity"

    const-string v0, "addPermissionsCallback(): Added callback for onRequestPermissionsResult"

    .line 594
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public appConfirmedActive()V
    .locals 2

    .line 363
    iget-boolean v0, p0, Lorg/kivy/android/PythonActivity;->mAppConfirmedActive:Z

    if-nez v0, :cond_0

    const-string v0, "PythonActivity"

    const-string v1, "appConfirmedActive() -> preparing loading screen removal"

    .line 364
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 365
    iput-boolean v0, p0, Lorg/kivy/android/PythonActivity;->mAppConfirmedActive:Z

    .line 366
    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->considerLoadingScreenRemoval()V

    :cond_0
    return-void
.end method

.method public checkCurrentPermission(Ljava/lang/String;)Z
    .locals 6

    .line 611
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 615
    :try_start_0
    const-class v2, Landroid/app/Activity;

    const-string v3, "checkSelfPermission"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    .line 616
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    .line 617
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 618
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    return v1

    :catch_0
    :cond_1
    return v0
.end method

.method public considerLoadingScreenRemoval()V
    .locals 1

    .line 375
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->loadingScreenRemovalTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    return-void

    .line 377
    :cond_0
    new-instance v0, Lorg/kivy/android/PythonActivity$2;

    invoke-direct {v0, p0}, Lorg/kivy/android/PythonActivity$2;-><init>(Lorg/kivy/android/PythonActivity;)V

    invoke-virtual {p0, v0}, Lorg/kivy/android/PythonActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAppRoot()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntryPoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "main.pyo"

    .line 436
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "main.pyc"

    .line 437
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 439
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const-string p1, "main.py"

    return-object p1
.end method

.method protected getLoadingScreen()Landroid/view/View;
    .locals 4

    .line 485
    sget-object v0, Lorg/kivy/android/PythonActivity;->mLottieView:Landroid/view/View;

    if-nez v0, :cond_3

    sget-object v0, Lorg/kivy/android/PythonActivity;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 492
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lorg/kivy/android/PythonActivity;->resourceManager:Lorg/renpy/android/ResourceManager;

    const-string v2, "lottie"

    const-string v3, "layout"

    .line 493
    invoke-virtual {v1, v2, v3}, Lorg/renpy/android/ResourceManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lorg/kivy/android/PythonActivity;->mLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 492
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lorg/kivy/android/PythonActivity;->mLottieView:Landroid/view/View;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 498
    :try_start_1
    sget-object v0, Lorg/kivy/android/PythonActivity;->mLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 499
    sget-object v0, Lorg/kivy/android/PythonActivity;->mLottieView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/kivy/android/PythonActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 500
    :cond_1
    sget-object v0, Lorg/kivy/android/PythonActivity;->mLottieView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 501
    sget-object v0, Lorg/kivy/android/PythonActivity;->mLayout:Landroid/view/ViewGroup;

    sget-object v1, Lorg/kivy/android/PythonActivity;->mLottieView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 509
    :catch_0
    :cond_2
    :goto_0
    :try_start_2
    sget-object v0, Lorg/kivy/android/PythonActivity;->mLottieView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/kivy/android/PythonActivity;->setBackgroundColor(Landroid/view/View;)V

    .line 510
    sget-object v0, Lorg/kivy/android/PythonActivity;->mLottieView:Landroid/view/View;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_1
    const-string v0, "SDL"

    const-string v1, "couldn\'t find lottie layout or animation, trying static splash"

    .line 513
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->resourceManager:Lorg/renpy/android/ResourceManager;

    const-string v1, "presplash"

    const-string v2, "drawable"

    invoke-virtual {v0, v1, v2}, Lorg/renpy/android/ResourceManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 518
    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 521
    :try_start_3
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 524
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 528
    :catch_2
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/kivy/android/PythonActivity;->mImageView:Landroid/widget/ImageView;

    .line 529
    sget-object v0, Lorg/kivy/android/PythonActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 530
    sget-object v0, Lorg/kivy/android/PythonActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lorg/kivy/android/PythonActivity;->setBackgroundColor(Landroid/view/View;)V

    .line 532
    sget-object v0, Lorg/kivy/android/PythonActivity;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    sget-object v0, Lorg/kivy/android/PythonActivity;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 536
    sget-object v0, Lorg/kivy/android/PythonActivity;->mImageView:Landroid/widget/ImageView;

    return-object v0

    :catchall_0
    move-exception v1

    .line 524
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 526
    :catch_3
    throw v1

    .line 487
    :cond_3
    :goto_1
    sget-object v0, Lorg/kivy/android/PythonActivity;->mLottieView:Landroid/view/View;

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    sget-object v0, Lorg/kivy/android/PythonActivity;->mImageView:Landroid/widget/ImageView;

    :goto_2
    return-object v0
.end method

.method public loadLibraries()V
    .locals 3

    .line 73
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->getAppRoot()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 74
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/io/File;

    .line 76
    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-static {v1, v0}, Lorg/kivy/android/PythonUtil;->loadLibraries(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 282
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->activityResultListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 284
    :cond_0
    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->onResume()V

    .line 285
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->activityResultListeners:Ljava/util/List;

    monitor-enter v0

    .line 286
    :try_start_0
    iget-object v1, p0, Lorg/kivy/android/PythonActivity;->activityResultListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 287
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/kivy/android/PythonActivity$ActivityResultListener;

    invoke-interface {v2, p1, p2, p3}, Lorg/kivy/android/PythonActivity$ActivityResultListener;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 289
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "PythonActivity"

    const-string v1, "PythonActivity onCreate running"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v1, Lorg/renpy/android/ResourceManager;

    invoke-direct {v1, p0}, Lorg/renpy/android/ResourceManager;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lorg/kivy/android/PythonActivity;->resourceManager:Lorg/renpy/android/ResourceManager;

    const-string v1, "About to do super onCreate"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-super {p0, p1}, Lorg/libsdl/app/SDLActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "Did super onCreate"

    .line 64
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sput-object p0, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    .line 67
    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->getLoadingScreen()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/kivy/android/PythonActivity;->showLoadingScreen(Landroid/view/View;)V

    .line 69
    new-instance p1, Lorg/kivy/android/PythonActivity$UnpackFilesTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/kivy/android/PythonActivity$UnpackFilesTask;-><init>(Lorg/kivy/android/PythonActivity;Lorg/kivy/android/PythonActivity$1;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->getAppRoot()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 247
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->newIntentListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->onResume()V

    .line 250
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->newIntentListeners:Ljava/util/List;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Lorg/kivy/android/PythonActivity;->newIntentListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 252
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/kivy/android/PythonActivity$NewIntentListener;

    invoke-interface {v2, p1}, Lorg/kivy/android/PythonActivity$NewIntentListener;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 255
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected onPause()V
    .locals 2

    .line 541
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    const-string v0, "PythonActivity"

    const-string v1, "onPause()"

    .line 545
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :try_start_0
    invoke-super {p0}, Lorg/libsdl/app/SDLActivity;->onPause()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const-string v0, "PythonActivity"

    const-string v1, "onRequestPermissionsResult()"

    .line 599
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-boolean v1, p0, Lorg/kivy/android/PythonActivity;->havePermissionsCallback:Z

    if-eqz v1, :cond_0

    const-string v1, "onRequestPermissionsResult passed to callback"

    .line 601
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->permissionCallback:Lorg/kivy/android/PythonActivity$PermissionsCallback;

    invoke-interface {v0, p1, p2, p3}, Lorg/kivy/android/PythonActivity$PermissionsCallback;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 604
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/libsdl/app/SDLActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 556
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    const-string v0, "PythonActivity"

    const-string v1, "onResume()"

    .line 559
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :try_start_0
    invoke-super {p0}, Lorg/libsdl/app/SDLActivity;->onResume()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    :catch_0
    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->considerLoadingScreenRemoval()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 572
    :try_start_0
    invoke-super {p0, p1}, Lorg/libsdl/app/SDLActivity;->onWindowFocusChanged(Z)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    :catch_0
    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->considerLoadingScreenRemoval()V

    return-void
.end method

.method public registerActivityResultListener(Lorg/kivy/android/PythonActivity$ActivityResultListener;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->activityResultListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/kivy/android/PythonActivity;->activityResultListeners:Ljava/util/List;

    .line 271
    :cond_0
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->activityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerNewIntentListener(Lorg/kivy/android/PythonActivity$NewIntentListener;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->newIntentListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/kivy/android/PythonActivity;->newIntentListeners:Ljava/util/List;

    .line 236
    :cond_0
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->newIntentListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeLoadingScreen()V
    .locals 1

    .line 419
    new-instance v0, Lorg/kivy/android/PythonActivity$4;

    invoke-direct {v0, p0}, Lorg/kivy/android/PythonActivity$4;-><init>(Lorg/kivy/android/PythonActivity;)V

    invoke-virtual {p0, v0}, Lorg/kivy/android/PythonActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestFocusForMainView()V
    .locals 1

    .line 410
    new-instance v0, Lorg/kivy/android/PythonActivity$3;

    invoke-direct {v0, p0}, Lorg/kivy/android/PythonActivity$3;-><init>(Lorg/kivy/android/PythonActivity;)V

    invoke-virtual {p0, v0}, Lorg/kivy/android/PythonActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestPermissions([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 644
    invoke-virtual {p0, p1, v0}, Lorg/kivy/android/PythonActivity;->requestPermissionsWithRequestCode([Ljava/lang/String;I)V

    return-void
.end method

.method public requestPermissionsWithRequestCode([Ljava/lang/String;I)V
    .locals 7

    .line 631
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 634
    :cond_0
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "requestPermissions"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 635
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    .line 637
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected sendCommand(ILjava/lang/Object;)Z
    .locals 0

    .line 354
    invoke-super {p0, p1, p2}, Lorg/libsdl/app/SDLActivity;->sendCommand(ILjava/lang/Object;)Z

    move-result p1

    .line 355
    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->considerLoadingScreenRemoval()V

    return p1
.end method

.method protected setBackgroundColor(Landroid/view/View;)V
    .locals 2

    .line 473
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->resourceManager:Lorg/renpy/android/ResourceManager;

    const-string v1, "presplash_color"

    invoke-virtual {v0, v1}, Lorg/renpy/android/ResourceManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 476
    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected showLoadingScreen(Landroid/view/View;)V
    .locals 1

    .line 449
    :try_start_0
    sget-object v0, Lorg/kivy/android/PythonActivity;->mLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 450
    invoke-virtual {p0, p1}, Lorg/kivy/android/PythonActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 451
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 452
    sget-object v0, Lorg/kivy/android/PythonActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public toastError(Ljava/lang/String;)V
    .locals 2

    .line 87
    new-instance v0, Lorg/kivy/android/PythonActivity$1;

    invoke-direct {v0, p0, p0, p1}, Lorg/kivy/android/PythonActivity$1;-><init>(Lorg/kivy/android/PythonActivity;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/kivy/android/PythonActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 94
    monitor-enter p0

    const-wide/16 v0, 0x3e8

    .line 96
    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 99
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public unregisterActivityResultListener(Lorg/kivy/android/PythonActivity$ActivityResultListener;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->activityResultListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterNewIntentListener(Lorg/kivy/android/PythonActivity$NewIntentListener;)V
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->newIntentListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
