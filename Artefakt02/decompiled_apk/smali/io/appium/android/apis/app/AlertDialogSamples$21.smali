.class Lio/appium/android/apis/app/AlertDialogSamples$21;
.super Ljava/lang/Object;
.source "AlertDialogSamples.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/AlertDialogSamples;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/AlertDialogSamples;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/AlertDialogSamples;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/AlertDialogSamples;

    .line 235
    iput-object p1, p0, Lio/appium/android/apis/app/AlertDialogSamples$21;->this$0:Lio/appium/android/apis/app/AlertDialogSamples;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I
    .param p3, "isChecked"    # Z

    .line 240
    return-void
.end method
