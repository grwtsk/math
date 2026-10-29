-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.FrontierCoordinate.Variant5f565b31f945f5b9dfddc87e07cddc684105a195c09b821f1056df01fb76d1be","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5f565b31f945f5b9dfddc87e07cddc684105a195c09b821f1056df01fb76d1be","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.FrontierCoordinate.Variant5f565b31f945f5b9dfddc87e07cddc684105a195c09b821f1056df01fb76d1be","mathematical_subject":"Algebra.Groups","original_sha256":"5f565b31f945f5b9dfddc87e07cddc684105a195c09b821f1056df01fb76d1be","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/AbelReynolds/Realization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.AbelReynolds.Tally
import Mathlib.Data.ZMod.Basic
import Mathlib.Data.Real.Basic

/-!
# Separate tally realizations

Modular, Archimedean, group-phase, and frontier-origin realizations are
siblings with different codomains.  Equality in one carrier never creates a
transport into another.
-/


namespace GRWTSK.Algebra.GroupTheory.FrontierCoordinate.Variant5f565b31f945f5b9dfddc87e07cddc684105a195c09b821f1056df01fb76d1be

namespace Mathematics.AbelReynolds

def modularRealization (modulus : Nat) (tally : Tally) : ZMod modulus :=
  tally.count

def realRealization (tally : Tally) : ℝ :=
  (tally.count : ℝ)

def groupRealization
    {Group : Type*}
    [Monoid Group]
    (generator : Group)
    (tally : Tally) : Group :=
  generator ^ tally.count

structure FrontierCoordinate (modulus dimension : Nat) where
  entries : Fin dimension → ZMod modulus

@[simp] theorem modularRealization_ofNat
    (modulus count : Nat) :
    modularRealization modulus (Tally.ofNat count) =
      (count : ZMod modulus) :=
  rfl

@[simp] theorem realRealization_ofNat (count : Nat) :
    realRealization (Tally.ofNat count) = (count : ℝ) :=
  rfl

@[simp] theorem groupRealization_ofNat
    {Group : Type*}
    [Monoid Group]
    (generator : Group)
    (count : Nat) :
    groupRealization generator (Tally.ofNat count) =
      generator ^ count :=
  rfl

example : (Tally.ofNat 0).count = 0 := rfl
example : (Tally.ofNat 1).count = 1 := rfl
example : (Tally.ofNat 2).count = 2 := rfl
example : (Tally.ofNat 3).count = 3 := rfl
example : (Tally.ofNat 4).count = 4 := rfl
example : (Tally.ofNat 5).count = 5 := rfl

end Mathematics.AbelReynolds
