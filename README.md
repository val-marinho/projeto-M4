# Sistema de acompanhamento

Nesse sistema de acompanhamento , foi pensado em uma modelagem em que fosse feito relações entre curso, aluno e turma. Para essa realização, foi pensado em criar cinco entidades, das quais são: curso, professor, aluno , turma e turma_aluno.  Como mostra no digrama abaixo: 

O aluno se inscreve em algumas turmas disponíveis. Para relacionar o "aluno" com a "turma", se criou uma outra entidade chamada "turma_aluno", que recebe as chaves estrangerias das entidades "aluno" e "turma". Além disso, a "turma" também está relacionada ao "curso" e ao "professor" e recebe a chave estrangeira da entidade "professor".

Existem outras entidades além dessas três? <br>
Sim, foi criado as entidades "professor" e "turma_aluno". <br>

⇨ Quais são os principais campos e tipos? <br>
Os principais campos são:

-> aluno
. id
. matricula
. nome
. idade
. cpf

-> turma
.  id
. sala
. turno
. id professor
. id curso

-> turma_aluno
. id
. id aluno
. id turma

-> professor
. id
. salario
. nome
. idade
. cpf

-> curso
. id 
. carga_horaria
. disciplinas <br>

⇨ Como essas entidades estão relacionadas? <br>
ALUNO se relaciona com TURMA através da entidade TURMA_ALUNO, a TURMA se relaciona com PROFESSOR e CURSO.


 <img align="center" alt="HTML" height="330" width="480" src="https://github.com/val-marinho/projeto-M4/blob/main/img/diagrama.jpg?raw=true">







## <img height="45px" align="center" src="https://github.com/luqui2/Sistema-para-Viagens-/blob/main/src/imagens/set.gif">   Desenvolvedora:
  <table>
  <tr>
    <td align="center"><a href="https://github.com/Valhutcherson"><img src="https://avatars.githubusercontent.com/u/113068971?v=4" width="100px;" alt=""/><br /><sub><b>Valesca Marinho</b></sub></a><br /><a href="" title="Code">💻</a></td>
  </tr> 
</table>
