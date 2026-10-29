# Verification target: Theta Phi Signed Jet Criterion Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "742581179f4a583b577085c9a5efa3b99b1016d5",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiSignedJetCriterion/Variantea26bfb0903f0556b0f49df08b4fc5e5869bf0a55a428f49d164b6daa2fb9d61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedJetCriterionNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedJetCriterionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `742581179f4a583b577085c9a5efa3b99b1016d5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiSignedJetCriterion/Variantea26bfb0903f0556b0f49df08b4fc5e5869bf0a55a428f49d164b6daa2fb9d61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiSignedJetCriterion/Variantea26bfb0903f0556b0f49df08b4fc5e5869bf0a55a428f49d164b6daa2fb9d61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiWronskianFourClosure` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiWronskianThree` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiLogConcavity` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedJetDet](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedJetCriterionNamespaced.lean/declarations/signedjetdet.md) | 30 | `declaration-track:e48ebb122e6431a8b0931dc684ea3eb0ce88deed169615c89ca310a5df1d7cf7` |
| 2 | `def` | [SignedJetRegularThrough](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedJetCriterionNamespaced.lean/declarations/signedjetregularthrough.md) | 35 | `declaration-track:c1b7587fec1967cdf1742483771de66b3978fb9fb84854013a620706e2d40f1b` |
| 3 | `def` | [SignedJetRegular](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedJetCriterionNamespaced.lean/declarations/signedjetregular.md) | 39 | `declaration-track:b8bfe02869f3c0142a1dd5063b624fd6ec33b66c954424404d119789749cf9b9` |
| 4 | `structure` | [ThetaPhiSourceJet](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedJetCriterionNamespaced.lean/declarations/thetaphisourcejet.md) | 44 | `declaration-track:9fceeefcec66053766238a71b8149cae3c40983d2108787f08e4fd83ef9e4386` |
| 5 | `def` | [ThetaPhiAllRankSignedJetCriterion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedJetCriterionNamespaced.lean/declarations/thetaphiallranksignedjetcriterion.md) | 55 | `declaration-track:f3fd868e727bfeaf285848809807806e07157c3658be2646c4f3f04599c1a7f9` |
| 6 | `theorem` | [SignedJetRegular.through](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedJetCriterionNamespaced.lean/declarations/signedjetregular-through.md) | 61 | `result-track:40b29a75ae19a8b63aee1ef3b442036da60dfc531e827e345505ad8a48e1140e` |
| 7 | `theorem` | [SignedJetRegularThrough.mono](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedJetCriterionNamespaced.lean/declarations/signedjetregularthrough-mono.md) | 68 | `result-track:b0ec55d44aab3df7372ec2199250cf4e1ce36d2d5f52ab0b89ee33f3aa2b9b41` |
| 8 | `theorem` | [signedJetDet_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedJetCriterionNamespaced.lean/declarations/signedjetdet-zero.md) | 76 | `result-track:695ab7dd03dc874040bbe994fd84c4bd08d4d14e2ab52abc84a4022dca7e1697` |
| 9 | `theorem` | [signedJetDet_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedJetCriterionNamespaced.lean/declarations/signedjetdet-one.md) | 81 | `result-track:c64a0c7df286526dae49ee984104b9cda9b51666871d0c75f689a550d2839562` |
| 10 | `theorem` | [signedJetDet_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedJetCriterionNamespaced.lean/declarations/signedjetdet-two.md) | 87 | `result-track:215caac1f0a72ea259fda95761b83987379d800806c4dbbc0e4dbd947b846f75` |
| 11 | `theorem` | [signedJetDet_three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedJetCriterionNamespaced.lean/declarations/signedjetdet-three.md) | 97 | `result-track:ca0e839ea556bb125f25f9394077ca1cb424c84d6fc1dc83e47d344dba1549cc` |
| 12 | `theorem` | [signedJetDet_four](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedJetCriterionNamespaced.lean/declarations/signedjetdet-four.md) | 111 | `result-track:8efb20532c7254bdef60c9ced19ba6ca4a8cffa396a602305b8f84fc585161cf` |
| 13 | `def` | [thetaPhiJetPrefix7](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedJetCriterionNamespaced.lean/declarations/thetaphijetprefix7.md) | 126 | `declaration-track:b6cef6a0fa312296a1bee92dd6c9035fd28c267dc04e77687980429de9fe2b1f` |
| 14 | `theorem` | [thetaPhiJetPrefix7_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedJetCriterionNamespaced.lean/declarations/thetaphijetprefix7-apply.md) | 131 | `result-track:7b05bc512093a8c1f3f80d8ee26ef0999b1e38aa7c0cb8e89b26e9a53f8d4c11` |
| 15 | `theorem` | [thetaPhiJetPrefix7_signedJetDet_one_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedJetCriterionNamespaced.lean/declarations/thetaphijetprefix7-signedjetdet-one-pos.md) | 138 | `result-track:6069dab0bcd237462b5940af7d5f2c4d2d24600a9636856d5cca37d85271a5c3` |
| 16 | `theorem` | [thetaPhiJetPrefix7_signedJetDet_two_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedJetCriterionNamespaced.lean/declarations/thetaphijetprefix7-signedjetdet-two-pos.md) | 146 | `result-track:33ca6713c3a97e763dc6edbb96c7f075428c0086de90370ed58910e57fd528f1` |
| 17 | `theorem` | [thetaPhiJetPrefix7_signedJetDet_three_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedJetCriterionNamespaced.lean/declarations/thetaphijetprefix7-signedjetdet-three-pos.md) | 157 | `result-track:2782d637e4fb3a9f119206968a1668d111061baf2ab8f67898999918e85ae777` |
| 18 | `theorem` | [thetaPhiJetPrefix7_signedJetDet_four_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedJetCriterionNamespaced.lean/declarations/thetaphijetprefix7-signedjetdet-four-pos.md) | 166 | `result-track:4212e31ad643546c2d84cf227564ef65360961d51d6d18e1d0dd720e814cc06f` |
| 19 | `theorem` | [thetaPhiJetPrefix7_signedRegularThrough_four](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedJetCriterionNamespaced.lean/declarations/thetaphijetprefix7-signedregularthrough-four.md) | 176 | `result-track:6c2c2d040104bcf569723f7f0e33de9318b04f1371ed9d893a9330d6de7f8a6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1315589733f268f42eb40879832486a169230b7448a9aea855d05eb394647d4b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiSignedJetCriterion/Variantea26bfb0903f0556b0f49df08b4fc5e5869bf0a55a428f49d164b6daa2fb9d61.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiSignedJetCriterion/Variantea26bfb0903f0556b0f49df08b4fc5e5869bf0a55a428f49d164b6daa2fb9d61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
