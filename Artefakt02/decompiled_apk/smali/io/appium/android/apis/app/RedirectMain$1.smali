.class Lio/appium/android/apis/app/RedirectMain$1;
.super Ljava/lang/Object;
.source "RedirectMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/RedirectMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/RedirectMain;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/RedirectMain;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/RedirectMain;

    .line 104
    iput-object p1, p0, Lio/appium/android/apis/app/RedirectMain$1;->this$0:Lio/appium/android/apis/app/RedirectMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 107
    iget-object v0, p0, Lio/appium/android/apis/app/RedirectMain$1;->this$0:Lio/appium/android/apis/app/RedirectMain;

    const-string v1, "RedirectData"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/appium/android/apis/app/RedirectMain;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 108
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "text"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 109
    iget-object v1, p0, Lio/appium/android/apis/app/RedirectMain$1;->this$0:Lio/appium/android/apis/app/RedirectMain;

    invoke-virtual {v1}, Lio/appium/android/apis/app/RedirectMain;->finish()V

    .line 110
    return-void
.end method
