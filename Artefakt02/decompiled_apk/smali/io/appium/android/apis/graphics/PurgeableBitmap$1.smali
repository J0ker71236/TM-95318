.class Lio/appium/android/apis/graphics/PurgeableBitmap$1;
.super Ljava/lang/Object;
.source "PurgeableBitmap.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/graphics/PurgeableBitmap;->showAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/graphics/PurgeableBitmap;


# direct methods
.method constructor <init>(Lio/appium/android/apis/graphics/PurgeableBitmap;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/graphics/PurgeableBitmap;

    .line 109
    iput-object p1, p0, Lio/appium/android/apis/graphics/PurgeableBitmap$1;->this$0:Lio/appium/android/apis/graphics/PurgeableBitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 111
    return-void
.end method
