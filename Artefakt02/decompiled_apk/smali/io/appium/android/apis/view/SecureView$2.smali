.class Lio/appium/android/apis/view/SecureView$2;
.super Ljava/lang/Object;
.source "SecureView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/SecureView;->setClickedAction(Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/SecureView;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/SecureView;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/SecureView;

    .line 110
    iput-object p1, p0, Lio/appium/android/apis/view/SecureView$2;->this$0:Lio/appium/android/apis/view/SecureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 112
    iget-object v0, p0, Lio/appium/android/apis/view/SecureView$2;->this$0:Lio/appium/android/apis/view/SecureView;

    invoke-virtual {v0}, Lio/appium/android/apis/view/SecureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "messages":[Ljava/lang/String;
    iget-object v1, p0, Lio/appium/android/apis/view/SecureView$2;->this$0:Lio/appium/android/apis/view/SecureView;

    invoke-static {v1}, Lio/appium/android/apis/view/SecureView;->access$108(Lio/appium/android/apis/view/SecureView;)I

    move-result v1

    array-length v2, v0

    rem-int/2addr v1, v2

    aget-object v1, v0, v1

    .line 115
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lio/appium/android/apis/view/SecureView$2;->this$0:Lio/appium/android/apis/view/SecureView;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    const v3, 0x7f0e02bc

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 117
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lio/appium/android/apis/view/SecureView$2;->this$0:Lio/appium/android/apis/view/SecureView;

    .line 118
    invoke-virtual {v3}, Lio/appium/android/apis/view/SecureView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e02bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 121
    return-void
.end method
