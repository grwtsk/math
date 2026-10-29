-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsHomeomorphicTrivialFiberBundle.Variantfba966771b7a8f1509049c31017c8fa7e6c60bb14cd9ab40b89d2366b2799f5d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fba966771b7a8f1509049c31017c8fa7e6c60bb14cd9ab40b89d2366b2799f5d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsHomeomorphicTrivialFiberBundle.Variantfba966771b7a8f1509049c31017c8fa7e6c60bb14cd9ab40b89d2366b2799f5d","mathematical_subject":"Topology.GeneralTopology","original_sha256":"fba966771b7a8f1509049c31017c8fa7e6c60bb14cd9ab40b89d2366b2799f5d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/FiberBundle/IsHomeomorphicTrivialBundle.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
import Mathlib.Topology.Constructions.SumProd

/-!
# Maps equivariantly-homeomorphic to projection in a product

This file contains the definition `IsHomeomorphicTrivialFiberBundle F p`, a Prop saying that a
map `p : Z → B` between topological spaces is a "trivial fiber bundle" in the sense that there
exists a homeomorphism `h : Z ≃ₜ B × F` such that `proj x = (h x).1`.  This is an abstraction which
is occasionally convenient in showing that a map is open, a quotient map, etc.

This material was formerly linked to the main definition of fiber bundles, but after a series of
refactors, there is no longer a direct connection.
-/


namespace GRWTSK.Topology.GeneralTopology.IsHomeomorphicTrivialFiberBundle.Variantfba966771b7a8f1509049c31017c8fa7e6c60bb14cd9ab40b89d2366b2799f5d

open Topology

variable {B : Type*} (F : Type*) {Z : Type*} [TopologicalSpace B] [TopologicalSpace F]
  [TopologicalSpace Z]

/-- A trivial fiber bundle with fiber `F` over a base `B` is a space `Z`
projecting on `B` for which there exists a homeomorphism to `B × F` that sends `proj`
to `Prod.fst`. -/
def IsHomeomorphicTrivialFiberBundle (proj : Z → B) : Prop :=
  ∃ e : Z ≃ₜ B × F, ∀ x, (e x).1 = proj x

namespace IsHomeomorphicTrivialFiberBundle

variable {F} {proj : Z → B}

protected theorem proj_eq (h : IsHomeomorphicTrivialFiberBundle F proj) :
    ∃ e : Z ≃ₜ B × F, proj = Prod.fst ∘ e :=
  ⟨h.choose, (funext h.choose_spec).symm⟩

/-- The projection from a trivial fiber bundle to its base is surjective. -/
protected theorem surjective_proj [Nonempty F] (h : IsHomeomorphicTrivialFiberBundle F proj) :
    Function.Surjective proj := by
  obtain ⟨e, rfl⟩ := h.proj_eq
  exact Prod.fst_surjective.comp e.surjective

/-- The projection from a trivial fiber bundle to its base is continuous. -/
protected theorem continuous_proj (h : IsHomeomorphicTrivialFiberBundle F proj) :
    Continuous proj := by
  obtain ⟨e, rfl⟩ := h.proj_eq; exact continuous_fst.comp e.continuous

/-- The projection from a trivial fiber bundle to its base is open. -/
protected theorem isOpenMap_proj (h : IsHomeomorphicTrivialFiberBundle F proj) :
    IsOpenMap proj := by
  obtain ⟨e, rfl⟩ := h.proj_eq; exact isOpenMap_fst.comp e.isOpenMap

/-- The projection from a trivial fiber bundle to its base is open. -/
protected theorem isQuotientMap_proj [Nonempty F] (h : IsHomeomorphicTrivialFiberBundle F proj) :
    IsQuotientMap proj :=
  h.isOpenMap_proj.isQuotientMap h.continuous_proj h.surjective_proj

@[deprecated (since := "2024-10-22")]
alias quotientMap_proj := IsHomeomorphicTrivialFiberBundle.isQuotientMap_proj

end IsHomeomorphicTrivialFiberBundle

/-- The first projection in a product is a trivial fiber bundle. -/
theorem isHomeomorphicTrivialFiberBundle_fst :
    IsHomeomorphicTrivialFiberBundle F (Prod.fst : B × F → B) :=
  ⟨Homeomorph.refl _, fun _x => rfl⟩

/-- The second projection in a product is a trivial fiber bundle. -/
theorem isHomeomorphicTrivialFiberBundle_snd :
    IsHomeomorphicTrivialFiberBundle F (Prod.snd : F × B → B) :=
  ⟨Homeomorph.prodComm _ _, fun _x => rfl⟩
