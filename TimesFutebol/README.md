- Criar uma classe Time, com as propriedades nome (string), gols (NSNumber) e estado (string)

- Em time, criar um construtor que receba como parâmetros um dicionário e o nome do time. Ponha o parâmetro nome na propriedade equivalente, e nas propriedades gols e estado pegue os valores do dicionário

- Criar uma classe Campeonato, com uma variável de instância do tipo array chamado times

- Criar um método em Campeonato chamado -(NSArray *)parser, que vai pegar o arquivo times.plist e converter em um array cujos elementos são times. Para isso, siga o seguinte passo-a-passo
    . Há um método do NSArray que retorna no formato de NSArray o conteúdo de um arquivo .plist do projeto. Utilize ele
    . Como nosso Array em times.plist só possui uma posição, pegue o valor na primeira posição do array. Se você olhar o arquivo times.plist, verá que se trata de um dicionário
    . Na classe NSDictionary há um método que retorna as chaves (em inglês, keys). Faça um FOR em cima dessas chaves, que são os nomes dos times.
    . Dentro desse FOR, crie instâncias de Time, passando os parâmetros que o construtor que você acabou de criar. Então salve em um Array
    . Após terminar o FOR, retorne esse Array

- Lembre-se de chamar o método -parser no construtor da classe campeonato

- Ainda em jogo, criar um método - (NSArray *)timesOrdenadosPorGols, que pega os times e retorna eles ordenados pela quantidade de gols. Olhe a documentação da classe NSArray para descobrir como fazer a ordenação

- No arquivo main.m do projeto, criar uma instância de Campeonato, chamar o método de ordenação e imprimir no console o resultado dos times ordenados (utilizando um laço FOR pra isso)
