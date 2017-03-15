from django.dispatch import Signal

go_server_down = Signal(providing_args=["user"])
profile_updated = Signal(providing_args=["user"])
new_follower_joined = Signal(providing_args=["user"])
follower_unfollowed = Signal(providing_args=["user"])
notify_followers = Signal(providing_args=["user"])
user_session_complete = Signal(providing_args=["user"])
new_user_followed = Signal(providing_args=["user"])
new_user_shared = Signal(providing_args=["user"])
update_background_request = Signal(providing_args=["user"])
