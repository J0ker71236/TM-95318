.class public Lio/appium/android/apis/graphics/ColorPickerDialog;
.super Landroid/app/Dialog;
.source "ColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;,
        Lio/appium/android/apis/graphics/ColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private mInitialColor:I

.field private mListener:Lio/appium/android/apis/graphics/ColorPickerDialog$OnColorChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appium/android/apis/graphics/ColorPickerDialog$OnColorChangedListener;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lio/appium/android/apis/graphics/ColorPickerDialog$OnColorChangedListener;
    .param p3, "initialColor"    # I

    .line 214
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 216
    iput-object p2, p0, Lio/appium/android/apis/graphics/ColorPickerDialog;->mListener:Lio/appium/android/apis/graphics/ColorPickerDialog$OnColorChangedListener;

    .line 217
    iput p3, p0, Lio/appium/android/apis/graphics/ColorPickerDialog;->mInitialColor:I

    .line 218
    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/graphics/ColorPickerDialog;)Lio/appium/android/apis/graphics/ColorPickerDialog$OnColorChangedListener;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/graphics/ColorPickerDialog;

    .line 26
    iget-object v0, p0, Lio/appium/android/apis/graphics/ColorPickerDialog;->mListener:Lio/appium/android/apis/graphics/ColorPickerDialog$OnColorChangedListener;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 222
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 223
    new-instance v0, Lio/appium/android/apis/graphics/ColorPickerDialog$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/graphics/ColorPickerDialog$1;-><init>(Lio/appium/android/apis/graphics/ColorPickerDialog;)V

    .line 230
    .local v0, "l":Lio/appium/android/apis/graphics/ColorPickerDialog$OnColorChangedListener;
    new-instance v1, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;

    invoke-virtual {p0}, Lio/appium/android/apis/graphics/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lio/appium/android/apis/graphics/ColorPickerDialog;->mInitialColor:I

    invoke-direct {v1, v2, v0, v3}, Lio/appium/android/apis/graphics/ColorPickerDialog$ColorPickerView;-><init>(Landroid/content/Context;Lio/appium/android/apis/graphics/ColorPickerDialog$OnColorChangedListener;I)V

    invoke-virtual {p0, v1}, Lio/appium/android/apis/graphics/ColorPickerDialog;->setContentView(Landroid/view/View;)V

    .line 231
    const-string v1, "Pick a Color"

    invoke-virtual {p0, v1}, Lio/appium/android/apis/graphics/ColorPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 232
    return-void
.end method
