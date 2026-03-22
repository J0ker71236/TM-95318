.class Lio/appium/android/apis/app/ActivityRecreate$1;
.super Ljava/lang/Object;
.source "ActivityRecreate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/ActivityRecreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/ActivityRecreate;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/ActivityRecreate;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/ActivityRecreate;

    .line 65
    iput-object p1, p0, Lio/appium/android/apis/app/ActivityRecreate$1;->this$0:Lio/appium/android/apis/app/ActivityRecreate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 67
    iget-object v0, p0, Lio/appium/android/apis/app/ActivityRecreate$1;->this$0:Lio/appium/android/apis/app/ActivityRecreate;

    invoke-virtual {v0}, Lio/appium/android/apis/app/ActivityRecreate;->recreate()V

    .line 68
    return-void
.end method
