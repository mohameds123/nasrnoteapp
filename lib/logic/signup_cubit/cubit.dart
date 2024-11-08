import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/logic/signup_cubit/state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final FirebaseAuth firebaseAuth;

  SignUpCubit(this.firebaseAuth) : super(SignupInitialState());

  /// Sign up function
  Future signUp (String email ,String password)async{

    emit(SignupLoadingState());
    try{
      await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      emit(SignupSuccessState());
    }catch(e){
      emit(SignupErrorState(e.toString()));

    }
  }
}
