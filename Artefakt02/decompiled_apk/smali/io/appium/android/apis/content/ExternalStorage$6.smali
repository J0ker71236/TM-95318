.class Lio/appium/android/apis/content/ExternalStorage$6;
.super Ljava/lang/Object;
.source "ExternalStorage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/content/ExternalStorage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/content/ExternalStorage;


# direct methods
.method constructor <init>(Lio/appium/android/apis/content/ExternalStorage;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/content/ExternalStorage;

    .line 110
    iput-object p1, p0, Lio/appium/android/apis/content/ExternalStorage$6;->this$0:Lio/appium/android/apis/content/ExternalStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 112
    iget-object v0, p0, Lio/appium/android/apis/content/ExternalStorage$6;->this$0:Lio/appium/android/apis/content/ExternalStorage;

    invoke-virtual {v0}, Lio/appium/android/apis/content/ExternalStorage;->deleteExternalStoragePrivateFile()V

    .line 113
    iget-object v0, p0, Lio/appium/android/apis/content/ExternalStorage$6;->this$0:Lio/appium/android/apis/content/ExternalStorage;

    invoke-virtual {v0}, Lio/appium/android/apis/content/ExternalStorage;->updateExternalStorageState()V

    .line 114
    return-void
.end method
