from rest_framework.authentication import TokenAuthentication
from rest_framework.exceptions import AuthenticationFailed
from django.utils import timezone


class CustomTokenAuthentication(TokenAuthentication):
    def authenticate_credentials(self, key):
        model = self.get_model()
        try:
            token = model.objects.get(key=key)
        except model.DoesNotExist:
            raise AuthenticationFailed({'status': 301, "detail": "Invalid token"})

        if not token.user.is_active:
            raise AuthenticationFailed({"status": 201, "detail": "User inactive or deleted"})

        # Check token expiration
        print('custom token')
        print(token.created)
        if token.created < timezone.now() - timezone.timedelta(minutes=720):
            raise AuthenticationFailed({'status': 301, "detail": "Token has expired"})

        return (token.user, token)
