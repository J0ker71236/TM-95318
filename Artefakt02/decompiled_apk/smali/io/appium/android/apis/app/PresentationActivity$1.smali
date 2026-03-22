.class Lio/appium/android/apis/app/PresentationActivity$1;
.super Ljava/lang/Object;
.source "PresentationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/PresentationActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/PresentationActivity;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/PresentationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/PresentationActivity;

    .line 268
    iput-object p1, p0, Lio/appium/android/apis/app/PresentationActivity$1;->this$0:Lio/appium/android/apis/app/PresentationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 271
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 272
    return-void
.end method
