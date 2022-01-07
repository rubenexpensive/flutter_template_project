import 'package:application/bloc/my_home/my_home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template_project/environment/environment.dart';
import 'package:flutter_template_project/factory/bloc/bloc_factory.dart';
import 'package:flutter_template_project/factory/repository/my_home_repository_factory.dart';
import 'package:flutter_template_project/factory/repository/repository_factory.dart';
import 'package:domain/service/my_home_service.dart';
import 'package:domain/repository/my_home_remote_repository.dart';
import 'package:flutter_template_project/pages/my_home_page.dart';

class MyHomeBlocFactory implements BlocFactory {
  final Environment environment;
  MyHomeBlocFactory(this.environment);

  @override
  RepositoryFactory get repositoryFactory => MyHomeRepositoryFactory(environment);

  @override
  Widget createBloc() {
    final service = MyHomeService(repositoryFactory.createRemoteRepository() as MyHomeRemoteRepository);
    return BlocProvider<MyHomeBloc>(
      create: (context) => MyHomeBloc(service),
      child: const MyHomePage(title: 'Home'),
    );
  }

  
}