.class Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1;
.super Ljava/lang/Object;
.source "DeviceAdminSample.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->promptForRealDeviceWipe(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;

.field final synthetic val$activity:Lio/appium/android/apis/app/DeviceAdminSample;

.field final synthetic val$wipeAllData:Z


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;Lio/appium/android/apis/app/DeviceAdminSample;Z)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;

    .line 758
    iput-object p1, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1;->this$0:Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;

    iput-object p2, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1;->val$activity:Lio/appium/android/apis/app/DeviceAdminSample;

    iput-boolean p3, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1;->val$wipeAllData:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 761
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1;->val$activity:Lio/appium/android/apis/app/DeviceAdminSample;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 762
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-boolean v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1;->val$wipeAllData:Z

    if-eqz v1, :cond_0

    .line 763
    const v1, 0x7f0e03d7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 765
    :cond_0
    const v1, 0x7f0e03d6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 767
    :goto_0
    const v1, 0x7f0e03d9

    new-instance v2, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1$1;

    invoke-direct {v2, p0}, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1$1;-><init>(Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 778
    const v1, 0x7f0e03d8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 779
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 780
    return-void
.end method
