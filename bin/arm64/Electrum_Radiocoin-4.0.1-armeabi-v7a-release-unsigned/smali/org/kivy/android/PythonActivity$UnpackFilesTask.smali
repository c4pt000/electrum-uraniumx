.class Lorg/kivy/android/PythonActivity$UnpackFilesTask;
.super Landroid/os/AsyncTask;
.source "PythonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kivy/android/PythonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnpackFilesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/kivy/android/PythonActivity;


# direct methods
.method private constructor <init>(Lorg/kivy/android/PythonActivity;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->this$0:Lorg/kivy/android/PythonActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/kivy/android/PythonActivity;Lorg/kivy/android/PythonActivity$1;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lorg/kivy/android/PythonActivity$UnpackFilesTask;-><init>(Lorg/kivy/android/PythonActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 102
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 105
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, "PythonActivity"

    const-string v1, "Ready to unpack"

    .line 106
    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance p1, Lorg/kivy/android/PythonActivityUtil;

    sget-object v1, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    iget-object v2, p0, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->this$0:Lorg/kivy/android/PythonActivity;

    invoke-static {v2}, Lorg/kivy/android/PythonActivity;->access$100(Lorg/kivy/android/PythonActivity;)Lorg/renpy/android/ResourceManager;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lorg/kivy/android/PythonActivityUtil;-><init>(Landroid/app/Activity;Lorg/renpy/android/ResourceManager;)V

    const-string v1, "private"

    .line 108
    invoke-virtual {p1, v1, v0}, Lorg/kivy/android/PythonActivityUtil;->unpackData(Ljava/lang/String;Ljava/io/File;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 102
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 9

    .line 121
    sget-object p1, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-static {p1}, Lorg/kivy/android/PythonActivity;->access$200(Lorg/kivy/android/PythonActivity;)V

    .line 127
    sget-object p1, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    iget-object v0, p0, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->this$0:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v0}, Lorg/kivy/android/PythonActivity;->getLoadingScreen()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/kivy/android/PythonActivity;->showLoadingScreen(Landroid/view/View;)V

    .line 129
    iget-object p1, p0, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->this$0:Lorg/kivy/android/PythonActivity;

    invoke-virtual {p1}, Lorg/kivy/android/PythonActivity;->getAppRoot()Ljava/lang/String;

    move-result-object p1

    .line 130
    iget-object v0, p0, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->this$0:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v0}, Lorg/kivy/android/PythonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ANDROID_APP_PATH"

    const-string v2, "ANDROID_ARGUMENT"

    const-string v3, "ANDROID_ENTRYPOINT"

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->this$0:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v0}, Lorg/kivy/android/PythonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->this$0:Lorg/kivy/android/PythonActivity;

    .line 131
    invoke-virtual {v0}, Lorg/kivy/android/PythonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "org.kivy.LAUNCH"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->this$0:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v5}, Lorg/kivy/android/PythonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-static {v0}, Lorg/kivy/android/launcher/Project;->scanDirectory(Ljava/io/File;)Lorg/kivy/android/launcher/Project;

    move-result-object v5

    .line 135
    iget-object v6, p0, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->this$0:Lorg/kivy/android/PythonActivity;

    iget-object v7, v5, Lorg/kivy/android/launcher/Project;->dir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/kivy/android/PythonActivity;->getEntryPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 136
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lorg/kivy/android/launcher/Project;->dir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v3, v5, Lorg/kivy/android/launcher/Project;->dir:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v2, v5, Lorg/kivy/android/launcher/Project;->dir:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_1

    .line 141
    iget-boolean v1, v5, Lorg/kivy/android/launcher/Project;->landscape:Z

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->this$0:Lorg/kivy/android/PythonActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/kivy/android/PythonActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object v1, p0, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->this$0:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v1, v4}, Lorg/kivy/android/PythonActivity;->setRequestedOrientation(I)V

    .line 150
    :cond_1
    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    new-instance v2, Ljava/io/File;

    const-string v3, ".launch"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const-string v0, "started"

    .line 151
    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 157
    :cond_2
    iget-object v0, p0, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->this$0:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v0, p1}, Lorg/kivy/android/PythonActivity;->getEntryPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v3, v0}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {v2, p1}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {v1, p1}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :catch_0
    :goto_1
    sget-object v0, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v0}, Lorg/kivy/android/PythonActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PythonActivity"

    const-string v2, "Setting env vars for start.c and Python to use"

    .line 164
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ANDROID_PRIVATE"

    .line 165
    invoke-static {v2, v0}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ANDROID_UNPACK"

    .line 166
    invoke-static {v0, p1}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PYTHONHOME"

    .line 167
    invoke-static {v0, p1}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/lib"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PYTHONPATH"

    invoke-static {v0, p1}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "PYTHONOPTIMIZE"

    const-string v0, "2"

    .line 169
    invoke-static {p1, v0}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    const-string p1, "Access to our meta-data..."

    .line 172
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-object p1, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    sget-object v0, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v0}, Lorg/kivy/android/PythonActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v2, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    .line 174
    invoke-virtual {v2}, Lorg/kivy/android/PythonActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 173
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lorg/kivy/android/PythonActivity;->access$302(Lorg/kivy/android/PythonActivity;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 176
    sget-object p1, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Lorg/kivy/android/PythonActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 177
    sget-object v0, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-static {v0}, Lorg/kivy/android/PythonActivity;->access$300(Lorg/kivy/android/PythonActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "wakelock"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 178
    sget-object v0, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    const/16 v2, 0xa

    const-string v3, "Screen On"

    invoke-virtual {p1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/kivy/android/PythonActivity;->access$402(Lorg/kivy/android/PythonActivity;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 179
    sget-object p1, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-static {p1}, Lorg/kivy/android/PythonActivity;->access$400(Lorg/kivy/android/PythonActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 181
    :cond_3
    sget-object p1, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-static {p1}, Lorg/kivy/android/PythonActivity;->access$300(Lorg/kivy/android/PythonActivity;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "surface.transparent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Surface will be transparent."

    .line 182
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Lorg/kivy/android/PythonActivity;->getSurface()Landroid/view/SurfaceView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 184
    invoke-static {}, Lorg/kivy/android/PythonActivity;->getSurface()Landroid/view/SurfaceView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, -0x2

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_2

    :cond_4
    const-string p1, "Surface will NOT be transparent"

    .line 186
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    .line 192
    :goto_2
    sget-object p1, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    sget-boolean p1, Lorg/kivy/android/PythonActivity;->mHasFocus:Z

    if-eqz p1, :cond_6

    sget-object p1, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    sget-object p1, Lorg/kivy/android/PythonActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->INIT:Lorg/libsdl/app/SDLActivity$NativeState;

    if-eq p1, v0, :cond_5

    sget-object p1, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    sget-object p1, Lorg/kivy/android/PythonActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->RESUMED:Lorg/libsdl/app/SDLActivity$NativeState;

    if-ne p1, v0, :cond_6

    sget-object p1, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    .line 198
    invoke-static {}, Lorg/kivy/android/PythonActivity;->access$500()Ljava/lang/Thread;

    move-result-object p1

    if-nez p1, :cond_6

    .line 202
    :cond_5
    sget-object p1, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-virtual {p1}, Lorg/kivy/android/PythonActivity;->onResume()V

    :cond_6
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 102
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
