# MVP Quiz - Diagnostico Empresarial

Quiz estatico de diagnostico empresarial pronto para deploy no Coolify com Dockerfile + Nginx.

## Dominio de producao

```txt
quiz.recordedefaturamento.com.br
```

## Integracao

O formulario envia o payload via POST para o webhook n8n:

```txt
https://n8n.catapultadigital.com.br/webhook/a11c977b-a304-4721-b431-a4e6e3cadfr4
```

CTA final do WhatsApp:

```txt
https://wa.me/556191449103
```

## Deploy no Coolify

1. Crie um novo recurso no Coolify.
2. Escolha o repositorio `nasx9/mvp-quiz`.
3. Build Pack: `Dockerfile`.
4. Base Directory: `/`.
5. Dockerfile Location: `/Dockerfile`.
6. Porta interna: `80`.
7. Configure o dominio:

```txt
quiz.recordedefaturamento.com.br
```

8. Clique em Deploy.
9. Depois acesse:

```txt
https://quiz.recordedefaturamento.com.br/health
```

Resposta esperada:

```txt
ok
```

## Checklist pos-deploy

- Testar o quiz no desktop.
- Testar o quiz no celular.
- Preencher um lead real.
- Conferir se o n8n recebeu o payload.
- Conferir se o CRM criou ou atualizou o lead.
- Validar se o SSL foi emitido no Coolify.

## Observacao sobre CORS

No n8n, o fluxo deve finalizar com `Respond to Webhook`. Caso o navegador bloqueie o POST por CORS, configurar headers de resposta no webhook ou retornar pelo dominio correto.

Headers recomendados:

```txt
Access-Control-Allow-Origin: https://quiz.recordedefaturamento.com.br
Access-Control-Allow-Methods: POST, OPTIONS
Access-Control-Allow-Headers: Content-Type
```
