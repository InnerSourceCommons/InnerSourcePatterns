## Title

*Trusted commiter*

## Patlet

Moitos proxectos InnerSource recibirán valoracións constantemente ou requirirán a posta en marcha de novas funcionalidades e a corrección de erros por parte dos/as contribuidores/as.
Nestas situacións, as persoas encargadas do mantemento do proxecto buscan formas de recoñecer e recompensar o traballo do/a contribuidor/a máis alá das contribucións individuais.

## Problema

- As persoas encargadas do mantemento de proxectos queren atopar xeitos de incrementar a súa capacidade para brindar apoio a un proxecto. 
- As persoas encargadas do mantemento de proxectos queren atopar xeitos de prolongar o valor que aportou o proxecto.
- As persoas encargadas do mantemento de proxectos queren recompensar visiblemente aos/ás contribuidores/as frecuentes e capacitalos/as para que melloren o valor das contribucións.
- Falla de mecanismos e linguaxe para recoñecer as contribucións que levaban a cabo os equipos dunha organización.

## Contexto

- Vostede é a persoa encargada do mantemento dunha libraría, un servizo ou un recurso compartido entre equipos.
- Recibe contribucións regularmente.
- Recibe peticións de funcionalidades regularmente.
- Recibe solicitudes periódicas de corrección de erros.
- Hai contribuidores/as con motivación propia que buscan desenvolver as súas competencias a través de proxectos InnerSource.

## Aspectos que mellorar

- Durante o ciclo de vida dun proxecto, o enfoque dos/as mantedores/as pode mudar co fin de adaptarse ás prioridades comerciais cambiantes.
- Os/As contribuidores/as buscan un recoñecemento visible das súas contribucións, que amose valor.
- Manter un proxecto de complexidade razoable resulta complexo para un equipo pequeno.
- Desenvolver funcionalidades de proxecto a escala é esixente para un equipo pequeno.

## Solución

### Definir o rol do/a *trusted committer* nun proxecto

O labor do/a *trusted committer* depende de cada proxecto e do seu persoal encargado de mantemento. Asegúrese de documentar no proxecto o alcance da función do seu/súa *trusted committer*. A documentación específica establece o que cabe esperar dos novos membros da comunidade e establece o papel dos/as futuros/as candidatos/as.

A continuación, enuméranse algunhas pautas para identificar un/unha posible *trusted committer*:

- Un/Unha participante activo/a nas canles da comunidade (Slack, triaxe de problemas en JIRA etc.) convértese nun/nunha *trusted committer* formalizando, así, o seu papel de apoio á comunidade.
- Alguén que envía código, documentación ou outros cambios no repositorio. Comece por incluír a esta persoa nas *pull requests*. Se participa de xeito activo nas *pull requests*, considere achegarse a esa ou a esas persoas para propoñerlle unha maior colaboración no proxecto.

### Formalizar aos/ás *trusted committers*

O primeiro paso é achegarse ás persoas candidatas para que se convertan en *trusted committer*. O persoal encargado do mantemento debe educar ás persoas candidatas sobre o papel do/a *trusted committer*. Non se espera que as persoas candidatas acepten o rol de *trusted committer*. Cada candidato/a debe avaliar se ten o ancho de banda necesario para asumir as responsabilidades.

Cando un/unha candidato/a acepta o rol, correspóndelle ao persoal encargado de mantemento do proxecto recoñecer publicamente o paso de usuario/a a *trusted committer*. Tamén é unha boa idea engadir o seu nome a unha sección de *trusted committers* no README do seu proxecto. Como por exemplo:

```markdown
# project-name

... your project's readme ...

## Project Leaders

### Maintainers

  - Your team

### [Trusted Committers]

  - The name of the new trusted committer

[Trusted Committers]: https://example.com/link/to/your/trusted/committer/documentation.md
```

### Mantemento de relacións entre *trusted committers*

