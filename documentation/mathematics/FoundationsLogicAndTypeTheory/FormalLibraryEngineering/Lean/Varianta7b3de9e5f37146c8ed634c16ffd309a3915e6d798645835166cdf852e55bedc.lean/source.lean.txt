-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadSatisfying.Variantca52dbb334a9ab82d80c97b367842ef34960b655644e320449703a491e893e8f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca52dbb334a9ab82d80c97b367842ef34960b655644e320449703a491e893e8f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MonadSatisfying.Variantca52dbb334a9ab82d80c97b367842ef34960b655644e320449703a491e893e8f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ca52dbb334a9ab82d80c97b367842ef34960b655644e320449703a491e893e8f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Recycling/MonadSatisfying/Lean.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Batteries.Recycling.MonadSatisfying.Basic
public import Batteries.Lean.LawfulMonad
public import Lean.Elab.Command
import all Init.System.ST


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadSatisfying.Variantca52dbb334a9ab82d80c97b367842ef34960b655644e320449703a491e893e8f

@[expose] public section

/-!
# Construct `MonadSatisfying` instances for the Lean monad stack.
-/

open Lean Elab Term Tactic Command

-- Note: as of nightly-2025-10-23, after https://github.com/leanprover/lean4/pull/10625
-- these instances need to be re-implemented.

-- instance : MonadSatisfying (EIO ε) := inferInstanceAs <| MonadSatisfying (EStateM _ _)
-- instance : MonadSatisfying BaseIO := inferInstanceAs <| MonadSatisfying (EIO _)
-- instance : MonadSatisfying IO := inferInstanceAs <| MonadSatisfying (EIO _)

-- instance : MonadSatisfying (EST ε σ) := inferInstanceAs <| MonadSatisfying (EStateM _ _)

-- instance : MonadSatisfying CoreM :=
--   inferInstanceAs <| MonadSatisfying (ReaderT _ <| StateRefT' _ _ (EIO _))

-- instance : MonadSatisfying MetaM :=
--   inferInstanceAs <| MonadSatisfying (ReaderT _ <| StateRefT' _ _ CoreM)

-- instance : MonadSatisfying TermElabM :=
--   inferInstanceAs <| MonadSatisfying (ReaderT _ <| StateRefT' _ _ MetaM)

-- instance : MonadSatisfying TacticM :=
--   inferInstanceAs <| MonadSatisfying (ReaderT _ $ StateRefT' _ _ TermElabM)

-- instance : MonadSatisfying CommandElabM :=
--   inferInstanceAs <| MonadSatisfying (ReaderT _ $ StateRefT' _ _ (EIO _))
