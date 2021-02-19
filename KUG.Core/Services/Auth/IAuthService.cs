namespace KUG.Core.Services.Auth
{
    public interface IAuthService
    {
        bool Authenticate(string username, string password);
        bool UserExists(string username);
        int GetUser(string username, string password);
        void CreateAccount(string username, string password, string fullName, string email, string contactNumber);
    }
}
