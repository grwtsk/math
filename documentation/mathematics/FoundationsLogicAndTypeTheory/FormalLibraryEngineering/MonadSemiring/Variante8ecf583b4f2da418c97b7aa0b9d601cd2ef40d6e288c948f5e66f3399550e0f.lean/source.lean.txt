-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadSemiring.Variant30b633a1185161d7be81ff4dc0d3dbe09f73266b3af45b94edcb8ab3fe892938","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"30b633a1185161d7be81ff4dc0d3dbe09f73266b3af45b94edcb8ab3fe892938","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MonadSemiring.Variant30b633a1185161d7be81ff4dc0d3dbe09f73266b3af45b94edcb8ab3fe892938","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"30b633a1185161d7be81ff4dc0d3dbe09f73266b3af45b94edcb8ab3fe892938","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/Arith/MonadSemiring.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.Arith.MonadCanon

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadSemiring.Variant30b633a1185161d7be81ff4dc0d3dbe09f73266b3af45b94edcb8ab3fe892938

public section
namespace Lean.Meta.Sym.Arith

class MonadSemiring (m : Type → Type) where
  getSemiring : m Semiring
  modifySemiring : (Semiring → Semiring) → m Unit

export MonadSemiring (getSemiring modifySemiring)

@[always_inline]
instance (m n) [MonadLift m n] [MonadSemiring m] : MonadSemiring n where
  getSemiring    := liftM (getSemiring : m Semiring)
  modifySemiring f := liftM (modifySemiring f : m Unit)

class MonadCommSemiring (m : Type → Type) where
  getCommSemiring : m CommSemiring
  modifyCommSemiring : (CommSemiring → CommSemiring) → m Unit

export MonadCommSemiring (getCommSemiring modifyCommSemiring)

@[always_inline]
instance (m n) [MonadLift m n] [MonadCommSemiring m] : MonadCommSemiring n where
  getCommSemiring      := liftM (getCommSemiring : m CommSemiring)
  modifyCommSemiring f := liftM (modifyCommSemiring f : m Unit)

@[always_inline]
instance (m) [Monad m] [MonadCommSemiring m] : MonadSemiring m where
  getSemiring := return (← getCommSemiring).toSemiring
  modifySemiring f := modifyCommSemiring fun s => { s with toSemiring := f s.toSemiring }

end Lean.Meta.Sym.Arith
