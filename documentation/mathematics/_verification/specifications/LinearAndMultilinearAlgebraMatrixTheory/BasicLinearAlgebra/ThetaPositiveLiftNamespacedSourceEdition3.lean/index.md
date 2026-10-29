# Verification target: Theta Positive Lift Namespaced Source Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ebd66968ca22d21c03191058dc6d63a07063afc",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant32ce0d9dc181cc6129520a083a54bd42c9c6ece867c47804975920934b694c5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftNamespacedSourceEdition3.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftNamespacedSourceEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ebd66968ca22d21c03191058dc6d63a07063afc`.

Source path: `GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant32ce0d9dc181cc6129520a083a54bd42c9c6ece867c47804975920934b694c5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ThetaPositiveLift/Variant32ce0d9dc181cc6129520a083a54bd42c9c6ece867c47804975920934b694c5c.lean.json)

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
| 1 | `def` | [thetaPhiBaseChristoffelMagnitude](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftNamespacedSourceEdition3.lean/declarations/thetaphibasechristoffelmagnitude.md) | 45 | `declaration-track:c01c0b6390c6beece10f0c860d2990fe9997bb48c97ac519b597ec2482a4a02e` |
| 2 | `theorem` | [thetaPhiBaseChristoffelMagnitude_nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftNamespacedSourceEdition3.lean/declarations/thetaphibasechristoffelmagnitude-nonnegative.md) | 51 | `result-track:f144d5331fe3cc26a9f5567383b74e698eee3e36e4fbc86ce9435a9583634d5b` |
| 3 | `theorem` | [thetaPhiBaseSignedMomentWeight_mul_node_add_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftNamespacedSourceEdition3.lean/declarations/thetaphibasesignedmomentweight-mul-node-add-one.md) | 61 | `result-track:91f3ee03dc25b30225741c7b51f420cdda97f40235aad10389521b8de5c0e561` |
| 4 | `def` | [thetaPhiSignedMomentSelectionMagnitude](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftNamespacedSourceEdition3.lean/declarations/thetaphisignedmomentselectionmagnitude.md) | 72 | `declaration-track:1b1b469b12cfc7722f693a083ce8645476eb68cce7b950fda87d142e6f5da4ae` |
| 5 | `theorem` | [thetaPhiSignedMomentSelectionMagnitude_nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftNamespacedSourceEdition3.lean/declarations/thetaphisignedmomentselectionmagnitude-nonnegative.md) | 80 | `result-track:20ba574884aab0120f7bf21b40c639b1ad9d74c48b257f1f9fe19bfe857c58c8` |
| 6 | `def` | [thetaPhiSignedMomentSelectionTerm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftNamespacedSourceEdition3.lean/declarations/thetaphisignedmomentselectionterm.md) | 94 | `declaration-track:43cee7a012dfeabaadc6c538c5cb159982a7839d573f466c301f01a48504b1c7` |
| 7 | `theorem` | [thetaPhiSignedMomentSelectionTerm_eq_parity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftNamespacedSourceEdition3.lean/declarations/thetaphisignedmomentselectionterm-eq-parity.md) | 103 | `result-track:f30c2dd9fa3b2d0500eb59ab2c7dfe4e0dd32081a1c3e4fd376611da3860e1f0` |
| 8 | `theorem` | [abs_thetaPhiSignedMomentSelectionTerm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftNamespacedSourceEdition3.lean/declarations/abs-thetaphisignedmomentselectionterm.md) | 117 | `result-track:78d5c86003f5fe73fd1c1c6d5a38fef3181f193266479fbbd43ed83dfb1a4687` |
| 9 | `def` | [thetaPhiSignedMomentParitySum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftNamespacedSourceEdition3.lean/declarations/thetaphisignedmomentparitysum.md) | 129 | `declaration-track:122c3bc45d224360baa438c6d17dd94c82c044aa1ced360eb8ab981d63a2cd72` |
| 10 | `theorem` | [factorial_mul_det_thetaPhi_signedMomentTruncation_eq_paritySum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftNamespacedSourceEdition3.lean/declarations/factorial-mul-det-thetaphi-signedmomenttruncation-eq-paritysum.md) | 136 | `result-track:c188e7abb7884883e722a30e86cc8370090eb22f5be28c51167f63b19992ae6f` |
| 11 | `theorem` | [hasSum_thetaPhiBaseSignedMoment](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftNamespacedSourceEdition3.lean/declarations/hassum-thetaphibasesignedmoment.md) | 152 | `result-track:df890c096d06a2b05162b25c1d4e2705eee0f4c4108e05311ffcdffba4a81624` |
| 12 | `theorem` | [thetaPhiBaseSignedMomentTruncation_eq_sum_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftNamespacedSourceEdition3.lean/declarations/thetaphibasesignedmomenttruncation-eq-sum-range.md) | 197 | `result-track:5ef6e49efc163600fb4e8030c62130093af5aa7599f09640587dc45fc239aeb8` |
| 13 | `theorem` | [thetaPhiBaseSignedMomentTruncation_tendsto](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftNamespacedSourceEdition3.lean/declarations/thetaphibasesignedmomenttruncation-tendsto.md) | 211 | `result-track:9d48e153366582ea12e4824f581054e3d8608d4d71a949d4958ce305cbfaea8b` |
| 14 | `theorem` | [thetaPhiSignedMomentChristoffel_tendsto](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftNamespacedSourceEdition3.lean/declarations/thetaphisignedmomentchristoffel-tendsto.md) | 233 | `result-track:9c1aeac165480094be856d50acee7d4913432d0216e409380fd57e1e67abc222` |
| 15 | `theorem` | [thetaPhiSignedMomentChristoffel_det_tendsto](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftNamespacedSourceEdition3.lean/declarations/thetaphisignedmomentchristoffel-det-tendsto.md) | 269 | `result-track:52696017cb0a954b5061126e43ce54a0d8a01564ac299930f12ff96cae4ac9ee` |
| 16 | `theorem` | [thetaPhiSignedMomentParitySum_tendsto](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftNamespacedSourceEdition3.lean/declarations/thetaphisignedmomentparitysum-tendsto.md) | 296 | `result-track:bf13e1dbbdd244525b8dd676af57861bb2530ac72566e697f61199e7d32de85d` |
| 17 | `def` | [thetaPhiSignedMomentOrientedParitySum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftNamespacedSourceEdition3.lean/declarations/thetaphisignedmomentorientedparitysum.md) | 328 | `declaration-track:68d27bc0aedec0b6e81a8ae8c6700770676d701fa26ec7b2734ab768414bb244` |
| 18 | `theorem` | [thetaPhiSignedMomentOrientedParitySum_tendsto](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftNamespacedSourceEdition3.lean/declarations/thetaphisignedmomentorientedparitysum-tendsto.md) | 336 | `result-track:a01ef0d825f8226d1d6d4acf5e9648dc69b14dc320240ed569ad59f418198d97` |
| 19 | `def` | [ThetaPhiSignedMomentParityCriterion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftNamespacedSourceEdition3.lean/declarations/thetaphisignedmomentparitycriterion.md) | 372 | `declaration-track:519cc0eae34806f0c019ba8310f2f1dba4d107f87a13d9fae8721b22fa18f8cd` |
| 20 | `theorem` | [signedJetDet_truncation_nonnegative_of_signedMomentParity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftNamespacedSourceEdition3.lean/declarations/signedjetdet-truncation-nonnegative-of-signedmomentparity.md) | 379 | `result-track:a60309c49b9cc30dccc5e2a24f4fdb19f1df9af4135f8c90e243380739c8a27b` |
| 21 | `theorem` | [thetaPhiAllRankSignedJetCriterion_of_signedMomentParity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftNamespacedSourceEdition3.lean/declarations/thetaphiallranksignedjetcriterion-of-signedmomentparity.md) | 398 | `result-track:7e766ff5c3f564a9635a92ef055badc6732eab2adf84028dd8e964db6633ee66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=753312e22189fe1c5d55301aa74c014b2e098c414dd40275d90f22f65fe78db6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant32ce0d9dc181cc6129520a083a54bd42c9c6ece867c47804975920934b694c5c.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ThetaPositiveLift/Variant32ce0d9dc181cc6129520a083a54bd42c9c6ece867c47804975920934b694c5c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
