# Verification target: Combinatorics Matroid Sum Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbbf1a7d2b2b92797f94c4402ccf7e36c1837dd2",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant7e795fcc7f13b85772567673b8e26a28d41c4c688bb8bff1b4b1bfd19a149eee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/index.md) · [Full source](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbbf1a7d2b2b92797f94c4402ccf7e36c1837dd2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant7e795fcc7f13b85772567673b8e26a28d41c4c688bb8bff1b4b1bfd19a149eee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant7e795fcc7f13b85772567673b8e26a28d41c4c688bb8bff1b4b1bfd19a149eee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sigma](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/sigma.md) | 67 | `declaration-track:b13c25b6aa820f533fd5bb7d089ed083e630be1b8cfa160960c224933b0e9bea` |
| 2 | `lemma` | [sigma_indep_iff](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/sigma-indep-iff.md) | 117 | `result-track:ce28be131b70e7210b136b2982b7e7785cb4319914419e71fdb04d725fde4add` |
| 3 | `lemma` | [sigma_isBase_iff](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/sigma-isbase-iff.md) | 120 | `result-track:eda3c6af7d8f9882613f988bc4aa5ca75e2c74cdc05dbb55919b2acaca882d2e` |
| 4 | `lemma` | [sigma_ground_eq](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/sigma-ground-eq.md) | 123 | `result-track:fc7be30414f627c815dec538305a68820b84e8325aaface0f39e8ae26e66d563` |
| 5 | `lemma` | [sigma_isBasis_iff](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/sigma-isbasis-iff.md) | 125 | `result-track:2c5726ca9fbaf5b977f3046bc598481349f8b27f745b2beeaab274eb1718aecd` |
| 6 | `lemma` | [Finitary.sigma](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/finitary-sigma.md) | 148 | `result-track:a09f9d8c067890b9bed9a7a985fb1acb0ae459255f4dbd0ae66940a65d97bc7e` |
| 7 | `def` | [sum'](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/sum-source-edition-2.md) | 165 | `declaration-track:b28a81331335eed4ffb93b7f6871172ccd9d577566dae0e831c8bd5f6428e3b6` |
| 8 | `lemma` | [sum'_indep_iff](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/sum-indep-iff-source-edition-2.md) | 168 | `result-track:e23c1d47933f45c0706b2f75bbd2140b6daf23ec75e06344831087930bb661ed` |
| 9 | `lemma` | [sum'_ground_eq](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/sum-ground-eq.md) | 175 | `result-track:c87169eacf8213d00bd48ed4e9a6a0e1c05eb08bce4bcca71d7a40f6697ce4d6` |
| 10 | `lemma` | [sum'_isBase_iff](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/sum-isbase-iff-source-edition-2.md) | 180 | `result-track:74243108b5c5c5536b7d8d66d501ea9ba31ded188ff726c6a66ab7938b0e2a64` |
| 11 | `lemma` | [sum'_isBasis_iff](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/sum-isbasis-iff.md) | 187 | `result-track:3e978c3af1470203c7edc339b496b0dac56e09b42314589f076295f0f1dc3033` |
| 12 | `lemma` | [Finitary.sum'](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/finitary-sum.md) | 193 | `result-track:ea7b5f2c199a5e10c256bcc042a898bbfa40f6bd7d127f93a0419afd23571c59` |
| 13 | `def` | [disjointSigma](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/disjointsigma.md) | 208 | `declaration-track:74802f6497e261f279d1f0679f78dd73b5d554e6f6bc8050c8a25a84d9beacc2` |
| 14 | `lemma` | [disjointSigma_ground_eq](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/disjointsigma-ground-eq.md) | 213 | `result-track:71c6aed1c8f056c37cfc02258f9d6e3efc02cc8240cc6c15930ba76ed07f0582` |
| 15 | `lemma` | [disjointSigma_indep_iff](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/disjointsigma-indep-iff.md) | 216 | `result-track:1cd107d4f0297454a9a3c1096244df9a59a0d9a07afa4ec7ed8f1309d5441e7e` |
| 16 | `lemma` | [disjointSigma_isBase_iff](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/disjointsigma-isbase-iff.md) | 221 | `result-track:d6bac981d245101a163ac622a97086a86f0bfb846a3161685deb99be7d2ffbb1` |
| 17 | `lemma` | [disjointSigma_isBasis_iff](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/disjointsigma-isbasis-iff.md) | 226 | `result-track:44cd7b940918c07896a8724f366ce8bd27d6f2a0684ed2c46634a275acf601fb` |
| 18 | `def` | [sum](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/sum.md) | 238 | `declaration-track:8ccdd06e9bb6f7dec3d358e36d3a07fca41c2f1a5ec8f6305e4f925ea478e4ed` |
| 19 | `lemma` | [sum_ground](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/sum-ground.md) | 243 | `result-track:2a3f07f96d47cef50b3b8a1fdc357782a50f42f99ff43efd015b4994748f19f7` |
| 20 | `lemma` | [sum_indep_iff](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/sum-indep-iff.md) | 247 | `result-track:796be241d8f1c9471d22372baf46d49cd469fad6bb8058494b19d4251c50b5fc` |
| 21 | `lemma` | [sum_isBase_iff](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/sum-isbase-iff.md) | 254 | `result-track:0e07a68bfa00cf542833b93cd2b5fb48567b1a329fa104b5db810a6b81dcafcf` |
| 22 | `lemma` | [sum_isBasis_iff](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/sum-isbasis-iff-source-edition-2.md) | 261 | `result-track:404e694dbb34251b2dcbb3b15ccdddd07e2433bee5083b94cb8355f574c60abe` |
| 23 | `def` | [disjointSum](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/disjointsum.md) | 276 | `declaration-track:7197a4622f6f11ecacde9ccc50bd4480e0eb032f7236980298957fbf76d32af2` |
| 24 | `lemma` | [disjointSum_ground_eq](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/disjointsum-ground-eq.md) | 279 | `result-track:9c90539822f39455d91a5cfac514637e32bb80ec774628628d3343587ea51149` |
| 25 | `lemma` | [disjointSum_indep_iff](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/disjointsum-indep-iff.md) | 282 | `result-track:4414cae8f1ed8a83cc012f96f291922fc12ecc27ef23b1abc8b30cc23875ee53` |
| 26 | `lemma` | [disjointSum_isBase_iff](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/disjointsum-isbase-iff.md) | 286 | `result-track:efb3a0d5ed24482afc025e0fa64ebe3482ac43ea9b11dfb3a835df008d4fb4c3` |
| 27 | `lemma` | [disjointSum_isBasis_iff](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/disjointsum-isbasis-iff.md) | 290 | `result-track:3ee07f57edce0f7856caa645db54e82bb9dd8721fe192d0f227a72282f84ac9f` |
| 28 | `lemma` | [disjointSum_comm](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/disjointsum-comm.md) | 295 | `result-track:300dbef618840fc29ebcb63005c02771f394adb66e23cdd83f26d2623c47ca55` |
| 29 | `lemma` | [Indep.eq_union_image_of_disjointSum](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/indep-eq-union-image-of-disjointsum.md) | 301 | `result-track:a45f55623a392438130b32c7885af31344b5c206b1e6690140ec245b3e808d5a` |
| 30 | `lemma` | [IsBase.eq_union_image_of_disjointSum](../../../../Combinatorics/CombinatoricsMatroidSumNamespacedPublic.lean/declarations/isbase-eq-union-image-of-disjointsum.md) | 307 | `result-track:1355cda0485481e7f433f02001211f7f2cd63b82d6586fce7dcdaee52972ac07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc0013f4f82edc0a5ef69322a1b7c2bab57762779b9a82fd5ee2320f5abf4163 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant7e795fcc7f13b85772567673b8e26a28d41c4c688bb8bff1b4b1bfd19a149eee.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant7e795fcc7f13b85772567673b8e26a28d41c4c688bb8bff1b4b1bfd19a149eee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
