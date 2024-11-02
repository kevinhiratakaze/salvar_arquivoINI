program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  IniFiles;

var
  IniFile: TIniFile;

begin
  IniFile := TIniFile.Create
    ('C:\Users\User\Desktop\Teste\ArquivoTeste.ini');
  try
    try
      IniFile.WriteString('Se��o', 'ChaveString', 'Teste');
      IniFile.WriteInteger('Se��o', 'ChaveInteiro', 42);

    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    IniFile.Free;
  end;

end.