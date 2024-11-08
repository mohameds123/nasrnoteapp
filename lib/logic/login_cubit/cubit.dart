import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/logic/login_cubit/state.dart';

class LoginCubit extends Cubit <LoginState>{
  LoginCubit (): super (LoginInitialState());
   /// Login
  Future login (String email , String password)async{
    emit(LoginLoadingState());
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      emit(LoginSuccessState());

    }catch (e){
      emit(LoginErrorState(e.toString()));
    }
  }


}