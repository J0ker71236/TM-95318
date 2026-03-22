.class Lio/appium/android/apis/graphics/ColorPickerDialog$1;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Lio/appium/android/apis/graphics/ColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/graphics/ColorPickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/graphics/ColorPickerDialog;


# direct methods
.method constructor <init>(Lio/appium/android/apis/graphics/ColorPickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/graphics/ColorPickerDialog;

    .line 223
    iput-object p1, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$1;->this$0:Lio/appium/android/apis/graphics/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 1
    .param p1, "color"    # I

    .line 225
    iget-object v0, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$1;->this$0:Lio/appium/android/apis/graphics/ColorPickerDialog;

    invoke-static {v0}, Lio/appium/android/apis/graphics/ColorPickerDialog;->access$000(Lio/appium/android/apis/graphics/ColorPickerDialog;)Lio/appium/android/apis/graphics/ColorPickerDialog$OnColorChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/appium/android/apis/graphics/ColorPickerDialog$OnColorChangedListener;->colorChanged(I)V

    .line 226
    iget-object v0, p0, Lio/appium/android/apis/graphics/ColorPickerDialog$1;->this$0:Lio/appium/android/apis/graphics/ColorPickerDialog;

    invoke-virtual {v0}, Lio/appium/android/apis/graphics/ColorPickerDialog;->dismiss()V

    .line 227
    return-void
.end method
