.class public Lorg/kivy/android/GenericBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GenericBroadcastReceiver.java"


# instance fields
.field listener:Lorg/kivy/android/GenericBroadcastReceiverCallback;


# direct methods
.method public constructor <init>(Lorg/kivy/android/GenericBroadcastReceiverCallback;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/kivy/android/GenericBroadcastReceiver;->listener:Lorg/kivy/android/GenericBroadcastReceiverCallback;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/kivy/android/GenericBroadcastReceiver;->listener:Lorg/kivy/android/GenericBroadcastReceiverCallback;

    invoke-interface {v0, p1, p2}, Lorg/kivy/android/GenericBroadcastReceiverCallback;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
