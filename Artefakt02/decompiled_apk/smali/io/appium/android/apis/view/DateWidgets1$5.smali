.class Lio/appium/android/apis/view/DateWidgets1$5;
.super Ljava/lang/Object;
.source "DateWidgets1.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/DateWidgets1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/DateWidgets1;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/DateWidgets1;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/DateWidgets1;

    .line 156
    iput-object p1, p0, Lio/appium/android/apis/view/DateWidgets1$5;->this$0:Lio/appium/android/apis/view/DateWidgets1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .line 159
    iget-object v0, p0, Lio/appium/android/apis/view/DateWidgets1$5;->this$0:Lio/appium/android/apis/view/DateWidgets1;

    invoke-static {v0, p2}, Lio/appium/android/apis/view/DateWidgets1;->access$402(Lio/appium/android/apis/view/DateWidgets1;I)I

    .line 160
    iget-object v0, p0, Lio/appium/android/apis/view/DateWidgets1$5;->this$0:Lio/appium/android/apis/view/DateWidgets1;

    invoke-static {v0, p3}, Lio/appium/android/apis/view/DateWidgets1;->access$502(Lio/appium/android/apis/view/DateWidgets1;I)I

    .line 161
    iget-object v0, p0, Lio/appium/android/apis/view/DateWidgets1$5;->this$0:Lio/appium/android/apis/view/DateWidgets1;

    invoke-static {v0}, Lio/appium/android/apis/view/DateWidgets1;->access$300(Lio/appium/android/apis/view/DateWidgets1;)V

    .line 162
    return-void
.end method
