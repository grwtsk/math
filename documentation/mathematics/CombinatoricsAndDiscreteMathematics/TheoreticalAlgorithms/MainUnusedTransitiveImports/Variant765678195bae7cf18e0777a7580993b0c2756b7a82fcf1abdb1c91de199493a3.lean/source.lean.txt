-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WithImportModules.Variantd22e4084c6b68ff3a60f908a0d7ec230a005dc0a699f6aecf35a6a28ba91bc59","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d22e4084c6b68ff3a60f908a0d7ec230a005dc0a699f6aecf35a6a28ba91bc59","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.WithImportModules.Variantd22e4084c6b68ff3a60f908a0d7ec230a005dc0a699f6aecf35a6a28ba91bc59","mathematical_subject":"Computation.DataStructures","original_sha256":"d22e4084c6b68ff3a60f908a0d7ec230a005dc0a699f6aecf35a6a28ba91bc59","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/importGraph/MainUnusedTransitiveImports.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import ImportGraph.Lean.WithImportModules
public meta import ImportGraph.Imports.Unused


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WithImportModules.Variantd22e4084c6b68ff3a60f908a0d7ec230a005dc0a699f6aecf35a6a28ba91bc59

open Lean

/--
`lake exe unused_transitive_imports m1 m2 ...`

For each specified module `m`, prints those `n` from the argument list which are imported, but transitively unused by `m`.
-/
public meta def main (args : List String) : IO UInt32 := do
  let (flags, args) := args.partition (fun s => s.startsWith "-")
  let mut modules := args.map (fun s => s.toName)
  Core.withImportModules modules.toArray do
    let r ← unusedTransitiveImports modules (verbose := flags.contains "-v" || flags.contains "--verbose")
    for (n, u) in r do
      IO.println s!"{n}: {u}"
    return 0
