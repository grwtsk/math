-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Types.Variantb92d2ce7d77f8c58caf47e644196a484e178dc63e012ebd895c9b43da129a319","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b92d2ce7d77f8c58caf47e644196a484e178dc63e012ebd895c9b43da129a319","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Types.Variantb92d2ce7d77f8c58caf47e644196a484e178dc63e012ebd895c9b43da129a319","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b92d2ce7d77f8c58caf47e644196a484e178dc63e012ebd895c9b43da129a319","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/AC.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.AC.Types
public import Lean.Meta.Tactic.Grind.AC.Util
public import Lean.Meta.Tactic.Grind.AC.Var
public import Lean.Meta.Tactic.Grind.AC.Internalize
public import Lean.Meta.Tactic.Grind.AC.Eq
public import Lean.Meta.Tactic.Grind.AC.Seq
public import Lean.Meta.Tactic.Grind.AC.Proof
public import Lean.Meta.Tactic.Grind.AC.DenoteExpr
public import Lean.Meta.Tactic.Grind.AC.ToExpr
public import Lean.Meta.Tactic.Grind.AC.VarRename
public import Lean.Meta.Tactic.Grind.AC.PP
public import Lean.Meta.Tactic.Grind.AC.Inv
public import Lean.Meta.Tactic.Grind.AC.Action

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Types.Variantb92d2ce7d77f8c58caf47e644196a484e178dc63e012ebd895c9b43da129a319

public section
namespace Lean.Meta.Grind.AC
builtin_initialize registerTraceClass `grind.ac
builtin_initialize registerTraceClass `grind.ac.assert
builtin_initialize registerTraceClass `grind.ac.internalize
builtin_initialize registerTraceClass `grind.ac.basis

builtin_initialize registerTraceClass `grind.debug.ac.op
builtin_initialize registerTraceClass `grind.debug.ac.simp
builtin_initialize registerTraceClass `grind.debug.ac.check
builtin_initialize registerTraceClass `grind.debug.ac.queue
builtin_initialize registerTraceClass `grind.debug.ac.superpose
builtin_initialize registerTraceClass `grind.debug.ac.eq

builtin_initialize
  acExt.setMethods
    (internalize := AC.internalize)
    (newEq       := AC.processNewEq)
    (newDiseq    := AC.processNewDiseq)
    (action      := Action.ac)
    (check       := AC.check')
    (checkInv    := AC.checkInvariants)

end Lean.Meta.Grind.AC
