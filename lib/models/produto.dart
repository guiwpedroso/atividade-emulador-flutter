class Produto {
  final String nomeProduto;
  final String categoria;
  final double preco;
  final int quantidadeEstoque;
  final bool disponivel;
  final List<String> tags;

  Produto({
    required this.nomeProduto,
    required this.categoria,
    required this.preco,
    required this.quantidadeEstoque,
    required this.disponivel,
    required this.tags,
  });

  bool get temEstoqueCritico => quantidadeEstoque < 5;

  factory Produto.fromJson(Map<String, dynamic> json) {
    return Produto(
      nomeProduto: json['nome_produto'] as String,
      categoria: json['categoria'] as String,
      preco: (json['preco'] as num).toDouble(),
      quantidadeEstoque: (json['quantidade_estoque'] as num).toInt(),
      disponivel: json['disponivel'] as bool,
      tags: List<String>.from(json['tags']),
    );
  }
}