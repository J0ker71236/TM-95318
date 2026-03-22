.class Lio/appium/android/apis/view/RotatingButton$7;
.super Ljava/lang/Object;
.source "RotatingButton.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/RotatingButton;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/RotatingButton;

.field final synthetic val$rotatingButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/RotatingButton;Landroid/widget/Button;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/RotatingButton;

    .line 137
    iput-object p1, p0, Lio/appium/android/apis/view/RotatingButton$7;->this$0:Lio/appium/android/apis/view/RotatingButton;

    iput-object p2, p0, Lio/appium/android/apis/view/RotatingButton$7;->val$rotatingButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 148
    iget-object v0, p0, Lio/appium/android/apis/view/RotatingButton$7;->val$rotatingButton:Landroid/widget/Button;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setRotation(F)V

    .line 149
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 143
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 140
    return-void
.end method
