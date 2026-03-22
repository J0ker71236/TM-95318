.class Lio/appium/android/apis/view/ChronometerDemo$4;
.super Ljava/lang/Object;
.source "ChronometerDemo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/ChronometerDemo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/ChronometerDemo;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/ChronometerDemo;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/ChronometerDemo;

    .line 79
    iput-object p1, p0, Lio/appium/android/apis/view/ChronometerDemo$4;->this$0:Lio/appium/android/apis/view/ChronometerDemo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 81
    iget-object v0, p0, Lio/appium/android/apis/view/ChronometerDemo$4;->this$0:Lio/appium/android/apis/view/ChronometerDemo;

    iget-object v0, v0, Lio/appium/android/apis/view/ChronometerDemo;->mChronometer:Landroid/widget/Chronometer;

    const-string v1, "Formatted time (%s)"

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 82
    return-void
.end method
