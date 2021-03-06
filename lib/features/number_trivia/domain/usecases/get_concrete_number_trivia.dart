import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd_clean_architecture/core/error/failures.dart';
import 'package:flutter_tdd_clean_architecture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_tdd_clean_architecture/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepository repository;
  GetConcreteNumberTrivia(this.repository);
  Future<Either<Failure, NumberTrivia>> execute({@required int number}) async {
    return await repository.getConcreteNumber(number);
  }
}
