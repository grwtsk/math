# Verification target: Theta Phi Signed Moment Parity Criterion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6ff88f2dcba32b1f40b30e40be61ff87e80f72e",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ThetaPhiSignedMomentParityCriterion/Variant323cf35f62c0a7e07bf5b2acfb31055df232b833b8cf697b6c5e0cfd34627865.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterion.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6ff88f2dcba32b1f40b30e40be61ff87e80f72e`.

Source path: `GRWTSK/Topology/GeneralTopology/ThetaPhiSignedMomentParityCriterion/Variant323cf35f62c0a7e07bf5b2acfb31055df232b833b8cf697b6c5e0cfd34627865.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ThetaPhiSignedMomentParityCriterion/Variant323cf35f62c0a7e07bf5b2acfb31055df232b833b8cf697b6c5e0cfd34627865.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiBaseTouchardIdentification` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiBaseChristoffelMagnitude](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterion.lean/declarations/thetaphibasechristoffelmagnitude.md) | 33 | `declaration-track:325eb20e6154dec547fa454154424ca22befcac2eb18c30446620772447440cb` |
| 2 | `theorem` | [thetaPhiBaseChristoffelMagnitude_nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterion.lean/declarations/thetaphibasechristoffelmagnitude-nonnegative.md) | 39 | `result-track:a61dd16dd74559c0ee7a902f383b83c6f3d1bd1df1f6c758eca4a3f91eaee43f` |
| 3 | `theorem` | [thetaPhiBaseSignedMomentWeight_mul_node_add_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterion.lean/declarations/thetaphibasesignedmomentweight-mul-node-add-one.md) | 49 | `result-track:79e47f99d898f1b07f2c7478e014530b139f87f1e8ecc484b2d6de80df8d60e8` |
| 4 | `def` | [thetaPhiSignedMomentSelectionMagnitude](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterion.lean/declarations/thetaphisignedmomentselectionmagnitude.md) | 60 | `declaration-track:dfe99ad172e393219523f8fa3fc5f519159a30f4b845f1fad6401447b69fe113` |
| 5 | `theorem` | [thetaPhiSignedMomentSelectionMagnitude_nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterion.lean/declarations/thetaphisignedmomentselectionmagnitude-nonnegative.md) | 68 | `result-track:0274e19ca53ff246aa584f0451e323baa3ff770bb4d2a59395d7adbd519c5e47` |
| 6 | `def` | [thetaPhiSignedMomentSelectionTerm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterion.lean/declarations/thetaphisignedmomentselectionterm.md) | 82 | `declaration-track:6b56a55497f525a0399acf887e569f7449574d38d3e504dcd8474c6018e047ea` |
| 7 | `theorem` | [thetaPhiSignedMomentSelectionTerm_eq_parity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterion.lean/declarations/thetaphisignedmomentselectionterm-eq-parity.md) | 91 | `result-track:802bf911d553bb7d32077ee411fc31c25c0ce8cfbab187b4caeb2c5bf57d1c84` |
| 8 | `theorem` | [abs_thetaPhiSignedMomentSelectionTerm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterion.lean/declarations/abs-thetaphisignedmomentselectionterm.md) | 105 | `result-track:284f1755ccfa2f8327abf68e73a53e97494fddd8954f1c6f4bf9aed1bcf6b539` |
| 9 | `def` | [thetaPhiSignedMomentParitySum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterion.lean/declarations/thetaphisignedmomentparitysum.md) | 117 | `declaration-track:1d1af129a96311b7d3e6efb346528a57d911f641e5b7129233684482677d06a1` |
| 10 | `theorem` | [factorial_mul_det_thetaPhi_signedMomentTruncation_eq_paritySum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterion.lean/declarations/factorial-mul-det-thetaphi-signedmomenttruncation-eq-paritysum.md) | 124 | `result-track:bf1e78ab01a39256b8c76047c66e34bff9636b3cdd8ec7f3c6d7445158eb0376` |
| 11 | `theorem` | [hasSum_thetaPhiBaseSignedMoment](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterion.lean/declarations/hassum-thetaphibasesignedmoment.md) | 140 | `result-track:67cb7958f06eca8f7a881213bd84a0a576f9999ecdf27fdd889001d15bdb9fbf` |
| 12 | `theorem` | [thetaPhiBaseSignedMomentTruncation_eq_sum_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterion.lean/declarations/thetaphibasesignedmomenttruncation-eq-sum-range.md) | 185 | `result-track:af0b71aff6ec3ca44f64a32dc0104565db44e7afb17b0cd62ac88424c74df6d1` |
| 13 | `theorem` | [thetaPhiBaseSignedMomentTruncation_tendsto](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterion.lean/declarations/thetaphibasesignedmomenttruncation-tendsto.md) | 199 | `result-track:4c0932b1de75877fae61b23cd8300566498e2637a275f09d7a5c7f0419103207` |
| 14 | `theorem` | [thetaPhiSignedMomentChristoffel_tendsto](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterion.lean/declarations/thetaphisignedmomentchristoffel-tendsto.md) | 221 | `result-track:0c566357bedbe2f2bc29ca5ef4118bc8e335676d4d164b10a603386baf811d8f` |
| 15 | `theorem` | [thetaPhiSignedMomentChristoffel_det_tendsto](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterion.lean/declarations/thetaphisignedmomentchristoffel-det-tendsto.md) | 257 | `result-track:46722e9e0c211e31c27cf0de86e77ca1feabb65e37f807c05b3084e07019fdb4` |
| 16 | `theorem` | [thetaPhiSignedMomentParitySum_tendsto](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterion.lean/declarations/thetaphisignedmomentparitysum-tendsto.md) | 284 | `result-track:95af637740fb41bc5936063df7a518edc910251de3a2fa0cfcfb5fa251042e61` |
| 17 | `def` | [thetaPhiSignedMomentOrientedParitySum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterion.lean/declarations/thetaphisignedmomentorientedparitysum.md) | 316 | `declaration-track:a98fd1745227d5cf30a175cdd27d97421ea7d8c26d22c6d66d3f657c8cd0c6bb` |
| 18 | `theorem` | [thetaPhiSignedMomentOrientedParitySum_tendsto](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterion.lean/declarations/thetaphisignedmomentorientedparitysum-tendsto.md) | 324 | `result-track:b0fcd9999c10bd908bee599ba6bb7421e03c21b92fba508350426eb5da7e0b43` |
| 19 | `def` | [ThetaPhiSignedMomentParityCriterion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterion.lean/declarations/thetaphisignedmomentparitycriterion.md) | 360 | `declaration-track:7e3011b2e8f705ae4fc68a2c6e9770795c5361e708b268239c5999957d7835cf` |
| 20 | `theorem` | [signedJetDet_truncation_nonnegative_of_signedMomentParity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterion.lean/declarations/signedjetdet-truncation-nonnegative-of-signedmomentparity.md) | 367 | `result-track:43fe661d36da14b7cd6cf9fd593abdb68368ba45b3f3f2e4b0e3818c13570df0` |
| 21 | `theorem` | [thetaPhiAllRankSignedJetCriterion_of_signedMomentParity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterion.lean/declarations/thetaphiallranksignedjetcriterion-of-signedmomentparity.md) | 386 | `result-track:2381e483509d18b9a41b8c4e48ff1e9eecd3987160ff1677a987650088e87020` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2dd079718ac14344acd50f834237699edb234e93b2e348894a013775516c7f0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ThetaPhiSignedMomentParityCriterion/Variant323cf35f62c0a7e07bf5b2acfb31055df232b833b8cf697b6c5e0cfd34627865.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ThetaPhiSignedMomentParityCriterion/Variant323cf35f62c0a7e07bf5b2acfb31055df232b833b8cf697b6c5e0cfd34627865.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
