.class Lio/appium/android/apis/view/DateWidgets1$4;
.super Ljava/lang/Object;
.source "DateWidgets1.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


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

    .line 144
    iput-object p1, p0, Lio/appium/android/apis/view/DateWidgets1$4;->this$0:Lio/appium/android/apis/view/DateWidgets1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .line 148
    iget-object v0, p0, Lio/appium/android/apis/view/DateWidgets1$4;->this$0:Lio/appium/android/apis/view/DateWidgets1;

    invoke-static {v0, p2}, Lio/appium/android/apis/view/DateWidgets1;->access$002(Lio/appium/android/apis/view/DateWidgets1;I)I

    .line 149
    iget-object v0, p0, Lio/appium/android/apis/view/DateWidgets1$4;->this$0:Lio/appium/android/apis/view/DateWidgets1;

    invoke-static {v0, p3}, Lio/appium/android/apis/view/DateWidgets1;->access$102(Lio/appium/android/apis/view/DateWidgets1;I)I

    .line 150
    iget-object v0, p0, Lio/appium/android/apis/view/DateWidgets1$4;->this$0:Lio/appium/android/apis/view/DateWidgets1;

    invoke-static {v0, p4}, Lio/appium/android/apis/view/DateWidgets1;->access$202(Lio/appium/android/apis/view/DateWidgets1;I)I

    .line 151
    iget-object v0, p0, Lio/appium/android/apis/view/DateWidgets1$4;->this$0:Lio/appium/android/apis/view/DateWidgets1;

    invoke-static {v0}, Lio/appium/android/apis/view/DateWidgets1;->access$300(Lio/appium/android/apis/view/DateWidgets1;)V

    .line 152
    return-void
.end method
