.class public Lorg/kivy/android/PythonService;
.super Landroid/app/Service;
.source "PythonService.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static mService:Lorg/kivy/android/PythonService;


# instance fields
.field private androidArgument:Ljava/lang/String;

.field private androidPrivate:Ljava/lang/String;

.field private autoRestartService:Z

.field private pythonHome:Ljava/lang/String;

.field private pythonName:Ljava/lang/String;

.field private pythonPath:Ljava/lang/String;

.field private pythonServiceArgument:Ljava/lang/String;

.field private pythonThread:Ljava/lang/Thread;

.field private serviceEntrypoint:Ljava/lang/String;

.field private startIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lorg/kivy/android/PythonService;->pythonThread:Ljava/lang/Thread;

    .line 39
    iput-object v0, p0, Lorg/kivy/android/PythonService;->startIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lorg/kivy/android/PythonService;->autoRestartService:Z

    return-void
.end method

.method public static native nativeStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method protected doStartForeground(Landroid/os/Bundle;)V
    .locals 13

    const-string v0, "serviceTitle"

    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "serviceDescription"

    .line 96
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {p0}, Lorg/kivy/android/PythonService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 99
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/kivy/android/PythonActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    .line 100
    invoke-static {v1, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 103
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-ge v4, v5, :cond_0

    .line 104
    new-instance v4, Landroid/app/Notification;

    .line 105
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v5, v0, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 108
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setLatestEventInfo"

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v3

    const-class v9, Ljava/lang/CharSequence;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const-class v9, Ljava/lang/CharSequence;

    const/4 v11, 0x2

    aput-object v9, v8, v11

    const-class v9, Landroid/app/PendingIntent;

    const/4 v12, 0x3

    aput-object v9, v8, v12

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v1, v6, v3

    aput-object v0, v6, v10

    aput-object p1, v6, v11

    aput-object v2, v6, v12

    .line 111
    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string v4, "org.kivy.p4a"

    .line 120
    new-instance v5, Landroid/app/NotificationChannel;

    const-string v6, "Background Service"

    invoke-direct {v5, v4, v6, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const v6, -0xffff01

    .line 123
    invoke-virtual {v5, v6}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 124
    invoke-virtual {v5, v3}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const-string v3, "notification"

    .line 125
    invoke-virtual {p0, v3}, Lorg/kivy/android/PythonService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 126
    invoke-virtual {v3, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 128
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, v1, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 130
    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 131
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 132
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 133
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 135
    :catch_0
    :goto_0
    invoke-virtual {p0}, Lorg/kivy/android/PythonService;->getServiceId()I

    move-result p1

    invoke-virtual {p0, p1, v4}, Lorg/kivy/android/PythonService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method protected getServiceId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 58
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 140
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lorg/kivy/android/PythonService;->pythonThread:Ljava/lang/Thread;

    .line 142
    iget-boolean v0, p0, Lorg/kivy/android/PythonService;->autoRestartService:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/kivy/android/PythonService;->startIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v0, "python service"

    const-string v1, "service restart requested"

    .line 143
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lorg/kivy/android/PythonService;->startIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/kivy/android/PythonService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 146
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 63
    iget-object p2, p0, Lorg/kivy/android/PythonService;->pythonThread:Ljava/lang/Thread;

    if-eqz p2, :cond_0

    const-string p1, "python service"

    const-string p2, "service exists, do not start again"

    .line 64
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    return p1

    .line 68
    :cond_0
    iput-object p1, p0, Lorg/kivy/android/PythonService;->startIntent:Landroid/content/Intent;

    .line 69
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "androidPrivate"

    .line 70
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/kivy/android/PythonService;->androidPrivate:Ljava/lang/String;

    const-string p2, "androidArgument"

    .line 71
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/kivy/android/PythonService;->androidArgument:Ljava/lang/String;

    const-string p2, "serviceEntrypoint"

    .line 72
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/kivy/android/PythonService;->serviceEntrypoint:Ljava/lang/String;

    const-string p2, "pythonName"

    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/kivy/android/PythonService;->pythonName:Ljava/lang/String;

    const-string p2, "pythonHome"

    .line 74
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/kivy/android/PythonService;->pythonHome:Ljava/lang/String;

    const-string p2, "pythonPath"

    .line 75
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/kivy/android/PythonService;->pythonPath:Ljava/lang/String;

    const-string p2, "serviceStartAsForeground"

    .line 77
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "true"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p3, "pythonServiceArgument"

    .line 79
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/kivy/android/PythonService;->pythonServiceArgument:Ljava/lang/String;

    .line 80
    new-instance p3, Ljava/lang/Thread;

    invoke-direct {p3, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p3, p0, Lorg/kivy/android/PythonService;->pythonThread:Ljava/lang/Thread;

    .line 81
    iget-object p3, p0, Lorg/kivy/android/PythonService;->pythonThread:Ljava/lang/Thread;

    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    if-eqz p2, :cond_1

    .line 84
    invoke-virtual {p0, p1}, Lorg/kivy/android/PythonService;->doStartForeground(Landroid/os/Bundle;)V

    .line 87
    :cond_1
    invoke-virtual {p0}, Lorg/kivy/android/PythonService;->startType()I

    move-result p1

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    .line 155
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 156
    invoke-virtual {p0}, Lorg/kivy/android/PythonService;->stopSelf()V

    return-void
.end method

.method public run()V
    .locals 10

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/kivy/android/PythonService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/io/File;

    .line 164
    invoke-virtual {p0}, Lorg/kivy/android/PythonService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-static {v1, v0}, Lorg/kivy/android/PythonUtil;->loadLibraries(Ljava/io/File;Ljava/io/File;)V

    .line 165
    sput-object p0, Lorg/kivy/android/PythonService;->mService:Lorg/kivy/android/PythonService;

    .line 166
    iget-object v3, p0, Lorg/kivy/android/PythonService;->androidPrivate:Ljava/lang/String;

    iget-object v4, p0, Lorg/kivy/android/PythonService;->androidArgument:Ljava/lang/String;

    iget-object v5, p0, Lorg/kivy/android/PythonService;->serviceEntrypoint:Ljava/lang/String;

    iget-object v6, p0, Lorg/kivy/android/PythonService;->pythonName:Ljava/lang/String;

    iget-object v7, p0, Lorg/kivy/android/PythonService;->pythonHome:Ljava/lang/String;

    iget-object v8, p0, Lorg/kivy/android/PythonService;->pythonPath:Ljava/lang/String;

    iget-object v9, p0, Lorg/kivy/android/PythonService;->pythonServiceArgument:Ljava/lang/String;

    invoke-static/range {v3 .. v9}, Lorg/kivy/android/PythonService;->nativeStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lorg/kivy/android/PythonService;->stopSelf()V

    return-void
.end method

.method public setAutoRestartService(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lorg/kivy/android/PythonService;->autoRestartService:Z

    return-void
.end method

.method public startType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
