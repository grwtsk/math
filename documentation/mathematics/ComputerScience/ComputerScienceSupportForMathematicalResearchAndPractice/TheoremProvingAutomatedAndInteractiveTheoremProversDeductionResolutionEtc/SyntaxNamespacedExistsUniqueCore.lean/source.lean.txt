-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RawCompressedString.Variant65b9cbe73e4fb0bd4b64af31e7cf350693b510fd2d3cfd598e3c7a7d257ea457","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"65b9cbe73e4fb0bd4b64af31e7cf350693b510fd2d3cfd598e3c7a7d257ea457","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RawCompressedString.Variant65b9cbe73e4fb0bd4b64af31e7cf350693b510fd2d3cfd598e3c7a7d257ea457","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"65b9cbe73e4fb0bd4b64af31e7cf350693b510fd2d3cfd598e3c7a7d257ea457","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Compression/Syntax.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Compression.Core


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RawCompressedString.Variant65b9cbe73e4fb0bd4b64af31e7cf350693b510fd2d3cfd598e3c7a7d257ea457

set_option autoImplicit false

namespace Think.Compression.Syntax

def ExistsUniqueCore {β : Type} (P : β → Prop) : Prop :=
  ∃ witness : β, P witness ∧ ∀ other : β, P other → other = witness

syntax "∃! " ident " : " term ", " term : term

macro_rules
  | `(∃! $x:ident : $ty, $p) =>
      `(ExistsUniqueCore (fun $x : $ty => $p))

inductive RawCompressedString (α : Type) : Type
  | nil : RawCompressedString α
  | atom : α → RawCompressedString α
  | concat :
      RawCompressedString α →
      RawCompressedString α →
      RawCompressedString α
  | macroPlaceholder :
      Nat →
      List (RawCompressedString α) →
      RawCompressedString α
deriving Repr

def BoundaryCompatible {α : Type}
    (_left _right : RawCompressedString α) : Prop :=
  True

def MacroPlaceholderAdmissible {α : Type}
    (_label : Nat) (_parts : List (RawCompressedString α)) : Prop :=
  True

def MacroPlaceholderCompressionAuthority {α : Type}
    (_label : Nat) (_parts : List (RawCompressedString α)) : Prop :=
  False

theorem macroPlaceholder_has_no_compression_authority {α : Type}
    (label : Nat) (parts : List (RawCompressedString α)) :
    ¬ MacroPlaceholderCompressionAuthority label parts := by
  intro h
  exact h

inductive WellFormed {α : Type} : RawCompressedString α → Prop
  | nil :
      WellFormed .nil
  | atom :
      ∀ x, WellFormed (.atom x)
  | concat :
      ∀ {left right},
        WellFormed left →
        WellFormed right →
        BoundaryCompatible left right →
        WellFormed (.concat left right)
  | macroPlaceholder :
      ∀ {label parts},
        MacroPlaceholderAdmissible label parts →
        (∀ part, part ∈ parts → WellFormed part) →
        WellFormed (.macroPlaceholder label parts)

theorem wellFormed_concat {α : Type}
    {left right : RawCompressedString α}
    (hleft : WellFormed left)
    (hright : WellFormed right)
    (hboundary : BoundaryCompatible left right) :
    WellFormed (.concat left right) :=
  WellFormed.concat hleft hright hboundary

end Think.Compression.Syntax
