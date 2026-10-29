# Verification target: Theta Phi Signed Moment Parity Criterion Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7fd5dbee5556ee21d0169c6ca616a9d699c49fb",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ThetaPhiSignedMomentParityCriterion/Variantfcffc19ed7d00c64287d6149f13ed138493791f24f324ba81cb925ac5d7fb595.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterionNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7fd5dbee5556ee21d0169c6ca616a9d699c49fb`.

Source path: `GRWTSK/Topology/GeneralTopology/ThetaPhiSignedMomentParityCriterion/Variantfcffc19ed7d00c64287d6149f13ed138493791f24f324ba81cb925ac5d7fb595.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ThetaPhiSignedMomentParityCriterion/Variantfcffc19ed7d00c64287d6149f13ed138493791f24f324ba81cb925ac5d7fb595.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiBaseTouchardIdentification` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiBaseChristoffelMagnitude](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterionNamespaced.lean/declarations/thetaphibasechristoffelmagnitude.md) | 41 | `declaration-track:4da68c4b078324e35106f485839b2ea298d39cf384c88e38752b99901b15a681` |
| 2 | `theorem` | [thetaPhiBaseChristoffelMagnitude_nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterionNamespaced.lean/declarations/thetaphibasechristoffelmagnitude-nonnegative.md) | 47 | `result-track:3e7992f4c4d4950a474f7bc1a14476851458f1df6c1efd4703e0b62a5781f984` |
| 3 | `theorem` | [thetaPhiBaseSignedMomentWeight_mul_node_add_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterionNamespaced.lean/declarations/thetaphibasesignedmomentweight-mul-node-add-one.md) | 57 | `result-track:219ecd9858a0abee406ceeadd822c239ec3daaec661ec67f89a768e90647e596` |
| 4 | `def` | [thetaPhiSignedMomentSelectionMagnitude](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterionNamespaced.lean/declarations/thetaphisignedmomentselectionmagnitude.md) | 68 | `declaration-track:eb016f8e1a953f9032cb0686024a12a9a9ea8d64155bf7efb2f2a07f1b55740a` |
| 5 | `theorem` | [thetaPhiSignedMomentSelectionMagnitude_nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterionNamespaced.lean/declarations/thetaphisignedmomentselectionmagnitude-nonnegative.md) | 76 | `result-track:9f94c360ba9228791bb72ba550633efca8608f3d614b758324c3f69a07dec2d2` |
| 6 | `def` | [thetaPhiSignedMomentSelectionTerm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterionNamespaced.lean/declarations/thetaphisignedmomentselectionterm.md) | 90 | `declaration-track:3f644cc2def4b984b6480578f992dddd0a0dd0c41a51b213b2cf20dd5b9316da` |
| 7 | `theorem` | [thetaPhiSignedMomentSelectionTerm_eq_parity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterionNamespaced.lean/declarations/thetaphisignedmomentselectionterm-eq-parity.md) | 99 | `result-track:6c18883b4e7b56964094a4d64bcd2149eb73aeaa84dc0597fd4092e995977968` |
| 8 | `theorem` | [abs_thetaPhiSignedMomentSelectionTerm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterionNamespaced.lean/declarations/abs-thetaphisignedmomentselectionterm.md) | 113 | `result-track:4bf23e9d36df0e25827d01751178ae8028d5ec829f247e42be15aefdc93c6604` |
| 9 | `def` | [thetaPhiSignedMomentParitySum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterionNamespaced.lean/declarations/thetaphisignedmomentparitysum.md) | 125 | `declaration-track:c247d872f2a3e286fc4d4004254e111e8489ecaf647a964d80c4e375927ce7d4` |
| 10 | `theorem` | [factorial_mul_det_thetaPhi_signedMomentTruncation_eq_paritySum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterionNamespaced.lean/declarations/factorial-mul-det-thetaphi-signedmomenttruncation-eq-paritysum.md) | 132 | `result-track:dca20533bb19f204735122f98415bbd81ee704f9d5d985109830f0e33e17cd46` |
| 11 | `theorem` | [hasSum_thetaPhiBaseSignedMoment](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterionNamespaced.lean/declarations/hassum-thetaphibasesignedmoment.md) | 148 | `result-track:2499d9e64ede04cbaade297e38874f9fbad9ecb581ddef54ddd70f94e5d6e817` |
| 12 | `theorem` | [thetaPhiBaseSignedMomentTruncation_eq_sum_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterionNamespaced.lean/declarations/thetaphibasesignedmomenttruncation-eq-sum-range.md) | 193 | `result-track:73e1fc88a4293fe81d997750e16dbc26d81fc2b89abc59e2fc8a4c29cd1b62d2` |
| 13 | `theorem` | [thetaPhiBaseSignedMomentTruncation_tendsto](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterionNamespaced.lean/declarations/thetaphibasesignedmomenttruncation-tendsto.md) | 207 | `result-track:2cbf054560dd4b02efa0c73e8daabd04f74909d22549d0a7da936cdb39e2d417` |
| 14 | `theorem` | [thetaPhiSignedMomentChristoffel_tendsto](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterionNamespaced.lean/declarations/thetaphisignedmomentchristoffel-tendsto.md) | 229 | `result-track:f727312b3460c10ecd175f7d24d85e839d2612845fd4ae62f4a268e63255003e` |
| 15 | `theorem` | [thetaPhiSignedMomentChristoffel_det_tendsto](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterionNamespaced.lean/declarations/thetaphisignedmomentchristoffel-det-tendsto.md) | 265 | `result-track:ba7461e4e55325ea775590c5d01a6d55728e4b686853acc4c120403d417d8ae4` |
| 16 | `theorem` | [thetaPhiSignedMomentParitySum_tendsto](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterionNamespaced.lean/declarations/thetaphisignedmomentparitysum-tendsto.md) | 292 | `result-track:5eb28f229928b3db4d0d3e4956dbbee53c9ec3485ddd83bf40021931d50b97ab` |
| 17 | `def` | [thetaPhiSignedMomentOrientedParitySum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterionNamespaced.lean/declarations/thetaphisignedmomentorientedparitysum.md) | 324 | `declaration-track:5c394d7a2735e0afba78a51f9303da7b4567bcf6f274774295e77bcb317340ad` |
| 18 | `theorem` | [thetaPhiSignedMomentOrientedParitySum_tendsto](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterionNamespaced.lean/declarations/thetaphisignedmomentorientedparitysum-tendsto.md) | 332 | `result-track:e1f767165b9a950d746b1860b76c75e830b7b7fd3b6eae60791ecec1feced51f` |
| 19 | `def` | [ThetaPhiSignedMomentParityCriterion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterionNamespaced.lean/declarations/thetaphisignedmomentparitycriterion.md) | 368 | `declaration-track:6adbc05e2f50b9a1f52262b87c221c91c0c5d7fea5529a3a65dde3677ac931a2` |
| 20 | `theorem` | [signedJetDet_truncation_nonnegative_of_signedMomentParity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterionNamespaced.lean/declarations/signedjetdet-truncation-nonnegative-of-signedmomentparity.md) | 375 | `result-track:820f55c8e5fa88581e4ea626b2cfa752272ffda077c6d98fdd65104001813f1c` |
| 21 | `theorem` | [thetaPhiAllRankSignedJetCriterion_of_signedMomentParity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterionNamespaced.lean/declarations/thetaphiallranksignedjetcriterion-of-signedmomentparity.md) | 394 | `result-track:f2ca97aa2ceffd1d09665fdd9fa376f3defbd84eee62cdc47dc5d4f4c0856999` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd6b3a08b40ad5cca32ccbba2d5c01b8b069db2e68cbcebf8fb3cbae28044a11 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ThetaPhiSignedMomentParityCriterion/Variantfcffc19ed7d00c64287d6149f13ed138493791f24f324ba81cb925ac5d7fb595.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ThetaPhiSignedMomentParityCriterion/Variantfcffc19ed7d00c64287d6149f13ed138493791f24f324ba81cb925ac5d7fb595.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
