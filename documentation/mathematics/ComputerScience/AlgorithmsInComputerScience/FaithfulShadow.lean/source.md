# Faithful Shadow — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47ca50ba0868e2f2a9687ace4a9d10a8570f2cae` · SHA-256 `5db71b9d7e664c8ee6a229fe8783bde59d01656c466f533c59db1105fcb2c3ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Certificate-gated faithful shadows

This module resolves the faithful-shadow TODO as a finite structural theorem.
It does not prove that arbitrary analytic relaxations reconstruct finite
matrices. It records the precise certificate fields required before a
relaxation/shadow pair may be called faithful on a chosen equivalence class.
-/

namespace AnalyticNumber
namespace FaithfulShadow

/-- Metadata for one finite binary shadow level. -/
structure BinaryShadowLevel where
  level : Nat
  matrixHash : Nat
  supportHash : Nat
  sourceTreeHash : Nat
  theoremResolutionHash : Nat

/-- Metadata for the limiting relaxed object used by shadow maps. -/
structure RelaxedLimitDescriptor where
  spaceHash : Nat
  relaxationHash : Nat
  equivalenceClassHash : Nat
  authorityBoundaryHash : Nat

/-- Certificate for a single finite shadow map from the relaxed descriptor. -/
structure ShadowMapCertificate where
  level : Nat
  shadowMapHash : Nat
  targetMatrixHash : Nat
  sectionOnFiniteImage : Prop
  sectionProof : sectionOnFiniteImage
  limitShadowCompatibility : Prop
  compatibilityProof : limitShadowCompatibility
  supportPreserved : Prop
  supportProof : supportPreserved
  theoremResolutionPreserved : Prop
  theoremResolutionProof : theoremResolutionPreserved
  authorityBoundarySound : Prop
  authorityBoundaryProof : authorityBoundarySound

/-- Complete certificate that the relaxation/shadow pair is faithful. -/
structure FaithfulShadowCertificate where
  finiteLevels : List BinaryShadowLevel
  relaxedLimit : RelaxedLimitDescriptor
  shadowMaps : List ShadowMapCertificate
  shadowMapsExist : Prop
  shadowMapsExistProof : shadowMapsExist
  everyFiniteLevelRecovered : Prop
  finiteRecoveryProof : everyFiniteLevelRecovered
  limitShadowsRecovered : Prop
  limitRecoveryProof : limitShadowsRecovered
  faithfulOnChosenEquivalenceClass : Prop
  faithfulProof : faithfulOnChosenEquivalenceClass
  sourceTreeIdentityPreserved : Prop
  sourceTreeProof : sourceTreeIdentityPreserved
  theoremResolutionIdentityPreserved : Prop
  theoremResolutionProof : theoremResolutionIdentityPreserved
  supportStructurePreserved : Prop
  supportProof : supportStructurePreserved
  noAuthorityCreated : Prop
  noAuthorityProof : noAuthorityCreated

def ShadowMapConstructsAnalyticAuthority (_S : ShadowMapCertificate) : Prop := False
def RelaxationOwnsFiniteMatrix (_R : RelaxedLimitDescriptor) : Prop := False
def FaithfulnessLabelIsProof (_C : FaithfulShadowCertificate) : Prop := False

theorem shadow_map_not_analytic_authority
    (S : ShadowMapCertificate) :
    ¬ ShadowMapConstructsAnalyticAuthority S := by
  intro h
  exact h

theorem relaxation_not_finite_matrix_authority
    (R : RelaxedLimitDescriptor) :
    ¬ RelaxationOwnsFiniteMatrix R := by
  intro h
  exact h

theorem faithfulness_label_not_proof
    (C : FaithfulShadowCertificate) :
    ¬ FaithfulnessLabelIsProof C := by
  intro h
  exact h

/--
Certificate-gated faithful shadow recoverability.

The theorem extracts the recoverability and faithfulness fields from an explicit
certificate and records that neither the relaxed descriptor nor the shadow-map
metadata creates analytic authority.
-/
theorem faithful_shadow_recoverability
    (C : FaithfulShadowCertificate) :
    C.shadowMapsExist ∧
    C.everyFiniteLevelRecovered ∧
    C.limitShadowsRecovered ∧
    C.faithfulOnChosenEquivalenceClass ∧
    C.sourceTreeIdentityPreserved ∧
    C.theoremResolutionIdentityPreserved ∧
    C.supportStructurePreserved ∧
    C.noAuthorityCreated ∧
    ¬ RelaxationOwnsFiniteMatrix C.relaxedLimit ∧
    ¬ FaithfulnessLabelIsProof C :=
  ⟨C.shadowMapsExistProof,
   C.finiteRecoveryProof,
   C.limitRecoveryProof,
   C.faithfulProof,
   C.sourceTreeProof,
   C.theoremResolutionProof,
   C.supportProof,
   C.noAuthorityProof,
   relaxation_not_finite_matrix_authority C.relaxedLimit,
   faithfulness_label_not_proof C⟩

/-- A faithful-shadow certificate directly yields finite-level recovery. -/
theorem finite_levels_recovered
    (C : FaithfulShadowCertificate) :
    C.everyFiniteLevelRecovered :=
  C.finiteRecoveryProof

/-- A faithful-shadow certificate directly yields limit-shadow recovery. -/
theorem limit_shadows_recovered
    (C : FaithfulShadowCertificate) :
    C.limitShadowsRecovered :=
  C.limitRecoveryProof

/-- A faithful-shadow certificate directly yields faithfulness on its class. -/
theorem faithful_on_chosen_class
    (C : FaithfulShadowCertificate) :
    C.faithfulOnChosenEquivalenceClass :=
  C.faithfulProof

end FaithfulShadow
end AnalyticNumber
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=007b1aa5053fdf888f56417a9bfb15544c28069eaec49bffa08685fd2bc7e1e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FaithfulShadow/Variant5db71b9d7e664c8ee6a229fe8783bde59d01656c466f533c59db1105fcb2c3ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
