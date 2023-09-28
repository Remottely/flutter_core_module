import 'package:flutter_core_module/flutter_core_module.dart';

class PtBr implements ITranslation {
  @override
  String get errorPasswordsMustBeTheSame => 'As senhas devem ser iguais.';
  @override
  String get errorTheFieldNeedsToBeEquals => 'O campo precisa ser igual.';
  @override
  String get errorInvalidCredentials => 'Credenciais inválidas.';
  @override
  String get errorInvalidField => 'Campo inválido';
  @override
  String get errorRequiredField => 'Campo obrigatório';
  @override
  String get errorUnexpectedError =>
      'Algo errado aconteceu.\nTente novamente mais tarde.';
  @override
  String get errorUserNotFound => 'Usuário não encontrado.';
  @override
  String get errorEmailInUse => 'O email já está em uso.';
  @override
  String get errorUserNotLoggedIn => 'Usuário não está logado.';
  @override
  String get errorUserDoesNotExist => 'Usuário não existe.';

  @override
  String get happiness => 'Felicidade';
  @override
  String get discouraged => 'Desânimo';
  @override
  String get passion => 'Paixão';
  @override
  String get trusting => 'Confiança';
  @override
  String get sadness => 'Tristeza';
  @override
  String get anxious => 'Ansiedade';
  @override
  String get msgHelpMe => 'Não sei.\nMe ajude';

  @override
  String get emojiHappiness => '😄';
  @override
  String get emojiTrusting => '😎';
  @override
  String get emojiDiscouraged => '😔';
  @override
  String get emojiHelp => '😶';
  @override
  String get emojiAnxious => '😟';
  @override
  String get emojiPassion => '😍';
  @override
  String get emojiSadness => '😢';

  @override
  String get error => 'Erro';

  @override
  String getActivationEmoji({required String value}) {
    switch (value) {
      case 'happiness':
        return emojiHappiness;
      case 'passion':
        return emojiPassion;
      case 'discouraged':
        return emojiDiscouraged;
      case 'sadness':
        return emojiSadness;
      case 'trusting':
        return emojiTrusting;
      case 'anxious':
        return emojiAnxious;
      case 'help':
        return emojiHelp;
      default:
        return error;
    }
  }

  @override
  String getActivationTitle({required String value}) {
    switch (value) {
      case 'happiness':
        return happiness;
      case 'discouraged':
        return discouraged;
      case 'passion':
        return passion;
      case 'trusting':
        return trusting;
      case 'anxious':
        return anxious;
      case 'help':
        return msgHelpMe;
      default:
        return error;
    }
  }

  @override
  String getMinimumCharacters({required int value}) {
    return 'mínimo $value caracteres';
  }

  @override
  String get password => 'Senha';
  @override
  String get minimumSixCharacters => getMinimumCharacters(value: 6);

  @override
  String get passwordMinimumSixCharacters => 'Senha (mínimo 6 caracteres)';

  @override
  String get optional => ' (opcional)';

  @override
  String get yourName => 'Seu nome';
  @override
  String get yourFullName => 'Seu nome completo';
  @override
  String get yourEmail => 'Seu email';
  @override
  String get leaveYourComplaint => 'Deixe sua reclamação';
  @override
  String get sendMyHelpRequest => 'Enviar meu pedido de ajuda';

  @override
  String get errorEnterYourFullName => 'Insira o seu nome completo';
  @override
  String get errorEnterCharactersFromaTozOrAToZ =>
      'Insira caracteres de a-z ou A-Z';
  @override
  String get errorTheNameMustBeComplete => 'O nome precisa ser completo';
  @override
  String get errorEnterAValidEmail => 'Insira um email válido';
  @override
  String get errorEnterAValidPhoneNumber => 'Digite um telefone válido';
  @override
  String get errorEnterAPhoneNumber => 'Digite um telefone';
  @override
  String get errorThisFieldMustInitializeWithAtSign =>
      'Este campo deve começar com "@"';
  @override
  String get errorThisFieldMustNotContainWhiteSpace =>
      'Este campo não deve conter espaço em branco';
  @override
  String get errorPleaseLeaveYourComplaint =>
      'Por favor,  deixe a sua reclamação';

  @override
  String get aa1 => 'É necessario verificar o\nemail para utilizar o app!';
  @override
  String get aa2 => 'Verifique sua\ncaixa de email!';
  @override
  String get aa3 =>
      'Enviamos para a sua caixa de email um link de confirmação de email!';
  @override
  String get aa4 => 'VOLTAR À TELA DE LOGIN';
  @override
  String get aa5 => 'Buscando usuário...';
  @override
  String get aa6 => 'Verifique sua\ncaixa de email!';
  @override
  String get aa7 =>
      'Enviamos para a sua caixa de email uma mensagem de recuperação de senha!';
  @override
  String get aa8 => 'VOLTAR À TELA DE LOGIN';
  @override
  String get aa9 => 'VER TODOS';
  @override
  String get aa10 => 'ÁUDIOS';
  @override
  String get aa11 => 'ENVIAR DESABAFO';
  @override
  String get aa12 => 'Sua Mensagem\nfoi enviada';
  @override
  String get aa13 => 'Vamos ler com atenção e\nresponderemos nas próximas 48h.';
  @override
  String get aa14 => 'VOLTAR À TELA DE INÍCIO';

  @override
  String get aa16 => 'Vamos começar a sua ativação?';
  @override
  String get aa17 => 'O que está\nsentindo agora?';
  @override
  String get aa18 => 'SIM, QUERO AJUDA';
  @override
  String get aa19 => 'NÃO, MAS AGRADEÇO';
  @override
  String get aa20 => 'Nos preocupamos com você e\nqueremos te ajudar...';
  @override
  String get aa21 =>
      'Gostaria que te encaminhássemos para um especialista, sem custo algum?';
  @override
  String get aa22 => 'E aí?';
  @override
  String get aa23 => 'Ativou seu espírito para hoje?';
  @override
  String get aa24 => 'SIM';
  @override
  String get aa25 => 'NÃO';
  @override
  String get aa26 => 'Perfil';
  @override
  String get aa27 => 'SAIR';
  @override
  String get aa28 => 'Confirme a sua Senha';
  @override
  String get aa15 => 'Data de nascimento';

  /// web admin
  @override
  String get error404PageNotFound => 'ERRO 404\n\nPágina não encontrada';

  @override
  String get createAccount => 'Criar conta';
  @override
  String get confirmPassword => 'Confirmar senha';
  @override
  String get email => 'Email';
  @override
  String get signIn => 'Entrar';
  @override
  String get name => 'Nome';
  @override
  String get reload => 'Recarregar';
  @override
  String get tables => 'Mesas';
  @override
  String get wait => 'Aguarde...';
  @override
  String get backToHome => 'Voltar ao início';
}
