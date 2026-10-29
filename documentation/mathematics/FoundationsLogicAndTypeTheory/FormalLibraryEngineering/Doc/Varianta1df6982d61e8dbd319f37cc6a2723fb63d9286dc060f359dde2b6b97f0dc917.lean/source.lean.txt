-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecommendedSpelling.Variant403f13d42f538fd8d4c4762e0622e264bb97296a082cb5ef425f6e0c8d8163ad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"403f13d42f538fd8d4c4762e0622e264bb97296a082cb5ef425f6e0c8d8163ad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RecommendedSpelling.Variant403f13d42f538fd8d4c4762e0622e264bb97296a082cb5ef425f6e0c8d8163ad","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"403f13d42f538fd8d4c4762e0622e264bb97296a082cb5ef425f6e0c8d8163ad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Parser/Term/Doc.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Lean.Parser.Extension


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecommendedSpelling.Variant403f13d42f538fd8d4c4762e0622e264bb97296a082cb5ef425f6e0c8d8163ad

public section

/-! Environment extension to register preferred spellings of notations in identifiers. -/

set_option linter.missingDocs true

namespace Lean.Parser.Term.Doc

/-- Information about how to spell a certain notation for an identifier in declaration names. -/
structure RecommendedSpelling where
  /-- The notation in question. -/
  «notation» : String
  /-- The recommended spelling of the notation in identifiers. -/
  recommendedSpelling : String
  /-- Additional information. -/
  additionalInformation? : Option String

/--
Recommended spellings for notations, stored in a way so that the recommended spellings for a given
declaration are easily accessible.
-/
builtin_initialize recommendedSpellingByNameExt
    : PersistentEnvExtension (Name × Array RecommendedSpelling) (RecommendedSpelling × Array Name)
        (NameMap (Array RecommendedSpelling)) ←
  registerPersistentEnvExtension {
    mkInitial := pure {},
    addImportedFn := fun _ => pure {},
    addEntryFn := fun es (rec, xs) => xs.foldl (init := es) fun es x => es.insert x (es.getD x #[] |>.push rec),
    exportEntriesFn := fun es =>
      es.foldl (fun a src tgt => a.push (src, tgt)) #[] |>.qsort (Name.quickLt ·.1 ·.1)
  }

/-- Recommended spellings for notations, stored in such a way that it is easy to generate a table
containing every recommended spelling exactly once. -/
builtin_initialize recommendedSpellingExt
    : PersistentEnvExtension RecommendedSpelling RecommendedSpelling (Array RecommendedSpelling) ←
  registerPersistentEnvExtension {
    mkInitial := pure {},
    addImportedFn := fun _ => pure {},
    addEntryFn := Array.push,
    exportEntriesFn := id
  }

/-- Adds a recommended spelling to the environment. -/
def addRecommendedSpelling (env : Environment) (rec : RecommendedSpelling) (names : Array Name) : Environment :=
  let env := recommendedSpellingExt.addEntry env rec
  recommendedSpellingByNameExt.addEntry env (rec, names)

/-- Returns the recommended spellings associated with the given declaration name. -/
def getRecommendedSpellingsForName (env : Environment) (declName : Name) :
    Array RecommendedSpelling := Id.run do
  let mut spellings := #[]
  for modArr in recommendedSpellingByNameExt.toEnvExtension.getState env |>.importedEntries do
    if let some (_, strs) := modArr.binSearch (declName, #[]) (Name.quickLt ·.1 ·.1) then
      spellings := spellings ++ strs
  if let some strs := recommendedSpellingByNameExt.getState env |>.find? declName then
    spellings := spellings ++ strs
  return spellings

/-- Renders the recommended spellings for the given declaration into a string for appending to
the docstring. -/
def getRecommendedSpellingString (env : Environment) (declName : Name) : String := Id.run do
  let spellings := getRecommendedSpellingsForName env declName
  if spellings.size == 0 then ""
  else "\n\nConventions for notations in identifiers:\n\n" ++ String.join (spellings.toList.map bullet) |>.trimAsciiEnd |>.copy
where
  indentLine (str : String) : String :=
    (if str.all Char.isWhitespace then str else "   " ++ str) ++ "\n"
  bullet (spelling : RecommendedSpelling) : String :=
    let firstLine := s!" * The recommended spelling of `{spelling.«notation»}` in identifiers is `{spelling.recommendedSpelling}`"
    let additionalInfoLines := spelling.additionalInformation?.map (·.split '\n' |>.toStringList)
    match additionalInfoLines with
    | none | some [] => firstLine ++ ".\n\n"
    | some [l] => firstLine ++ s!" ({l.trimAsciiEnd}).\n\n"
    | some ls => firstLine ++ ".\n\n" ++ String.join (ls.map indentLine) ++ "\n\n"

end Lean.Parser.Term.Doc
