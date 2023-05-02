# protheus-ci-universo

Repositório com o exemplo de CI apresentado na palestra code no code: **Linha Protheus - Utilizando CodeAnalysis em seu processo de integração contínua** no Universo TOTVS 2023.

## Subir ambiente Protheus local de exemplo

Rodar o seguinte script: `bash ./up_env.sh`

## Execução desta pipeline de exemplo

1. Tenha um ambiente Protheus funcional (caso queira utilizar o deste exemplo, execute o script do tópico anterior);
2. Adicione na [pasta](#pastas) Protheus os includes, o rpo default e o dicionário (os 2 últimos apenas se utilizar o ambiente Protheus  local de exemplo);
3. Caso queira utilizar outro ambiente de sua escolha, configure-o nas configs do TIR;
4. Execute o seguinte script: `bash ci/execute.sh` para execução da pipeline.

## Scripts CI

Em ordem de execução.

1. `execute.sh`: Realiza a execução da pipeline (neste repositório são todos os scripts abaixo);
2. `analysis.sh`: Step que realiza a execução da análise de qualidade de código;
4. `build.sh`: Step que compila os fontes e gera o RPO Custom;
3. `apply.sh`: Step que aplica o RPO custom compilado;
5. `test.sh`: Step que realiza os testes usando o TIR sem interface.

Obs.: Caso um dos scripts retorne erro, a pipeline irá "quebrar", não continuando a realização dos próximos.

## Pastas

```
.
├── output          (saída da execução da análise estática)
├── Protheus        (arquivos para execução local do Protheus via Docker)
│    ├── apo        (volume dos RPOs do ambiente Protheus)
│    ├── includes   (volume dos includes da compilação)
│    └── systemload (volume dos arquivos de dicionários)
├── ci              (scripts da pipeline)
├── src             (códigos-fonte da pipeline)
└── tir             (scripts e configurações para execução do TIR)
```

## Documentações relacionadas

- [Docker](https://docs.docker.com)
- [CodeAnalysis](https://codeanalysis.totvs.com.br)
- [Sonar Rules](https://sonar-rules.engpro.totvs.com.br/menu/rules)
- [TIR](https://github.com/totvs/tir)
- [Protheus via Docker](https://docker-Protheus.engpro.totvs.com.br)