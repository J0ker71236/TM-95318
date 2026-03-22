.class Lio/appium/android/apis/app/NotifyingService$2;
.super Landroid/os/Binder;
.source "NotifyingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/NotifyingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/NotifyingService;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/NotifyingService;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/NotifyingService;

    .line 119
    iput-object p1, p0, Lio/appium/android/apis/app/NotifyingService$2;->this$0:Lio/appium/android/apis/app/NotifyingService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0
.end method
