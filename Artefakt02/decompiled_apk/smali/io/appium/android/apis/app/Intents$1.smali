.class Lio/appium/android/apis/app/Intents$1;
.super Ljava/lang/Object;
.source "Intents.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/Intents;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/Intents;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/Intents;

    .line 40
    iput-object p1, p0, Lio/appium/android/apis/app/Intents$1;->this$0:Lio/appium/android/apis/app/Intents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    iget-object v1, p0, Lio/appium/android/apis/app/Intents$1;->this$0:Lio/appium/android/apis/app/Intents;

    const-string v2, "Select music"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/appium/android/apis/app/Intents;->startActivity(Landroid/content/Intent;)V

    .line 45
    return-void
.end method
