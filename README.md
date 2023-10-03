# Comunicação Serial Arduino-MATLAB

Este repositório contém dois códigos relacionados à comunicação serial entre um Arduino e o software MATLAB. O objetivo deste repositório é mostrar a comunicação serial entre o 
Arduíno e MATLAB, onde o fluxo de comunicação se dá do Arduíno para o MATLAB. Os códigos têm as seguintes funcionalidades:

## Arduino (Código Arduino)

### Propósito:
O código Arduino estabelece uma comunicação serial com um computador e envia repetidamente a mensagem "Hello" pela porta serial a uma taxa de 9600 bauds (bps).

### Funcionamento:
1. O código configura a comunicação serial a 9600 bps usando `Serial.begin(9600);`.
2. Em um loop infinito (`void loop()`), ele envia a mensagem "Hello" seguida de uma quebra de linha (newline) usando `Serial.println("Hello");`.
3. Um atraso de 1 segundo (`delay(1000);`) é adicionado entre as transmissões.

## MATLAB (Código MATLAB)

### Propósito:
O código MATLAB estabelece uma comunicação serial com o Arduino, lê os dados da porta serial e impõe um tempo limite para a leitura.

### Funcionamento:
1. O código cria um objeto `serialport` para a comunicação serial com o Arduino na porta COM5 a uma taxa de 9600 bps.
2. Ele verifica se há dados disponíveis na porta serial usando `obj_arduino.NumBytesAvailable`.
3. Se há dados, ele lê os dados da porta serial usando `readline(obj_arduino)` e exibe esses dados no prompt de comando do MATLAB.
4. Um tempo limite de 10 segundos (`timeout`) é definido para a leitura.
5. O código utiliza a função `tic` para marcar o início da contagem de tempo.
6. Se o tempo limite for atingido (`toc(start_time) >= timeout`), o código encerra a comunicação serial e exibe uma mensagem de tempo limite.

## Uso:
1. Carregue o código Arduino no Arduino.
2. Execute o código MATLAB no próprio MATLAB.
3. O MATLAB lerá e exibirá os dados enviados pelo Arduino pela porta serial.
4. Se o tempo limite for atingido, o código mostrará a mensagem "Tempo limite atingido. Encerrando a comunicação serial." e logo em seguida encerrará a comunicação serial.

Lembre-se de configurar corretamente a porta COM no código MATLAB para corresponder à porta do seu Arduino.

Espero que esses códigos sejam úteis para entender e iniciar a comunicação serial entre o Arduino e o MATLAB.

Para qualquer dúvida ou problema, sinta-se à vontade para entrar em contato ou contribuir para este repositório.
