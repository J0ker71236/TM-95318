.class Lio/appium/android/apis/view/DateWidgets2$1;
.super Ljava/lang/Object;
.source "DateWidgets2.java"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/DateWidgets2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/DateWidgets2;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/DateWidgets2;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/DateWidgets2;

    .line 46
    iput-object p1, p0, Lio/appium/android/apis/view/DateWidgets2$1;->this$0:Lio/appium/android/apis/view/DateWidgets2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .line 49
    iget-object v0, p0, Lio/appium/android/apis/view/DateWidgets2$1;->this$0:Lio/appium/android/apis/view/DateWidgets2;

    invoke-static {v0, p2, p3}, Lio/appium/android/apis/view/DateWidgets2;->access$000(Lio/appium/android/apis/view/DateWidgets2;II)V

    .line 50
    return-void
.end method
