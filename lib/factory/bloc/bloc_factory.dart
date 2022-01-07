import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template_project/environment/environment.dart';
import 'package:flutter_template_project/factory/repository/repository_factory.dart';

abstract class BlocFactory {
  abstract final RepositoryFactory repositoryFactory;
  Widget createBloc();
}