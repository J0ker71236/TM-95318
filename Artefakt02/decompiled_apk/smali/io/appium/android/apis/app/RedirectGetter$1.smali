.class Lio/appium/android/apis/app/RedirectGetter$1;
.super Ljava/lang/Object;
.source "RedirectGetter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/RedirectGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/RedirectGetter;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/RedirectGetter;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/RedirectGetter;

    .line 73
    iput-object p1, p0, Lio/appium/android/apis/app/RedirectGetter$1;->this$0:Lio/appium/android/apis/app/RedirectGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 76
    iget-object v0, p0, Lio/appium/android/apis/app/RedirectGetter$1;->this$0:Lio/appium/android/apis/app/RedirectGetter;

    const-string v1, "RedirectData"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/appium/android/apis/app/RedirectGetter;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 78
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "text"

    iget-object v3, p0, Lio/appium/android/apis/app/RedirectGetter$1;->this$0:Lio/appium/android/apis/app/RedirectGetter;

    invoke-static {v3}, Lio/appium/android/apis/app/RedirectGetter;->access$000(Lio/appium/android/apis/app/RedirectGetter;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    iget-object v2, p0, Lio/appium/android/apis/app/RedirectGetter$1;->this$0:Lio/appium/android/apis/app/RedirectGetter;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lio/appium/android/apis/app/RedirectGetter;->setResult(I)V

    .line 84
    :cond_0
    iget-object v2, p0, Lio/appium/android/apis/app/RedirectGetter$1;->this$0:Lio/appium/android/apis/app/RedirectGetter;

    invoke-virtual {v2}, Lio/appium/android/apis/app/RedirectGetter;->finish()V

    .line 85
    return-void
.end method
