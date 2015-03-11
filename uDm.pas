unit uDm;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBDatabase;

type
  TDM = class(TDataModule)
    Biblioteca: TIBDatabase;
    Trans: TIBTransaction;
    dSetAutor: TIBDataSet;
    dSetEditora: TIBDataSet;
    dSetLivro: TIBDataSet;
    DSAutor: TDataSource;
    DSEditora: TDataSource;
    DSLivro: TDataSource;
    dSetAutorCODIGO: TIntegerField;
    dSetAutorNOME: TIBStringField;
    dSetAutorIDADE: TIntegerField;
    dSetAutorSEXO: TIBStringField;
    dSetEditoraCODIGO: TIntegerField;
    dSetEditoraRAZAOSOCIAL: TIBStringField;
    dSetEditoraFANTASIA: TIBStringField;
    dSetEditoraCNPJ: TIBStringField;
    dSetLivroCODIGO: TIntegerField;
    dSetLivroTITULO: TIBStringField;
    dSetLivroCODAUTOR: TIntegerField;
    dSetLivroCODEDITORA: TIntegerField;
    dSetPais: TIBDataSet;
    DSPais: TDataSource;
    dSetPaisCODIGO: TIntegerField;
    dSetPaisDESCRICAO: TIBStringField;
    dSetPaisDDI: TIBStringField;
    dSetEstado: TIBDataSet;
    DSEstado: TDataSource;
    dSetEstadoCODIGO: TIntegerField;
    dSetEstadoDESCRICAO: TIBStringField;
    dSetEstadoSIGLA: TIBStringField;
    dSetEstadoCODPAIS: TIntegerField;
    dSetCidade: TIBDataSet;
    dSetCidadeCODIGO: TIntegerField;
    dSetCidadeDESCRICAO: TIBStringField;
    dSetCidadeDDD: TIBStringField;
    dSetCidadeCODESTADO: TIntegerField;
    DSCidade: TDataSource;
    dSetAluno: TIBDataSet;
    DSAluno: TDataSource;
    dSetAlunoCODIGO: TIntegerField;
    dSetAlunoNOME: TIBStringField;
    dSetAlunoIDADE: TIntegerField;
    dSetAlunoSEXO: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
