part of 'login_view.dart';

mixin _LoginViewMixin on ConsumerState<LoginView> {
  late final AuthViewModel _viewModel;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final GlobalKey<FormState> _formKey;

  void _goRegister() {
    context.router.navigate(const RegisterRoute());
  }

  Future<void> _login() async {
    if (_formKey.currentState!.validate()) {
      final res = await _viewModel.login(
        email: _emailController.text,
        password: _passwordController.text,
      );
      if (res != null && res.response?.code == 200) {
        await context.router.pushAndPopUntil(
          const MainRoute(),
          predicate: (_) => false,
        );
      } else {
        final errorMsg =
            res?.response?.message ?? LocaleKeys.an_error_occurred.tr();
        WarningAlert().show(
          context,
          errorMsg,
          true,
          AlertDialogColors.error,
        );
      }
    }
    WarningAlert().show(
      context,
      LocaleKeys.sign_password_not_match.tr(),
      true,
      AlertDialogColors.error,
    );
  }

  @override
  void initState() {
    _viewModel = AuthViewModel();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
