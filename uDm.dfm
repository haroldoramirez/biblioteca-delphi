object DM: TDM
  OldCreateOrder = False
  Left = 398
  Top = 210
  Height = 324
  Width = 619
  object Biblioteca: TIBDatabase
    Connected = True
    DatabaseName = 'C:\BIBLIOTECA.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = Trans
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 32
    Top = 16
  end
  object Trans: TIBTransaction
    Active = True
    DefaultDatabase = Biblioteca
    AutoStopAction = saNone
    Left = 32
    Top = 80
  end
  object dSetAutor: TIBDataSet
    Database = Biblioteca
    Transaction = Trans
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from AUTOR'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into AUTOR'
      '  (NOME, IDADE, SEXO)'
      'values'
      '  (:NOME, :IDADE, :SEXO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  NOME,'
      '  IDADE,'
      '  SEXO'
      'from AUTOR '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from AUTOR')
    ModifySQL.Strings = (
      'update AUTOR'
      'set'
      '  NOME = :NOME,'
      '  IDADE = :IDADE,'
      '  SEXO = :SEXO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'AUTOR_GEN'
    GeneratorField.ApplyEvent = gamOnPost
    Active = True
    Left = 160
    Top = 80
    object dSetAutorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'AUTOR.CODIGO'
      Required = True
    end
    object dSetAutorNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'AUTOR.NOME'
      Size = 50
    end
    object dSetAutorIDADE: TIntegerField
      FieldName = 'IDADE'
      Origin = 'AUTOR.IDADE'
    end
    object dSetAutorSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = 'AUTOR.SEXO'
      Size = 1
    end
  end
  object dSetEditora: TIBDataSet
    Database = Biblioteca
    Transaction = Trans
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from EDITORA'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into EDITORA'
      '  (RAZAOSOCIAL, FANTASIA, CNPJ)'
      'values'
      '  (:RAZAOSOCIAL, :FANTASIA, :CNPJ)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  RAZAOSOCIAL,'
      '  FANTASIA,'
      '  CNPJ'
      'from EDITORA '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from EDITORA')
    ModifySQL.Strings = (
      'update EDITORA'
      'set'
      '  RAZAOSOCIAL = :RAZAOSOCIAL,'
      '  FANTASIA = :FANTASIA,'
      '  CNPJ = :CNPJ'
      'where'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'EDITORA_GEN'
    GeneratorField.ApplyEvent = gamOnPost
    Active = True
    Left = 232
    Top = 80
    object dSetEditoraCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'EDITORA.CODIGO'
      Required = True
    end
    object dSetEditoraRAZAOSOCIAL: TIBStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'EDITORA.RAZAOSOCIAL'
      Size = 50
    end
    object dSetEditoraFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = 'EDITORA.FANTASIA'
      Size = 30
    end
    object dSetEditoraCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = 'EDITORA.CNPJ'
      Size = 14
    end
  end
  object dSetLivro: TIBDataSet
    Database = Biblioteca
    Transaction = Trans
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from LIVRO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into LIVRO'
      '  (TITULO, CODAUTOR, CODEDITORA)'
      'values'
      '  (:TITULO, :CODAUTOR, :CODEDITORA)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  TITULO,'
      '  CODAUTOR,'
      '  CODEDITORA'
      'from LIVRO '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from LIVRO')
    ModifySQL.Strings = (
      'update LIVRO'
      'set'
      '  TITULO = :TITULO,'
      '  CODAUTOR = :CODAUTOR,'
      '  CODEDITORA = :CODEDITORA'
      'where'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'LIVRO_GEN'
    GeneratorField.ApplyEvent = gamOnPost
    Active = True
    Left = 304
    Top = 80
    object dSetLivroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'LIVRO.CODIGO'
      Required = True
    end
    object dSetLivroTITULO: TIBStringField
      FieldName = 'TITULO'
      Origin = 'LIVRO.TITULO'
      Size = 50
    end
    object dSetLivroCODAUTOR: TIntegerField
      FieldName = 'CODAUTOR'
      Origin = 'LIVRO.CODAUTOR'
      Required = True
    end
    object dSetLivroCODEDITORA: TIntegerField
      FieldName = 'CODEDITORA'
      Origin = 'LIVRO.CODEDITORA'
      Required = True
    end
  end
  object DSAutor: TDataSource
    DataSet = dSetAutor
    Left = 160
    Top = 152
  end
  object DSEditora: TDataSource
    DataSet = dSetEditora
    Left = 232
    Top = 152
  end
  object DSLivro: TDataSource
    DataSet = dSetLivro
    Left = 304
    Top = 152
  end
  object dSetPais: TIBDataSet
    Database = Biblioteca
    Transaction = Trans
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PAIS'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into PAIS'
      '  (DESCRICAO, DDI)'
      'values'
      '  (:DESCRICAO, :DDI)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  DESCRICAO,'
      '  DDI'
      'from PAIS '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from PAIS')
    ModifySQL.Strings = (
      'update PAIS'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  DDI = :DDI'
      'where'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'PAIS_GEN'
    GeneratorField.ApplyEvent = gamOnPost
    Active = True
    Left = 384
    Top = 80
    object dSetPaisCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'PAIS.CODIGO'
      Required = True
    end
    object dSetPaisDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'PAIS.DESCRICAO'
      Size = 50
    end
    object dSetPaisDDI: TIBStringField
      FieldName = 'DDI'
      Origin = 'PAIS.DDI'
      Size = 3
    end
  end
  object DSPais: TDataSource
    DataSet = dSetPais
    Left = 384
    Top = 152
  end
  object dSetEstado: TIBDataSet
    Database = Biblioteca
    Transaction = Trans
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ESTADO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into ESTADO'
      '  (DESCRICAO, SIGLA, CODPAIS)'
      'values'
      '  (:DESCRICAO, :SIGLA, :CODPAIS)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  DESCRICAO,'
      '  SIGLA,'
      '  CODPAIS'
      'from ESTADO '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from ESTADO')
    ModifySQL.Strings = (
      'update ESTADO'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  SIGLA = :SIGLA,'
      '  CODPAIS = :CODPAIS'
      'where'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'ESTADO_GEN'
    GeneratorField.ApplyEvent = gamOnPost
    Active = True
    Left = 456
    Top = 80
    object dSetEstadoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'ESTADO.CODIGO'
      Required = True
    end
    object dSetEstadoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'ESTADO.DESCRICAO'
      Size = 50
    end
    object dSetEstadoSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = 'ESTADO.SIGLA'
      Size = 2
    end
    object dSetEstadoCODPAIS: TIntegerField
      FieldName = 'CODPAIS'
      Origin = 'ESTADO.CODPAIS'
      Required = True
    end
  end
  object DSEstado: TDataSource
    DataSet = dSetEstado
    Left = 456
    Top = 152
  end
  object dSetCidade: TIBDataSet
    Database = Biblioteca
    Transaction = Trans
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CIDADE'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into CIDADE'
      '  (DESCRICAO, DDD, CODESTADO)'
      'values'
      '  (:DESCRICAO, :DDD, :CODESTADO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  DESCRICAO,'
      '  DDD,'
      '  CODESTADO'
      'from CIDADE '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from CIDADE')
    ModifySQL.Strings = (
      'update CIDADE'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  DDD = :DDD,'
      '  CODESTADO = :CODESTADO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'CIDADE_GEN'
    GeneratorField.ApplyEvent = gamOnPost
    Active = True
    Left = 528
    Top = 80
    object dSetCidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CIDADE.CODIGO'
      Required = True
    end
    object dSetCidadeDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'CIDADE.DESCRICAO'
      Size = 50
    end
    object dSetCidadeDDD: TIBStringField
      FieldName = 'DDD'
      Origin = 'CIDADE.DDD'
      Size = 3
    end
    object dSetCidadeCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
      Origin = 'CIDADE.CODESTADO'
      Required = True
    end
  end
  object DSCidade: TDataSource
    DataSet = dSetCidade
    Left = 528
    Top = 152
  end
  object dSetAluno: TIBDataSet
    Database = Biblioteca
    Transaction = Trans
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ALUNO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into ALUNO'
      '  (NOME, IDADE, SEXO)'
      'values'
      '  (:NOME, :IDADE, :SEXO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  NOME,'
      '  IDADE,'
      '  SEXO'
      'from ALUNO '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from ALUNO')
    ModifySQL.Strings = (
      'update ALUNO'
      'set'
      '  NOME = :NOME,'
      '  IDADE = :IDADE,'
      '  SEXO = :SEXO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'ALUNO_GEN'
    GeneratorField.ApplyEvent = gamOnPost
    Active = True
    Left = 96
    Top = 80
    object dSetAlunoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'ALUNO.CODIGO'
      Required = True
    end
    object dSetAlunoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'ALUNO.NOME'
      Size = 50
    end
    object dSetAlunoIDADE: TIntegerField
      FieldName = 'IDADE'
      Origin = 'ALUNO.IDADE'
    end
    object dSetAlunoSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = 'ALUNO.SEXO'
      Size = 1
    end
  end
  object DSAluno: TDataSource
    DataSet = dSetAluno
    Left = 96
    Top = 152
  end
end
