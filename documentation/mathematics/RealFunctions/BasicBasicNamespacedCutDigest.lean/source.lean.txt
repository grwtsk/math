-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.CutDigest.Variante03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.CutDigest.Variante03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"e03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/RHIsolation/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Complex.Basic
import Mathlib.Data.Finset.Card

/-!
# RH-isolation identities and finite intervals

Identifiers in this namespace name immutable analytic or spectral evidence.
They do not assert that the named evidence has been accepted.
-/


namespace GRWTSK.Analysis.CutDigest.Variante03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e

namespace Mathematics.RHIsolation

structure CutDigest where
  value : Nat
deriving DecidableEq, Ord, Repr

structure CellDigest where
  value : Nat
deriving DecidableEq, Ord, Repr

structure CertificateDigest where
  value : Nat
deriving DecidableEq, Ord, Repr

structure AnalyticCellId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure RefinementId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure ZeroLineageId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure SpectralCutId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure SpectralCandidateId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure AssumptionId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure PriorityKey where
  primary : Nat
  canonical : Nat
deriving DecidableEq, Ord, Repr

structure RealInterval where
  lower : ℝ
  upper : ℝ
  ordered : lower ≤ upper

def RealInterval.Contains
    (interval : RealInterval)
    (value : ℝ) : Prop :=
  interval.lower ≤ value ∧ value ≤ interval.upper

structure ComplexInterval where
  carrier : Set ℂ

def ComplexInterval.Contains
    (interval : ComplexInterval)
    (value : ℂ) : Prop :=
  value ∈ interval.carrier

end Mathematics.RHIsolation
