-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.BertrandProfile.Variant6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.GeneralNumberTheory.SourceCorpus.BertrandProfile.Variant6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d","mathematical_subject":"NumberTheory.GeneralNumberTheory","original_sha256":"6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Transport/Bertrand.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.NumberTheory.Bertrand
import FCRS.Transport.Theorem


namespace GRWTSK.NumberTheory.BertrandProfile.Variant6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d

namespace FCRS.Transport

/-- Production profile for full Bertrand over natural-number inputs. -/
def bertrandProfile : IntervalProfile Nat Nat where
  version := ⟨"https://w3id.org/reflexive", "bertrand-profile", "1.0.0", "sha256:bertrand-profile-v1"⟩
  sourceTheorem := ⟨"https://w3id.org/reflexive", "bertrand-theorem", "1.0.0", "sha256:bertrand-theorem-v1"⟩
  domainVersion := ⟨"https://w3id.org/reflexive", "bertrand-domain", "1.0.0", "sha256:bertrand-domain-v1"⟩
  lowerVersion := ⟨"https://w3id.org/reflexive", "bertrand-lower", "1.0.0", "sha256:bertrand-lower-v1"⟩
  upperVersion := ⟨"https://w3id.org/reflexive", "bertrand-upper", "1.0.0", "sha256:bertrand-upper-v1"⟩
  assumptionSet := ⟨"https://w3id.org/reflexive", "bertrand-assumptions", "1.0.0", "sha256:bertrand-assumptions-v1"⟩
  orientation := .Forward
  sourceNotation := "n < q < 2*n"
  domain := fun n => 1 < n
  lower := fun n => n
  upper := fun n => 2 * n
  lowerMode := .Open
  upperMode := .Open
  witnessQualifies := Nat.Prime
  order := Nat.lt

/-- Distinct domain-restricted profile for prime source inputs. -/
def bertrandPrimeSourceProfile : IntervalProfile Nat Nat where
  version := ⟨"https://w3id.org/reflexive", "bertrand-prime-source-profile", "1.0.0", "sha256:bertrand-prime-source-profile-v1"⟩
  sourceTheorem := ⟨"https://w3id.org/reflexive", "bertrand-prime-source-corollary", "1.0.0", "sha256:bertrand-prime-source-corollary-v1"⟩
  domainVersion := ⟨"https://w3id.org/reflexive", "bertrand-prime-source-domain", "1.0.0", "sha256:bertrand-prime-source-domain-v1"⟩
  lowerVersion := ⟨"https://w3id.org/reflexive", "bertrand-prime-source-lower", "1.0.0", "sha256:bertrand-prime-source-lower-v1"⟩
  upperVersion := ⟨"https://w3id.org/reflexive", "bertrand-prime-source-upper", "1.0.0", "sha256:bertrand-prime-source-upper-v1"⟩
  assumptionSet := ⟨"https://w3id.org/reflexive", "bertrand-prime-source-assumptions", "1.0.0", "sha256:bertrand-prime-source-assumptions-v1"⟩
  orientation := .Forward
  sourceNotation := "Prime(p) ∧ 1 < p → p < q < 2*p"
  domain := fun p => Nat.Prime p ∧ 1 < p
  lower := fun p => p
  upper := fun p => 2 * p
  lowerMode := .Open
  upperMode := .Open
  witnessQualifies := Nat.Prime
  order := Nat.lt

/-- Mathlib's weak upper endpoint adapted to the strict endpoint for `1 < n`. -/
theorem bertrandProof :
    ∀ n : Nat, 1 < n →
      ∃ q : Nat, Nat.Prime q ∧ n < q ∧ q < 2 * n := by
  intro n hn
  obtain ⟨q, hPrime, hnq, hqUpper⟩ :=
    Nat.exists_prime_lt_and_le_two_mul n (by omega)
  have hqNe : q ≠ 2 * n := by
    intro hEq
    have hComposite : ¬ Nat.Prime (2 * n) :=
      Nat.not_prime_mul (by decide) (Nat.ne_of_gt hn)
    exact hComposite (hEq ▸ hPrime)
  exact ⟨q, hPrime, hnq, lt_of_le_of_ne hqUpper hqNe⟩

