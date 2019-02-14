require 'calabash-android/calabash_steps'

Dado(/^que eu esteja na area de perguntas frequentes$/) do
  page(Steps).tutorial
  page(Steps).minha_conta
end

Então(/^valido se a pergunta é existente$/) do
  page(Steps).perguntas_frequentes
end