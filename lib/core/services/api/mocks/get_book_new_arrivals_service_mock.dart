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
        seconds: 5,
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
              "https://images-na.ssl-images-amazon.com/images/I/51+GR0xBMWL._SX331_BO1,204,203,200_.jpg",
          "title": "Os segredos da mente milionária",
          "author": "T. Harv Eker",
          "evaluation": 5,
          "aboutAuthor":
              "Aplicando os princípios que ensina, T. Harv Eker conseguiu superar uma penosa fase de altos e baixos em sua vida e se tornar milionário em apenas dois anos e meio. Hoje ele preside a Peak Potentials Training, uma das mais bem-sucedidas empresas de treinamento pessoal dos Estados Unidos e no Canadá, responsável pela organização de seminários e cursos sobre os princípios da mente milionária que atraem participantes de todo o mundo.",
          "description":
              "Conforme o próprio autor, T. Harv Eker começa seu livro 'as histórias apresentadas no livro não são certas ou erradas, verdadeiras ou falsas'. Na obra estão descritos resultados de sua carreira e conquistas de milhares de alunos dele. Ele deixa claro para aplicar o que for útil e desprezar o que não for. Vale ressaltar que em cursos de inteligência financeira, muitos dos princípios aplicados advém do que consta neste livro - mude sua mentalidade primeiro; daí você estará apto a adquirir novos hábitos através de disciplinas e crenças de evolução sobre não apenas dinheiro, mas também, unir e evoluir os mundos físico, mental, emocional e espiritual, pois devem andar juntos!",
          "price": 34.90
        },
        {
          "urlCover":
              "https://images-na.ssl-images-amazon.com/images/I/51Di3Ke9otL._SX350_BO1,204,203,200_.jpg",
          "title": "Estruturas de dados fundamentais: Conceitos e Aplicações",
          "author": "Silvio do Lago Pereira",
          "evaluation": 5,
          "aboutAuthor":
              "Silvio do Lago Pereira possui graduação em Tecnologia de Processamento de Dados pela Universidade Estadual Paulista (1990), especialização em Automação Industrial pela Escola de Engenharia Industrial de São José dos Campos (1993), mestrado em Ciência da Computação pela Universidade de São Paulo (2002) e doutorado em Ciência da Computação pela Universidade de São Paulo (2007), cuja tese obteve a primeira colocação no Concurso de Teses e Dissertações em Inteligência Artificial (2008), promovido pela Sociedade Brasileira de Computação. Tem experiência na área de Ciência da Computação, com ênfase em Inteligência Artificial, atuando principalmente em planejamento automatizado, métodos formais e verificação de modelos, aprendizado indutivo e programação em lógica. Atualmente é professor (PES-III-p) do Departamento de Tecnologia da Informação da Faculdade de Tecnologia de São Paulo (FATEC-SP), do Centro Estadual de Educação Tecnológica 'Paula Souza'.",
          "description":
              "Com uma linguagem simples, o livro apresenta de forma didática as principais estruturas de dados usadas na solução de problemas por computador. Cada conceito introduzido é imediatamente seguido por exemplos de aplicação e por uma série de exercícios que ajudam a absorvê-los mais facilmente. A obra foi elaborada para disciplinas de Estruturas de Dados, Programação e Desenvolvimento de Algoritmos, sendo indicada tanto para estudantes quanto para profissionais de informática. Na 12ª edição, o livro foi totalmente reestruturado e os seguintes tópicos adicionados: implementação de retrocesso (backtracking) usando pilha, filas de prioridades, minuciosa discussão sobre recursividade e vários exemplos de uso, análise de complexidade assintótica e notação O, provas por indução, algoritmos de ordenação e busca em vetores, e aplicação de listas generalizadas na implementação da linguagem LISP.",
          "price": 53.20
        },
        {
          "urlCover":
              "https://images-na.ssl-images-amazon.com/images/I/51cB4wSNxQL._SX333_BO1,204,203,200_.jpg",
          "title": "O homem mais rico da Babilônia",
          "author": "George S Clason",
          "evaluation": 5,
          "aboutAuthor":
              "George Samuel Clason nasceu em 7 de novembro de 1874, em Luisiana, Missouri. O escritor frequentou a Universidade de Nebraska e foi fundador de duas empresas, a Clason Map Company of Denver e a Colorado and the Clason Publishing Company. Com a última, ele publicou o primeiro atlas rodoviário dos Estados Unidos e do Canadá. Clason serviu ao Exército Americano durante a Guerra Hispano-Americana e morreu em 1957 na cidade de Napa, na Califórnia.",
          "description":
              "Com mais de dois milhões de exemplares vendidos no mundo todo, O homem mais rico da Babilônia é um clássico sobre como multiplicar riqueza e solucionar problemas financeiros. Baseando-se nos segredos de sucesso dos antigos babilônicos ― os habitantes da cidade mais rica e próspera de seu tempo ―, George S. Clason mostra soluções ao mesmo tempo sábias e muito atuais para evitar a falta de dinheiro, como não desperdiçar recursos durante tempos de opulência, buscar conhecimento e informação em vez de apenas lucro, assegurar uma renda para o futuro, manter a pontualidade no pagamento de dívidas e, sobretudo, cultivar as próprias aptidões, tornando-se cada vez mais habilidoso e consciente.",
          "price": 21.90
        },
        {
          "urlCover":
              "https://images-na.ssl-images-amazon.com/images/I/51R8IllY1SL._SX331_BO1,204,203,200_.jpg",
          "title": "O Encanto dos Corvos Capa dura – 7 dezembro 2021",
          "author": "Margaret Rogerson",
          "evaluation": 4,
          "aboutAuthor":
              "Com apenas algumas pinceladas, Isobel cria retratos deslumbrantes para clientes perigosos: o povo das fadas. Esses seres imortais não são capazes de criar ― mesmo as coisas mais simples como assar pães ou escrever cartas os reduziria a pó.",
          "description":
              "Acompanhe Isobel e Rook em sua jornada fascinante em um lugar onde a beleza esconde um mundo perverso e o preço da sobrevivência pode ser mais assustador do que a morte.",
          "price": 57.95
        },
        {
          "urlCover":
              "https://images-na.ssl-images-amazon.com/images/I/41i4-cmP8kL._SY344_BO1,204,203,200_QL70_ML2_.jpg",
          "title": "Messi: O Gênio Completo Capa comum – 27 março 2022",
          "author": "Ariel Senosiain",
          "evaluation": 4,
          "aboutAuthor":
              "Lionel Andrés Messi Cuccittini é um futebolista argentino que atua como atacante. Atualmente joga pelo Paris Saint-Germain e pela Seleção Argentina, onde é capitão",
          "description":
              "Agora completo, o gênio do futebol é retratado neste livro pela visão daqueles que mais estiveram perto e sempre souberam do que ele era capaz. O experiente jornalista Ariel Senosiain fez 68 entrevistas e conseguiu o que ninguém conseguiu: falar com o próprio pai do Messi, o treinador Alejandro Sabella e o ex-presidente da FIFA Sepp Blatter. A recriação vívida das peças-chave são um presente para os amantes do futebol e a análise afiada conquista todos os leitores. Uma leitura cativante. Uma história épica.",
          "price": 45.40
        }
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
