import 'dart:convert';

import '../api_response.dart';
import '../api_service.dart';

class GetBookNewArrivalsServiceMock implements ApiService {
  @override
  Future<ApiResponse<String>> delete(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse<List<int>>> downloadFile(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse<String>> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    var jsonParse = jsonEncode(
      _successResponse(),
    );

    return Future.delayed(
      const Duration(
        seconds: 7,
      ),
    ).then(
      (value) {
        return ApiResponse<String>(
          statusCode: 200,
          data: jsonParse,
        );
      },
    );
  }

  Map<String, dynamic> _successResponse() {
    return {
      "results": [
        {
          "urlCover":
              "https://images-na.ssl-images-amazon.com/images/I/51bVhqv1hcL._SY344_BO1,204,203,200_QL70_ML2_.jpg",
          "title":
              "De mãos dadas: Um palhaço e um psicólogo conversam sobre a coragem de viver o luto e as belezas que nascem da despedida",
          "author": "Claudio Thebas",
          "evaluation": 5,
          "aboutAuthor":
              "Cláudio Thebas é palhaço, escritor e educador pós-graduado em Pedagogia da Cooperação (Projeto Cooperação). É fundador do Laboratório de Escuta e Convivência (LEC), consultoria especializada em promover engajamento, diálogo e integração de grupos e equipes. ",
          "description":
              "Trata-se antes de tudo de uma obra sobre o amor, a esperança e sobre a urgência de vivermos plenamente os encontros. O luto não precisa ser vivido de forma solitária. A cada página o leitor se sentirá acolhido pelos autores e terá a oportunidade de participar da jornada de dois amigos escritores que se encontraram literariamente durante o primeiro ano de uma grande ausência.",
          "price": 37.50
        },
        {
          "urlCover":
              "https://images-na.ssl-images-amazon.com/images/I/512niS66poL._SX552_BO1,204,203,200_.jpg",
          "title": "Medicina Legal e Noções de Criminalística - 11ª Ed - 2022",
          "author": "Neusa Bittar",
          "evaluation": 5,
          "aboutAuthor":
              "Médica, advogada, professora universitária e escritora. Mestre em Medicina. Professora de Criminologia da Universidade Metropolitana de Santos (UNIMES) Preceptora da Liga de Medicina Legal da Faculdade de Medicina da UNIMES.",
          "description":
              "Sobre a obra Medicina Legal e Noções de Criminalística - 11ª Ed - 2022 'A obra tem conteúdo que inclui definições, conceitos, ensinamentos e explicações de ordem prática, com o respectivo estudo e exame, tudo apresentado de modo acessível e adequado aos que querem estudar ou pesquisar assuntos que, na Medicina Legal, vão até à moderna Toxicologia Forense, passando pelo relevante prova pericial e pelos documentos utilizados no campo médico legal, e vão desde a Criminalística até à Sexologia Forense, sem abandonar a importante Psicopatologia Forense.",
          "price": 114.90
        },
        {
          "urlCover":
              "https://images-na.ssl-images-amazon.com/images/I/51D932tuqAL._SY344_BO1,204,203,200_QL70_ML2_.jpg",
          "title":
              "Corpo fala: A linguagem silenciosa da comunicação não verbal",
          "author": " Pierre Weil",
          "evaluation": 5,
          "aboutAuthor":
              "Pierre Weil, doutor em Psicologia pela Universidade de Paris, é um nome consagrado na psicologia contemporânea, com mais de trinta obras publicadas em diversos idiomas. Professor emérito da Universidade Federal de Minas Gerais. A Unesco publicou o seu livro A arte de viver em paz, que é uma educação emergente, holística e centrada na paz. Foi um eminente mentor do movimento holístico no Brasil e na Europa.",
          "description":
              "O livro tenta desvendar a comunicação não-verbal do corpo humano, primeiramente analisando os princípios subterrâneos que regem e conduzem o corpo. A partir desses princípios aparecem as expressões, gestos e atos corporais que, de modos característicos estilizados ou inovadores, expressam sentimentos, concepções, ou posicionamentos internos. Acompanham 350 ilustrações.",
          "price": 30.16
        },
        {
          "urlCover":
              "https://images-na.ssl-images-amazon.com/images/I/41CKWlj01ML._SX339_BO1,204,203,200_.jpg",
          "title": "Manual de persuasão do FBI Capa comum – 31 janeiro 2020",
          "author": "Jack Shafer ",
          "evaluation": 5,
          "aboutAuthor":
              "Pierre Weil, doutor em Psicologia pela Universidade de Paris, é um nome consagrado na psicologia contemporânea, com mais de trinta obras publicadas em diversos idiomas. Professor emérito da Universidade Federal de Minas Gerais. A Unesco publicou o seu livro A arte de viver em paz, que é uma educação emergente, holística e centrada na paz. Foi um eminente mentor do movimento holístico no Brasil e na Europa.",
          "description":
              "Ex-agente do FBI ensina como influenciar, atrair e conquistar pessoas. Como um agente especial para o Programa de Análise Comportamental da Divisão de Segurança Nacional do FBI, Dr. Jack Schafer desenvolveu estratégias dinâmicas e inovadoras para entrevistar terroristas e detectar mentiras.  Agora, Dr. Schafer evoluiu suas táticas e nos ensina como aplicá-las no cotidiano para obter sucesso nas relações interpessoais.",
          "price": 25.89
        },
      ]
    };
  }

  @override
  Future<ApiResponse<String>> patch(
    String path, {
    body,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse<String>> post(
    String path, {
    body,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse<String>> put(
    String path, {
    body,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) {
    throw UnimplementedError();
  }
}
