.class Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1$1;
.super Ljava/lang/Object;
.source "DeviceAdminSample.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1;

    .line 768
    iput-object p1, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1$1;->this$1:Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 771
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1$1;->this$1:Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1;

    iget-object v0, v0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1;->this$0:Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;

    iget-object v0, v0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    invoke-static {v0}, Lio/appium/android/apis/app/DeviceAdminSample;->access$000(Lio/appium/android/apis/app/DeviceAdminSample;)Z

    move-result v0

    .line 772
    .local v0, "stillActive":Z
    if-eqz v0, :cond_0

    .line 773
    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1$1;->this$1:Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1;

    iget-object v1, v1, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1;->this$0:Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;

    iget-object v1, v1, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1$1;->this$1:Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1;

    iget-boolean v2, v2, Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment$1;->val$wipeAllData:Z

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    .line 776
    :cond_0
    return-void
.end method
