-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GeneralizedInverseSchur.Variant23b15f68bfbb7be0f88c454c1d4c09408047998fc7abbddc44b70ac05689f2a2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"23b15f68bfbb7be0f88c454c1d4c09408047998fc7abbddc44b70ac05689f2a2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GeneralizedInverseSchur.Variant23b15f68bfbb7be0f88c454c1d4c09408047998fc7abbddc44b70ac05689f2a2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"23b15f68bfbb7be0f88c454c1d4c09408047998fc7abbddc44b70ac05689f2a2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/23/23b15f68bfbb7be0f88c454c1d4c09408047998fc7abbddc44b70ac05689f2a2--AtlasLintAudit3.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.GeneralizedInverseSchur
import FormalResearch.PositiveAtlas.PositiveGeometry
import FormalResearch.PositiveAtlas.OrderFourRecursiveCumulant
import FormalResearch.PositiveAtlas.PositiveFourSector
import FormalResearch.PositiveAtlas.InvertibleBlockSchur
import FormalResearch.PositiveAtlas.SingularLinearSolver
import Lean.Util.CollectAxioms

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GeneralizedInverseSchur.Variant23b15f68bfbb7be0f88c454c1d4c09408047998fc7abbddc44b70ac05689f2a2

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
run_cmd do
  let env ← getEnv
  let mods : Array Name := #[`FormalResearch.PositiveAtlas.GeneralizedInverseSchur, `FormalResearch.PositiveAtlas.PositiveGeometry, `FormalResearch.PositiveAtlas.OrderFourRecursiveCumulant, `FormalResearch.PositiveAtlas.PositiveFourSector, `FormalResearch.PositiveAtlas.InvertibleBlockSchur, `FormalResearch.PositiveAtlas.SingularLinearSolver]
  let names := env.const2ModIdx.fold (fun acc n idx =>
    if mods.contains env.allImportedModuleNames[idx]! then n :: acc else acc) []
  let present := names.filter fun n => (env.find? n).isSome
  let metadataOnly := names.filter fun n => (env.find? n).isNone
  for n in metadataOnly do
    unless (n.toString.splitOn ".").any (fun p => p.startsWith "_") do
      throwError "Missing public declaration {n}"
    logInfo m!"COMPILER_METADATA_ONLY {n}"
  for n in present.toArray.qsort Name.quickLt do
    let ci ← getConstInfo n
    logInfo m!"TYPE {n} levels {ci.levelParams}: {ci.type}"
    let axs ← collectAxioms n
    logInfo m!"AXIOMS {n}: {axs}"
    for ax in axs do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "Unexpected axiom {ax} for {n}"
  logInfo m!"AUDITED {present.length} declarations, including generated/private declarations"