/-- Convert the explicit arithmetic facts to the exact profile predicate. -/
theorem bertrandAdmissible
    {n q : Nat}
    (hn : 1 < n) (hPrime : Nat.Prime q)
    (hnq : n < q) (hqUpper : q < 2 * n) :
    bertrandProfile.admissible n q := by
  change 1 < n ∧ (n < q ∧ q < 2 * n) ∧ Nat.Prime q
  exact ⟨hn, ⟨hnq, hqUpper⟩, hPrime⟩

/-- Kernel proof packaged as the dependent interval claim. -/
theorem bertrandIntervalClaim : IntervalClaim bertrandProfile := by
  intro n hn
  obtain ⟨q, hPrime, hnq, hqUpper⟩ := bertrandProof n hn
  exact ⟨q, bertrandAdmissible hn hPrime hnq hqUpper⟩

/-- Certified full theorem, separate from every application and selection. -/
def bertrandCertifiedTheorem : CertifiedIntervalTheorem bertrandProfile where
  theoremArtifact := ⟨"https://w3id.org/reflexive", "bertrand-theorem", "1.0.0", "sha256:bertrand-theorem-v1"⟩
  proofArtifact := ⟨"https://w3id.org/reflexive", "tt01-lean-proof", "1.0.0", "sha256:tt01-lean-proof-v1"⟩
  formalDeclaration := ⟨"https://w3id.org/reflexive", "FCRS.Transport.Theorems.tt01_bertrand", "1.0.0", "sha256:tt01-declaration-v1"⟩
  kernelBuildEvidence := ⟨"https://w3id.org/reflexive", "lean-kernel-build", "4.32.2", "sha256:lean-kernel-build-mathlib-905b9581"⟩
  assumptionSet := bertrandProfile.assumptionSet
  theoremArtifactExact := rfl
  assumptionSetExact := rfl
  claim := bertrandIntervalClaim

/-- Proved restriction adapter; it does not identify the two profiles. -/
def bertrandPrimeSourceRefines :
    ProfileRefines bertrandProfile bertrandPrimeSourceProfile where
  adapterArtifact := ⟨"https://w3id.org/reflexive", "bertrand-prime-source-adapter", "1.0.0", "sha256:bertrand-prime-source-adapter-v1"⟩
  proofArtifact := ⟨"https://w3id.org/reflexive", "bertrand-prime-source-adapter-proof", "1.0.0", "sha256:bertrand-prime-source-adapter-proof-v1"⟩
  comparisonScope := bertrandPrimeSourceProfile.assumptionSet
  comparisonScopeExact := rfl
  domainCoverage := by
    intro p hp
    exact hp.2
  admissiblePreserved := by
    intro p q hp hq
    change (Nat.Prime p ∧ 1 < p) ∧
      (p < q ∧ q < 2 * p) ∧ Nat.Prime q
    change 1 < p ∧ (p < q ∧ q < 2 * p) ∧ Nat.Prime q at hq
    exact ⟨hp, hq.2⟩

/-- The prime-source claim is separately packaged after the full theorem. -/
theorem bertrandPrimeSourceIntervalClaim :
    IntervalClaim bertrandPrimeSourceProfile :=
  bertrandPrimeSourceRefines.transportClaim bertrandIntervalClaim

/-- Certified prime-source corollary, distinct from certified full Bertrand. -/
def bertrandPrimeSourceCertifiedTheorem :
    CertifiedIntervalTheorem bertrandPrimeSourceProfile where
  theoremArtifact := ⟨"https://w3id.org/reflexive", "bertrand-prime-source-corollary", "1.0.0", "sha256:bertrand-prime-source-corollary-v1"⟩
  proofArtifact := ⟨"https://w3id.org/reflexive", "tt02-lean-proof", "1.0.0", "sha256:tt02-lean-proof-v1"⟩
  formalDeclaration := ⟨"https://w3id.org/reflexive", "FCRS.Transport.Theorems.tt02_bertrandPrimeSource", "1.0.0", "sha256:tt02-declaration-v1"⟩
  kernelBuildEvidence := ⟨"https://w3id.org/reflexive", "lean-kernel-build", "4.32.2", "sha256:lean-kernel-build-mathlib-905b9581"⟩
  assumptionSet := bertrandPrimeSourceProfile.assumptionSet
  theoremArtifactExact := rfl
  assumptionSetExact := rfl
  claim := bertrandPrimeSourceIntervalClaim

end FCRS.Transport
