-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Noetherian.Variant163af48d4d947d381594acdf892d1fc5e88ab2d907fcf18180b163285c95086b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"163af48d4d947d381594acdf892d1fc5e88ab2d907fcf18180b163285c95086b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Noetherian.Variant163af48d4d947d381594acdf892d1fc5e88ab2d907fcf18180b163285c95086b","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"163af48d4d947d381594acdf892d1fc5e88ab2d907fcf18180b163285c95086b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Noetherian/UniqueFactorizationDomain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Aaron Anderson
-/
import Mathlib.RingTheory.Noetherian.Defs
import Mathlib.RingTheory.UniqueFactorizationDomain.Ideal
/-!
# Noetherian domains have unique factorization

## Main results

# IsNoetherianRing.wfDvdMonoid
-/


namespace GRWTSK.Algebra.Noetherian.Variant163af48d4d947d381594acdf892d1fc5e88ab2d907fcf18180b163285c95086b

variable {R : Type*} [CommSemiring R] [IsDomain R]

-- see Note [lower instance priority]
instance (priority := 100) IsNoetherianRing.wfDvdMonoid [h : IsNoetherianRing R] :
    WfDvdMonoid R :=
  WfDvdMonoid.of_setOf_isPrincipal_wellFoundedOn_gt h.wf.wellFoundedOn
