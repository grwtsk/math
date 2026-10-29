-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RawContext.Variant7e910c4c86074af3778b670804dfc8ad02133db6d5dda11f0a81a92831c12af2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7e910c4c86074af3778b670804dfc8ad02133db6d5dda11f0a81a92831c12af2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RawContext.Variant7e910c4c86074af3778b670804dfc8ad02133db6d5dda11f0a81a92831c12af2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7e910c4c86074af3778b670804dfc8ad02133db6d5dda11f0a81a92831c12af2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/tools/LeanSource/CommandState.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Lean
import all Lean


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RawContext.Variant7e910c4c86074af3778b670804dfc8ad02133db6d5dda11f0a81a92831c12af2

public section

/-! # Raw Lean command-state snapshots -/

open Lean

namespace MathematicsLeanSource

structure RawContext where
  scopeHeaders : Array String
  currentNamespace : String
  openDeclarations : Array String
  options : Array String
  universeNames : Array String
  variableBinders : Array String
  includedVariables : Array String
  omittedVariables : Array String
  attributes : Array String
  isNoncomputable : Bool
  autoImplicit : Bool
  deriving ToJson

private def sorted (values : Array String) : Array String :=
  values.qsort (· < ·)

private def optionRecords (options : Options) : Array String := Id.run do
  let mut records := #[]
  for (name, value) in options do
    records := records.push s!"{name}={value}"
  return sorted records

def contextOf (state : Elab.Command.State) : RawContext :=
  let scope := state.scopes.head!
  {
    scopeHeaders := state.scopes.reverse.toArray.map (·.header)
    currentNamespace := scope.currNamespace.toString
    openDeclarations := sorted (scope.openDecls.toArray.map toString)
    options := optionRecords scope.opts
    universeNames := scope.levelNames.toArray.map Name.toString
    variableBinders := scope.varDecls.map fun binder => binder.raw.reprint.getD ""
    includedVariables := scope.includedVars.toArray.map Name.toString
    omittedVariables := scope.omittedVars.toArray.map Name.toString
    attributes := scope.attrs.toArray.map fun attr => attr.raw.reprint.getD ""
    isNoncomputable := scope.isNoncomputable
    autoImplicit := scope.opts.get `autoImplicit true
  }

structure RawRange where
  start : Nat
  stop : Nat
  deriving ToJson

structure RawPosition where
  line : Nat
  column : Nat
  deriving ToJson

structure RawCommand where
  ordinal : Nat
  byteRange : RawRange
  syntaxRange : RawRange
  trailingRange : RawRange
  startPosition : RawPosition
  stopPosition : RawPosition
  syntaxKind : String
  canonicalSyntax : String
  exactSource : String
  contextBefore : RawContext
  contextAfter : RawContext
  declarationsAdded : Array String
  localConstantCountBefore : Nat
  localConstantCountAfter : Nat
  providerKinds : Array String
  diagnosticCountBefore : Nat
  diagnosticCountAfter : Nat
  deriving ToJson

structure RawDeclarationRange where
  declaration : String
  range : RawRange
  selectionRange : RawRange
  deriving ToJson

structure RawFileTrace where
  moduleName : String
  file : String
  headerRange : RawRange
  imports : Array String
  commands : Array RawCommand
  declarationRanges : Array RawDeclarationRange
  diagnostics : Array String
  authority : String := "lean-v4.32.0-frontend"
  deriving ToJson

structure RawTrace where
  schemaVersion : Nat := 1
  tracerVersion : String := "mathematics-lean-source-trace/1"
  leanVersion : String
  files : Array RawFileTrace
  deriving ToJson

end MathematicsLeanSource
