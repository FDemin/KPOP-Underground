using System.Configuration;
using System.Web;
using KUG.Core.Services.Auth;
using KUG.Core.Services.Transaction;
using KUG.Core.Services.User;
using Microsoft.Practices.Unity;
using Unity.WebForms;

[assembly: WebActivatorEx.PostApplicationStartMethod( typeof(KpopUG.App_Start.UnityWebFormsStart), "PostStart" )]
namespace KpopUG.App_Start
{
	/// <summary>
	///		Startup class for the Unity.WebForms NuGet package.
	/// </summary>
	internal static class UnityWebFormsStart
	{
		/// <summary>
		///     Initializes the unity container when the application starts up.
		/// </summary>
		/// <remarks>
		///		Do not edit this method. Perform any modifications in the
		///		<see cref="RegisterDependencies" /> method.
		/// </remarks>
		internal static void PostStart()
		{
			IUnityContainer container = new UnityContainer();
			HttpContext.Current.Application.SetContainer( container );

			RegisterDependencies( container );
		}

		/// <summary>
		///		Registers dependencies in the supplied container.
		/// </summary>
		/// <param name="container">Instance of the container to populate.</param>
		private static void RegisterDependencies( IUnityContainer container )
		{
			container.RegisterType<IAuthService, AuthService>(new InjectionConstructor(ConfigurationManager.ConnectionStrings["KPOP-DB"].ConnectionString));
			container.RegisterType<IUserService, UserService>(new ContainerControlledLifetimeManager());
			container.RegisterType<ITransactionService, TransactionService>(new ContainerControlledLifetimeManager());
		}
	}
}