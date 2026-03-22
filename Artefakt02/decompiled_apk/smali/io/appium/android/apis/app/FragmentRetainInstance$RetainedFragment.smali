.class public Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;
.super Landroid/app/Fragment;
.source "FragmentRetainInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/FragmentRetainInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetainedFragment"
.end annotation


# instance fields
.field mPosition:I

.field mProgressBar:Landroid/widget/ProgressBar;

.field mQuiting:Z

.field mReady:Z

.field final mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mReady:Z

    .line 102
    iput-boolean v0, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mQuiting:Z

    .line 108
    new-instance v0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment$1;-><init>(Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;)V

    iput-object v0, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mThread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 175
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 178
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 182
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mThread:Ljava/lang/Thread;

    monitor-enter v0

    .line 183
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mReady:Z

    .line 184
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 185
    monitor-exit v0

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 157
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->setRetainInstance(Z)V

    .line 164
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 165
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 195
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mThread:Ljava/lang/Thread;

    monitor-enter v0

    .line 196
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mReady:Z

    .line 197
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mQuiting:Z

    .line 198
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 199
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 202
    return-void

    .line 199
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onDetach()V
    .locals 2

    .line 213
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mThread:Ljava/lang/Thread;

    monitor-enter v0

    .line 214
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 215
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mReady:Z

    .line 216
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 217
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 220
    return-void

    .line 217
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public restart()V
    .locals 2

    .line 226
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mThread:Ljava/lang/Thread;

    monitor-enter v0

    .line 227
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mPosition:I

    .line 228
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 229
    monitor-exit v0

    .line 230
    return-void

    .line 229
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
