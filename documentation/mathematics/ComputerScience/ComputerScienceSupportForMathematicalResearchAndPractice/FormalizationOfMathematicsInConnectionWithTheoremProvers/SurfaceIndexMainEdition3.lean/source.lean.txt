import Lean
import Surface
import Surface.Core.Classification

open Lean

namespace SurfaceIndex

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

def jsonStrings (values : List String) : String :=
  "[" ++ String.intercalate "," (values.map jsonString) ++ "]"

def constantKind : ConstantInfo → String
  | .axiomInfo _ => "external_axiom"
  | .defnInfo _ => "definition"
  | .thmInfo _ => "theorem"
  | .opaqueInfo _ => "opaque"
  | .quotInfo _ => "quotient"
  | .inductInfo _ => "inductive"
  | .ctorInfo _ => "constructor"
  | .recInfo _ => "recursor"

def declarationModule (env : Environment) (declarationName : Name) : Name :=
  match env.getModuleIdxFor? declarationName with
  | none => env.mainModule
  | some idx => env.header.moduleNames[idx.toNat]!

def environmentFingerprint (env : Environment) : Digest :=
  digestString <| String.intercalate "\n" <|
    env.header.moduleNames.toList.map Name.toString

def classificationTags (env : Environment) (name : Name) : List String :=
  let adapter :=
    if Surface.Core.surfaceAdapterAttr.hasTag env name then ["surface_adapter"] else []
  let novel :=
    if Surface.Core.surfaceNovelAttr.hasTag env name then ["surface_novel"] else []
  let candidate :=
    if Surface.Core.surfaceCandidateAttr.hasTag env name then ["surface_candidate"] else []
  let published :=
    if Surface.Core.surfacePublishedAttr.hasTag env name then ["surface_published"] else []
  let certificate :=
    if Surface.Core.surfaceCertificateAttr.hasTag env name then ["surface_certificate"] else []
  adapter ++ novel ++ candidate ++ published ++ certificate

def declarationJson (env : Environment) (info : ConstantInfo) : String :=
  let name := info.name
  let typeText := toString info.type
  let proofStatus :=
    if info.isTheorem then "kernel_checked_theorem"
    else if info.isAxiom then "external_axiom"
    else "not_a_theorem"
  "{\"name\":" ++ jsonString name.toString ++
    ",\"module\":" ++ jsonString (declarationModule env name).toString ++
    ",\"kind\":" ++ jsonString (constantKind info) ++
    ",\"proof_status\":" ++ jsonString proofStatus ++
    ",\"type_hash\":" ++ jsonString (toString (digestString typeText)) ++
    ",\"classifications\":" ++ jsonStrings (classificationTags env name) ++ "}"

def canonicalDeclarations (env : Environment) : List ConstantInfo :=
  env.constants.toList
    |>.map Prod.snd
    |>.filter (fun info => info.name.toString.startsWith "Surface.")
    |>.mergeSort (fun a b => Name.quickLt a.name b.name)

def indexJson (env : Environment) : String :=
  let declarations := canonicalDeclarations env
  "{\"schema\":\"surface.environment-index.v1\"" ++
    ",\"entry_module\":\"Surface\"" ++
    ",\"environment_fingerprint\":" ++
      jsonString (toString (environmentFingerprint env)) ++
    ",\"classification_attributes\":[\"surface_adapter\",\"surface_novel\",\"surface_candidate\",\"surface_published\",\"surface_certificate\"]" ++
    ",\"declaration_count\":" ++ toString declarations.length ++
    ",\"declarations\":[" ++
      String.intercalate "," (declarations.map (declarationJson env)) ++ "]}"

def main (args : List String) : IO UInt32 := do
  if !args.isEmpty then
    IO.eprintln "usage: surface_index"
    return 64
  initSearchPath (← findSysroot) [".lake/build/lib/lean"]
  let env ← importModules #[{ module := `Surface }] {}
  IO.println (indexJson env)
  pure 0

end SurfaceIndex

def main (args : List String) : IO UInt32 :=
  SurfaceIndex.main args
