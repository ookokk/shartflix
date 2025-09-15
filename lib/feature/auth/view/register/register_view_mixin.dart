part of 'register_view.dart';

mixin _RegisterViewMixin on ConsumerState<RegisterView> {
  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final GlobalKey<FormState> _formKey;

  void _goLogin() {
    context.router.navigate(const LoginRoute());
  }

  Future<void> _register() async {
    if (_formKey.currentState!.validate() &&
        ref.watch(isTermApprovedProvider)) {
      final res = await AuthService.instance.register(
        name: _nameController.text,
        email: _emailController.text,
        password: _passwordController.text,
      );
      if (res != null &&
          (res.response?.code == 201 || res.response?.code == 200)) {
        await context.router.pushAndPopUntil(
          PhotoUploadRoute(isNewRegistered: true),
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
    } else {
      WarningAlert().show(
        context,
        LocaleKeys.sign_password_not_match.tr(),
        true,
        AlertDialogColors.error,
      );
    }
  }

  @override
  void initState() {
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