Unha vez que formalice a incorporación dun/dunha novo/a *trusted committer*, é unha boa idea mantelo/a informado/a mentres continúa iterando no seu proxecto. Manter informados/as aos/ás *trusted committers* pode ser tan sinxelo como convidalos/as á súa canle de proxecto ou incluílos/as nas súas sesións de planificación. Deste xeito, se os/as *trusted committers* teñen máis oportunidades de participación, poderán ter acceso ao persoal encargado do mantemento, se así o desexan.

Ademais de manter informados/as aos/ás *trusted committers*, resulta positivo pórse en contacto de maneira periódica. Unha cadencia suxerida é comezar cada semana antes de progresar gradualmente a cada poucas semanas. O propósito destes contactos é asegurarse de que o/a *trusted committer* se sinte apoiado no seu novo papel. Ao igual que nas reunións 1:1 co/coa seu/súa xerente, se hai algún problema, escoite e empatice para tratar de comprender que está a impedir que o/a *trusted committer* teña éxito. [Agradézalle sempre a este o seu esforzo continuo](./praise-participants.md) por facer que o proxecto sexa exitoso e estableza, así, unha nova data para volver a contactar.

### Cese dun/dunha *trusted committer*

Hai momentos nos que pode ser necesario prescindir dun/dunha *trusted committer*. Estas circunstancias acontecen cando o/a *trusted committer*:

- Xa non está disposto/a a participar.
- Xa non pode cumprir coas súas funcións.
- Xa non é empregado/a da empresa.

Ambas partes deben acordar un plan para eliminar o acceso aos recursos do proxecto, tales medidas inclúen a transición da súa entrada na sección de ***trusted committer*** dun proxecto a unha listaxe de contribuidores/as anteriores.

Despois de eliminar o acceso, [agradeza ao/á *trusted committer* a súa participación de maneira pública](./praise-participants.md). O recoñecemento público asegura unha comunicación clara no proceso de transición e continuidade da comunidade.

## Contexto resultante

### Para os/as contribuidores/as

Acadar o *status* de *trusted committer* nun proxecto demostra iniciativa á hora de contribuír a un proxecto comunitario. O recoñecemento destes esforzos pódese utilizar durante as revisións anuais cos/coas xerentes.

### Para os/as mantedores/as

A medida que un proxecto madura, as persoas encargadas do mantemento poden familiarizarse menos cos aspectos chave dun proxecto. Os/As *trusted committers* enchen estes ocos baleiros, asegurando que tódolos aspectos do proxecto sexan atendidos mellor co tempo.

Contar cun conxunto robusto de *trusted committers* asegura que, se o persoal encargado do mantemento do proxecto segue adiante, sempre existirá un plan para a administración responsable.

## Exemplos coñecidos

Esta iniciativa foi levada a cabo con éxito en:

- Nike
- Paypal
- Mercado Libre: Engadindo unha sección no arquivo `CONTRIBUTING.md` para informar de quen son os/as *trusted committers*.
- Robert Bosch GmbH: Non se designou co nome de «*trusted committer*», pero si se implantou este rol ao comezo da implantación de InnerSource. Os/As *trusted committers* recibiron financiación para o 100 % do seu tempo laboral co obxectivo de que puidesen centrarse neste papel.

![Sección dos/as *trusted committers* en CONTRIBUTING.md de Mercado Libre](../../../assets/img/mercadolibre-trusted-committers.png)

## Estado

- Estruturado.
- Publicado internamente en Nike; redactado a través dunha *pull request* en xuño de 2018.

## Autoría

- [Fernando Freire](https://github.com/dogonthehorizon)

## Recoñecementos

- [Rusell Rutledge](https://github.com/rrrutledge)
- [Loren Sanz](https://github.com/mrsanz)
- [Noah Cawley](https://github.com/utanapishtim)
- [Jeremy Hicks](https://github.com/greatestusername)
- [Doron Katz](https://github.com/doronkatz)

## Tradución

- Leticia Gómez Cadahía
- María Lucía González Castro