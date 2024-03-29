# protheus-ci-universo

Repositório com o exemplo de CI apresentado na palestra code no code: **Linha Protheus - Utilizando CodeAnalysis em seu processo de integração contínua** no Universo TOTVS 2023.

Para baixá-lo, faça um clone deste repositório em seu ambiente local: `git clone https://github.com/totvs/protheus-ci-universo`.

## Exemplo Protheus com Docker

Se deseja subir o ambiente Protheus via Docker para execução do TIR nesta pipeline, rode o seguinte script: `cd protheus-ci-universo && bash ci/docker/up_env.sh`.

## Como executar a pipeline?

Esta pipeline de exemplo depende de uma base Protheus funcional para realizar a execução dos testes do TIR.

Obs.: Caso queira utilizar o ambiente deste exemplo, execute o script do tópico anterior.

1. Baixe os seguintes artefatos: includes, rpo default e o dicionário (os 2 últimos apenas se utilizar o ambiente de exemplo do tópico anterior);
2. Adicione na **[pasta protheus](#estrutura-de-pastas)** os artefatos baixados em suas respectivas subpastas;
3. Caso queira utilizar outro ambiente de sua escolha, configure-o nas configs do TIR (`tir/config.json`);
4. Execute o seguinte script: `cd protheus-ci-universo && bash ci/scripts/execute.sh` para execução da pipeline.

## Scripts do CI

Estes são os scripts desta pipeline CI de exemplo, em ordem de execução:

1. `execute.sh`: Realiza a execução da pipeline (neste repositório são todos os scripts abaixo);
2. `analysis.sh`: Step que realiza a execução da análise de qualidade de código;
4. `build.sh`: Step que compila os fontes e gera o RPO Custom;
3. `apply.sh`: Step para aplicar o RPO custom atualizado no ambiente Protheus. Adapte-o à sua realidade (necessário apenas se não utilizar o ambiente Protheus via Docker deste exemplo);
5. `test.sh`: Step que realiza os testes usando o TIR sem interface.

Obs.: Caso um dos scripts retorne erro, a pipeline irá "quebrar", não continuando a realização dos próximos.

## Estrutura de pastas

Este projeto contém a seguinte estrutura de pastas e seus respectivos propósitos:

```
.
├── analyser            (arquivos do analisador estático)
│    ├── config.json    (arquivo de configuração do analisador)
│    └── output         (saída da execução da análise)
├── protheus            (arquivos para execução local do Protheus e AppServer command line via Docker)
│    ├── apo            (volume dos RPOs do ambiente Protheus)
│    ├── includes       (volume dos includes da compilação)
│    └── systemload     (volume dos arquivos de dicionário)
├── ci                  (pipeline CI)
│    ├── scripts        (scripts da pipeline)
│    └── docker         (arquivos para execução do ambiente Protheus local)
├── src                 (códigos-fonte)
└── tir                 (suítes de testes e configuração para execução do TIR)
```

## Documentações relacionadas

- [Code Analysis via Docker](https://hub.docker.com/r/totvsengpro/advpl-tlpp-code-analyzer)
- [Protheus via Docker](https://docker-Protheus.engpro.totvs.com.br)
- [AppServer command line](https://tdn.totvs.com/pages/viewpage.action?pageId=6064914)
- [Sonar Rules](https://sonar-rules.engpro.totvs.com.br/menu/rules)
- [Git](https://git-scm.com)
- [Docker](https://docs.docker.com)
- [CodeAnalysis](https://codeanalysis.totvs.com.br)
- [TIR](https://github.com/totvs/tir)