import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple/features/myip/data/local/data_sources/local_data_sources.dart';
import 'package:simple/features/myip/data/remote/data_sources/remot_data_sources.dart';
import 'package:simple/features/myip/data/repository/api_repository_impl.dart';
import 'package:simple/features/myip/domain/repository/my_ip_repository.dart';



class MockRemoteDataSource extends Mock implements IpRemoteDataSource{}

class MockLocalDataSource extends Mock implements IpLocalDataSource{}


void main(){
  ApiRepository repository;
  MockRemoteDataSource mockRemoteDataSource;
  MockLocalDataSource mockLocalDataSource;

  setUp((){
    mockRemoteDataSource = MockRemoteDataSource();
    mockLocalDataSource = MockLocalDataSource();

    repository = ApiRepositoryImpl(mockRemoteDataSource,mockLocalDataSource);
  });
}