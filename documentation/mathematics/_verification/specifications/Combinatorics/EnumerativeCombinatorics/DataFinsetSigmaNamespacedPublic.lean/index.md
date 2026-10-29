# Verification target: Data Finset Sigma Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34e5c042e35d910b0b525b4b5fdedd8f693f1565",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sigma/Variant83cbea390445cc0ffaed1ac5daafbd7d274cde9f91e78664930cb8697dc4a164.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34e5c042e35d910b0b525b4b5fdedd8f693f1565`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sigma/Variant83cbea390445cc0ffaed1ac5daafbd7d274cde9f91e78664930cb8697dc4a164.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sigma/Variant83cbea390445cc0ffaed1ac5daafbd7d274cde9f91e78664930cb8697dc4a164.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sigma](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/sigma.md) | 53 | `declaration-track:c9e2cd734b021282aaaae44753bc7767b40a0f05f3194b8e1fbf57af3e879f3d` |
| 2 | `theorem` | [mem_sigma](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/mem-sigma.md) | 59 | `result-track:27b9d46ace5bab4cfe44d89c97f1833c0a0286b4035427773cff57e04aa7a31f` |
| 3 | `theorem` | [coe_sigma](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/coe-sigma.md) | 63 | `result-track:a0de8c0ff62bc5312230762712e6aaa7cdca23f5d99f70709a0bdf09be91bb1a` |
| 4 | `theorem` | [sigma_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/sigma-nonempty.md) | 68 | `result-track:3f5b12bfca211bc5ba805c1e65963a78026eccaa6f721489c97451645404a9ae` |
| 5 | `theorem` | [sigma_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/sigma-eq-empty.md) | 74 | `result-track:6f2556bebba20872c85bbf8a4d41f22affb9523e4184d1b960ca3970554a0b56` |
| 6 | `theorem` | [sigma_mono](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/sigma-mono.md) | 78 | `result-track:6b08761f838917ddcc4227b41289d01532f0609c238f040fd6c2983491a30c23` |
| 7 | `theorem` | [pairwiseDisjoint_map_sigmaMk](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/pairwisedisjoint-map-sigmamk.md) | 83 | `result-track:08e6a852a732592fcd93457fe9c0dfaca1a4cfbe39738eb39aa1c68c2fbd9fc0` |
| 8 | `theorem` | [disjiUnion_map_sigma_mk](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/disjiunion-map-sigma-mk.md) | 92 | `result-track:e521efa4cf25ab7a24f4fe26a85b69b792e2a6f3ba787f7051bb39b27c24b2ef` |
| 9 | `theorem` | [sigma_eq_biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/sigma-eq-biunion.md) | 97 | `result-track:d66ca6118edf773c44832f5b371de72b99d1325d66bf9e597d9fc4571607f0bb` |
| 10 | `lemma` | [filter_sigma](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/filter-sigma.md) | 102 | `result-track:0643d6f90d171c7f49483df5c6fab8dfca478b97ef6244b372ab73e1899084f6` |
| 11 | `lemma` | [filter_sigma'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/filter-sigma-source-edition-2.md) | 107 | `result-track:4ad9221cc9565fded17ba5dec6da25ec9ea918cae90066e89245ff3daf7855c9` |
| 12 | `theorem` | [sup_sigma](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/sup-sigma.md) | 114 | `result-track:e008d0de6312309356673e264fe914a9527d3668e30713f7ac3fed498ca39cfc` |
| 13 | `theorem` | [inf_sigma](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/inf-sigma.md) | 121 | `result-track:a680a5443a43a529b0dfdd728b2ab1dab61e8a1227f9d2d1c32c2832ec3563db` |
| 14 | `theorem` | [Data Finset Sigma Namespaced Public](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/bisup-finsetsigma-source-line-125-occurrence-2.md) | 125 | `result-track:9830f14d847e57dddf4cd66bc050e30a899377cb9e766161eba883ea63b6a83c` |
| 15 | `theorem` | [Data Finset Sigma Namespaced Public](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/bisup-finsetsigma.md) | 129 | `result-track:2fc7ed5af88f50c502f3179a9ead0ff02f3edb5842051be7b34af0774ab49fe8` |
| 16 | `theorem` | [Data Finset Sigma Namespaced Public](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/biinf-finsetsigma.md) | 133 | `result-track:9b28f74bfb0d3e63ec41f6954971810411f979f89e2823ab781316e617d6b50f` |
| 17 | `theorem` | [Data Finset Sigma Namespaced Public](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/biinf-finsetsigma-source-line-137-occurrence-2.md) | 137 | `result-track:cf4b53f12729fc0566fdaee9f9d16f1ef19506052913d3a689633f77a3120ffc` |
| 18 | `theorem` | [Data Finset Sigma Namespaced Public](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/biunion-finsetsigma.md) | 141 | `result-track:81170645410f2962fc09649f94c78dd8f5a27c8bf298060fdf3999a8cf7e10b0` |
| 19 | `theorem` | [Data Finset Sigma Namespaced Public](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/biunion-finsetsigma-source-line-145-occurrence-2.md) | 145 | `result-track:88c855859280a1deed1c2702c5aac258efb55b7a03aa5cb17c1b5b4f1efa9dc7` |
| 20 | `theorem` | [Data Finset Sigma Namespaced Public](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/biinter-finsetsigma-source-line-149-occurrence-2.md) | 149 | `result-track:8ffad2f03749b2d0d5782ec1b34b77484eae4a56db6343d182ec4b03bd80917b` |
| 21 | `theorem` | [Data Finset Sigma Namespaced Public](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/biinter-finsetsigma.md) | 153 | `result-track:4926782c6cca10356ce236bb5c9bed7c8a71d93e6519b51b3d639e1f6aa12626` |
| 22 | `def` | [sigmaLift](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/sigmalift.md) | 164 | `declaration-track:7a1e622a8bdc6bd2e53b29b669f6ca221155334c9076a58aa01f323bc2c58c14` |
| 23 | `theorem` | [mem_sigmaLift](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/mem-sigmalift.md) | 168 | `result-track:83c3ca6d95085a6751c8cb2c8f7155513d48ee7cdf76ded1dce4bf2320ab0c10` |
| 24 | `theorem` | [mk_mem_sigmaLift](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/mk-mem-sigmalift.md) | 187 | `result-track:46104cf08157adeb6cb3a02925fec5801fc74bbf972b7f8001e728b0b989a810` |
| 25 | `theorem` | [notMem_sigmaLift_of_ne_left](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/notmem-sigmalift-of-ne-left.md) | 194 | `result-track:856739c0b55c88c863c1bfe1a8815bf7c978dc3dc67e14b81e95e1c14a817eff` |
| 26 | `theorem` | [notMem_sigmaLift_of_ne_right](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/notmem-sigmalift-of-ne-right.md) | 199 | `result-track:be2b7b23263d8508eb169270b719f07f3c072b072fe28e4e6689c887a46b4bd2` |
| 27 | `theorem` | [sigmaLift_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/sigmalift-nonempty.md) | 206 | `result-track:8073563661da85424bbc2b2d701997bbd36a4101b152f020b285aad099e28699` |
| 28 | `theorem` | [sigmaLift_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/sigmalift-eq-empty.md) | 211 | `result-track:403931a133058772584e34dcb8812ffa0ad699cb08e1765d028347c4e9cbd1a5` |
| 29 | `theorem` | [sigmaLift_mono](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/sigmalift-mono.md) | 217 | `result-track:53da4d3b7133f2ebbac5cc9e97d26ef89938cbc301ad716539f58841fc6f138e` |
| 30 | `theorem` | [card_sigmaLift](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigmaNamespacedPublic.lean/declarations/card-sigmalift.md) | 227 | `result-track:41912562b621202e9a550aaa439488a8389d3081c2c4337dcbd3b8f4b2a06226` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9de28228a05233b074f3ab7537ebe5ef8f201e279ccd640ef628423934656aec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Sigma/Variant83cbea390445cc0ffaed1ac5daafbd7d274cde9f91e78664930cb8697dc4a164.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Sigma/Variant83cbea390445cc0ffaed1ac5daafbd7d274cde9f91e78664930cb8697dc4a164.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
