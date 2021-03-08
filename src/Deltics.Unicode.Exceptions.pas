
{$i deltics.unicode.inc}


  unit Deltics.Unicode.Exceptions;


interface

  uses
    Classes,
    SysUtils,
    Deltics.Unicode.BOM,
    Deltics.Unicode.Types;


  type
    EUnicode = class(Exception)
    public
      constructor Create(const aMessage: String; const aArgs: array of const); overload;
    end;

    EUnicodeDataloss          = class(EUnicode);
















implementation





{ EUnicode }

  constructor EUnicode.Create(const aMessage: String;
                              const aArgs: array of const);
  begin
    inherited CreateFmt(aMessage, aArgs);
  end;



{ EInvalidCodepoint }

  constructor EInvalidCodepoint.Create(const aCodepoint: Codepoint);
  begin
    inherited Create('%s is not a valid codepoint', [Unicode.Ref(aCodepoint)]);
  end;




end.