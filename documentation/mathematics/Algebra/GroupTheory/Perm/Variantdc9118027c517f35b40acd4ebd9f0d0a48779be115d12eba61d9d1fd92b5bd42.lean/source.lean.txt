-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Concrete.Variant5b5d91fd91378aa1eccc6514ad781d342cafbd80b0e7fab5b72d1cc7ba0de549","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5b5d91fd91378aa1eccc6514ad781d342cafbd80b0e7fab5b72d1cc7ba0de549","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Concrete.Variant5b5d91fd91378aa1eccc6514ad781d342cafbd80b0e7fab5b72d1cc7ba0de549","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"5b5d91fd91378aa1eccc6514ad781d342cafbd80b0e7fab5b72d1cc7ba0de549","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Perm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

import Mathlib.GroupTheory.Perm.Cycle.Concrete
import Mathlib.Tactic.DeriveFintype


namespace GRWTSK.Algebra.GroupTheory.Concrete.Variant5b5d91fd91378aa1eccc6514ad781d342cafbd80b0e7fab5b72d1cc7ba0de549

open Equiv

#guard with_decl_name% ex₁ unsafe (reprStr (1 : Perm (Fin 4))) == "1"
#guard with_decl_name% ex₂ unsafe (reprStr (c[0, 1] : Perm (Fin 4))) == "c[0, 1]"
#guard with_decl_name% ex₃
  unsafe (reprStr (c[0, 1] * c[2, 3] : Perm (Fin 4))) == "c[0, 1] * c[2, 3]"
#guard with_decl_name% ex₄
  unsafe (reprPrec (c[0, 1] * c[2, 3] : Perm (Fin 4)) 70).pretty == "(c[0, 1] * c[2, 3])"
#guard with_decl_name% ex₅
  unsafe (reprPrec (c[0, 1] * c[1, 2] : Perm (Fin 4)) 70).pretty == "c[0, 1, 2]"
