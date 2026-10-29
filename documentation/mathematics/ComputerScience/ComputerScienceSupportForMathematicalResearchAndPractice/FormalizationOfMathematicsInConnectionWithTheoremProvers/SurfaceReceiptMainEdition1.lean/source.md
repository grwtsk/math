# Surface Receipt Main Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b844a654a1ea2dace3698f8e0fb93050523dd5aa` · SHA-256 `163e14fad4f2b4ca83f770844a39395dc40fb8d17bc25e706e9fe583e1ffdbfd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean
import Lean.Util.CollectAxioms
import Surface

open Lean

namespace SurfaceReceipt

open Surface.Core

def jsonEscapeChar : Char → String
  | '"' => "\\\""
  | '\\' => "\\\\"
  | '\n' => "\\n"
  | '\r' => "\\r"
  | '\t' => "\\t"
  | c => String.singleton c

def jsonString (value : String) : String :=
  "\"" ++ value.foldl (fun acc c => acc ++ jsonEscapeChar c) "" ++ "\""

def jsonNames (values : List Name) : String :=
  "[" ++ String.intercalate "," (values.map fun n => jsonString n.toString) ++ "]"

def positionJson (position : Position) : String :=
  "{\"line\":" ++ toString position.line ++
    ",\"column\":" ++ toString position.column ++ "}"

def declarationRangesJson : Option DeclarationRanges → String
  | none => "null"
  | some ranges =>
      "{\"start\":" ++ positionJson ranges.range.pos ++
        ",\"end\":" ++ positionJson ranges.range.endPos ++
        ",\"selectionStart\":" ++ positionJson ranges.selectionRange.pos ++
        ",\"selectionEnd\":" ++ positionJson ranges.selectionRange.endPos ++ "}"

def nameFromDottedString (value : String) : Name :=
  value.splitOn "." |>.foldl (fun acc part => Name.str acc part) Name.anonymous

def declarationModule (env : Environment) (declarationName : Name) : Name :=
  match env.getModuleIdxFor? declarationName with
  | none => env.mainModule
  | some idx => env.header.moduleNames[idx.toNat]!

def environmentFingerprint (env : Environment) : Digest :=
  let modules := env.header.moduleNames.toList.map Name.toString
  digestString <| String.intercalate "\n" modules

def receiptJson
    (env : Environment)
    (declarationName : Name)
    (normalizedType : String)
    (axioms : List Name)
    (ranges : Option DeclarationRanges) : String :=
  let typeHash := digestString normalizedType
  let moduleName := declarationModule env declarationName
  let body :=
    "{\"schema\":" ++ jsonString kernelReceiptSchema ++
    ",\"declaration_name\":" ++ jsonString declarationName.toString ++
    ",\"normalized_type\":" ++ jsonString normalizedType ++
    ",\"declaration_range\":" ++ declarationRangesJson ranges ++
    ",\"type_hash\":" ++ jsonString (toString typeHash) ++
    ",\"statement_hash\":" ++ jsonString (toString typeHash) ++
    ",\"module\":" ++ jsonString moduleName.toString ++
    ",\"axiom_closure\":" ++ jsonNames axioms ++
    ",\"environment_fingerprint\":" ++
      jsonString (toString (environmentFingerprint env)) ++
    ",\"hash_algorithm\":\"surface-string-digest-noncryptographic.v1\""
  let payload := body ++ "}"
  let receiptHash := digestString payload
  body ++ ",\"receipt_hash\":" ++ jsonString (toString receiptHash) ++ "}"

def emitReceipt (declaration : String) : IO UInt32 := do
  initSearchPath (← findSysroot) [".lake/build/lib/lean"]
  let env ← importModules #[{ module := `Surface }] {}
  let declarationName := nameFromDottedString declaration
  match env.find? declarationName with
  | none =>
      IO.eprintln <| "surface_receipt: declaration not found: " ++ declaration
      pure 2
  | some info =>
      unless info.isTheorem do
        IO.eprintln <| "surface_receipt: declaration is not a theorem: " ++ declaration
        return 3
      let action : CoreM (String × Array Name × Option DeclarationRanges) := do
        let normalizedType ← (do
          return toString (← Meta.ppExpr info.type)).run'
        let axioms ← Lean.collectAxioms declarationName
        let ranges ← Lean.findDeclarationRanges? declarationName
        pure (normalizedType, axioms, ranges)
      let (normalizedType, axioms, ranges) ← action.toIO'
        { fileName := "<surface_receipt>", fileMap := default }
        { env := env }
      IO.println <| receiptJson env declarationName normalizedType axioms.toList ranges
      pure 0

def main (args : List String) : IO UInt32 :=
  match args with
  | [declaration] => emitReceipt declaration
  | _ => do
      IO.eprintln "usage: surface_receipt <fully.qualified.theorem>"
      pure 64

end SurfaceReceipt

def main (args : List String) : IO UInt32 :=
  SurfaceReceipt.main args
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=80ba4f1e1eec529bc0dc7c52b50bfd4b34f59590aa238e8903dec77665c4436f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Variant163e14fad4f2b4ca83f770844a39395dc40fb8d17bc25e706e9fe583e1ffdbfd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
