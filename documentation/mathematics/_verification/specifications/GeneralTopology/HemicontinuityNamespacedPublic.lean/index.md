# Verification target: Hemicontinuity Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee84c9d5f5382fab06ddb8d836d53157701446cb",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee84c9d5f5382fab06ddb8d836d53157701446cb`.

Source path: `GRWTSK/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.Compact` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sequences` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [upperHemicontinuousWithinAt_iff_forall_isOpen](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuouswithinat-iff-forall-isopen.md) | 44 | `result-track:c01ebf953b0ccbc260b76410f535fcae22b59c72eeb13621945535d0fb69a7d1` |
| 2 | `lemma` | [upperHemicontinuousOn_iff_forall_isOpen](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuouson-iff-forall-isopen.md) | 55 | `result-track:de4ca9809ce7e9cbc9d984a8da81499a6fd74e3a33eb98109a47fcc04721f291` |
| 3 | `lemma` | [upperHemicontinuousAt_iff_forall_isOpen](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuousat-iff-forall-isopen.md) | 62 | `result-track:fe5b1e5943a8368af9c11824ccc45f6c0fdb4db71f852f35bc923ea2921318d4` |
| 4 | `lemma` | [upperHemicontinuous_iff_forall_isOpen](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuous-iff-forall-isopen.md) | 70 | `result-track:777a056a2a8cbebb04b9b91b810da6297f35050f62d8d26a44d484710a40d60c` |
| 5 | `lemma` | [upperHemicontinuousWithinAt_iff_preimage_Iic](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuouswithinat-iff-preimage-iic.md) | 79 | `result-track:fccb91ec0330a6af29e4a4938aabf02594c914e8e7c2e8976e387f5860b0b551` |
| 6 | `lemma` | [upperHemicontinuousAt_iff_preimage_Iic](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuousat-iff-preimage-iic.md) | 92 | `result-track:351963fcc70859d3700bee0c94a696dd33a8120174379586c9a78bdddda0eb6f` |
| 7 | `lemma` | [upperHemicontinuousOn_iff_preimage_Iic](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuouson-iff-preimage-iic.md) | 97 | `result-track:040057e5a28e35e4ca4b514b15b32ebf797e8b3bad55db3f091778e52d44c8cc` |
| 8 | `lemma` | [upperHemicontinuous_iff_preimage_Iic](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuous-iff-preimage-iic.md) | 101 | `result-track:b1e3749203afae5be10a063377e7bda8059ea56eebb792ef4dccb5a128984731` |
| 9 | `lemma` | [upperHemicontinuous_iff_isOpen_preimage_Iic](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuous-iff-isopen-preimage-iic.md) | 108 | `result-track:0751e050c05ed2d6a00d37aaf674328d659deb65505ab96413eea5a7399265cf` |
| 10 | `lemma` | [upperHemicontinuous_iff_isClosed_compl_preimage_Iic_compl](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuous-iff-isclosed-compl-preimage-iic-compl.md) | 119 | `result-track:a8ff39d92534ec2fafacbee9326fdd4c2aececfe95c0fcc16a49dd1eabd16bd5` |
| 11 | `lemma` | [isClosedMap_iff_upperHemicontinuous](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/isclosedmap-iff-upperhemicontinuous.md) | 126 | `result-track:c08aa1d863e2139cae796f8b9f74cd1a8f81ee5aa70867baccfbaa11194cb6b9` |
| 12 | `lemma` | [lowerHemicontinuous_iff_isOpen_inter_nonempty](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/lowerhemicontinuous-iff-isopen-inter-nonempty.md) | 131 | `result-track:f89e1c347bad1dc4953d5cfd35f54976eb0c48dafd9a6d88519d972682e6a794` |
| 13 | `lemma` | [lowerHemicontinuous_iff_isOpen_compl_preimage_Iic_compl](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/lowerhemicontinuous-iff-isopen-compl-preimage-iic-compl.md) | 139 | `result-track:577f3277a93c1d3e12033747c75fbedd10da6f4a33064c011e2cdf4ba7b0b75f` |
| 14 | `lemma` | [lowerHemicontinuous_iff_isClosed_preimage_Iic](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/lowerhemicontinuous-iff-isclosed-preimage-iic.md) | 148 | `result-track:df41ae0829facef9def19000413d1d2c060e5e1b1c82735f59238dfafdfbbc4f` |
| 15 | `lemma` | [isOpenMap_iff_lowerHemicontinuous](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/isopenmap-iff-lowerhemicontinuous.md) | 155 | `result-track:11990354a962e5ac9e9d073811c9983c9b0e525f0ad499d6f16e71268c89ae82` |
| 16 | `lemma` | [upperHemicontinuous_singleton_id](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuous-singleton-id.md) | 173 | `result-track:763dadcecbba520b17b12fa0d24e3e9a6e595a4072746fc07590a1ac7c71cb2e` |
| 17 | `lemma` | [upperHemicontinuousWithinAt_singleton_iff](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuouswithinat-singleton-iff.md) | 177 | `result-track:d86d1ec1f0423ef9d9735a1723d7e4b8f71759a5fcd55cd094a260b2f8553cc4` |
| 18 | `lemma` | [upperHemicontinuousAt_singleton_iff](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuousat-singleton-iff.md) | 191 | `result-track:c6118e27b8a4053f5eeec98384be84c3b8413c0c547a2c6ea959899c7e869a71` |
| 19 | `lemma` | [upperHemicontinuousOn_singleton_iff](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuouson-singleton-iff.md) | 198 | `result-track:724e861fc08d01550347552cd910f1665f4934a992b699bb3f91547dbda54884` |
| 20 | `lemma` | [upperHemicontinuous_singleton_iff](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuous-singleton-iff.md) | 205 | `result-track:a4d6868e94e2334224fe5aeed775aff65e86cec11c8c674e813241c0c959ab9f` |
| 21 | `lemma` | [lowerHemicontinuous_singleton_id](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/lowerhemicontinuous-singleton-id.md) | 211 | `result-track:ce8c5eff1c7112157e528f240ab3d71f98456239ed9e96f6e0bc44860840485f` |
| 22 | `lemma` | [lowerHemicontinuousWithinAt_singleton_iff](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/lowerhemicontinuouswithinat-singleton-iff.md) | 217 | `result-track:33712ea853cac1380c367cc0648a332dbeb1fd5de8747d030d72eabbe5b91867` |
| 23 | `lemma` | [lowerHemicontinuousAt_singleton_iff](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/lowerhemicontinuousat-singleton-iff.md) | 231 | `result-track:17a9c66f0eceff39e38329b75e8ff18b3d3a3213380721bd84a78db64cdc44a6` |
| 24 | `lemma` | [lowerHemicontinuousOn_singleton_iff](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/lowerhemicontinuouson-singleton-iff.md) | 237 | `result-track:6318db3931fb90efdd46646fc048a2fd4bf3186338be2868c2a9fa8b6fd56c18` |
| 25 | `lemma` | [lowerHemicontinuous_singleton_iff](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/lowerhemicontinuous-singleton-iff.md) | 243 | `result-track:918c23c8f9a924f7084f2b31bf42d3b353cf31f382e17a835d62114ff92d568d` |
| 26 | `lemma` | [UpperHemicontinuousWithinAt.union](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuouswithinat-union.md) | 256 | `result-track:6d3428334a1c5f36ce111f8fabdcc6944eb1d07e5d5623027bac7fc03cce72d6` |
| 27 | `lemma` | [UpperHemicontinuousOn.union](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuouson-union.md) | 263 | `result-track:bcd5743a563f795d7912afe4ab8b131c3860ff861f0515957fb02b318d54a9a2` |
| 28 | `lemma` | [UpperHemicontinuousAt.union](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuousat-union.md) | 269 | `result-track:351496fc57200d2ad3a2090e9284eaeae5517ad1f9f9a3136166a42ab4ff13c3` |
| 29 | `lemma` | [UpperHemicontinuous.union](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuous-union.md) | 276 | `result-track:e2840e693e5971dd88135b468e32476595ed785b61615b7d2da0fea7be5d0b66` |
| 30 | `lemma` | [UpperHemicontinuousWithinAt.inter](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuouswithinat-inter.md) | 283 | `result-track:726d830340a464941fbb85e7e7da279ec125fc6fa67201a8d0a0c33b3a31cba5` |
| 31 | `lemma` | [UpperHemicontinuousOn.inter](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuouson-inter.md) | 293 | `result-track:973316b59c6cbf0fe5d1e5bc9bdba4c7ccfbfdf93d6bd848509f1fe35f52c8c6` |
| 32 | `lemma` | [UpperHemicontinuousAt.inter](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuousat-inter.md) | 300 | `result-track:dd7fb6a8558f9531c0feeae4c16ef083d7499727689e68d20f5aec90b260864f` |
| 33 | `lemma` | [UpperHemicontinuous.inter](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuous-inter.md) | 307 | `result-track:55e934b184aefb73d6fdfa6df910f74af0b9bfbb269f9b937926207ef9f25294` |
| 34 | `lemma` | [UpperHemicontinuousWithinAt.isInducing_comp](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuouswithinat-isinducing-comp.md) | 318 | `result-track:daed2bd59a65ac000ab36b71c9cf52c41fdd495877b727ec47f36ff8e42efa7c` |
| 35 | `lemma` | [UpperHemicontinuousOn.isInducing_comp](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuouson-isinducing-comp.md) | 329 | `result-track:9fca5cf8c6b07f2af3dafb3bd090e5631ec150aefb9a449b97d03fafe6c6e29e` |
| 36 | `lemma` | [UpperHemicontinuousAt.isInducing_comp](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuousat-isinducing-comp.md) | 337 | `result-track:248e55b7fcf9ff0a819171af05e991f272acd5ce163a77b1b109257590594677` |
| 37 | `lemma` | [UpperHemicontinuous.isInducing_comp](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuous-isinducing-comp.md) | 345 | `result-track:afc13d0d8073a401258537462d90a9b1bb107d89fbe2ab0b56674d7cbbe029de` |
| 38 | `lemma` | [UpperHemicontinuous.isClosed_domain](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuous-isclosed-domain.md) | 357 | `result-track:f9d5f31cce366bb627cc8d00e35c32ed276d3b3e083f2c7c3b53174731a2825f` |
| 39 | `lemma` | [UpperHemicontinuousAt.of_sequences](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuousat-of-sequences.md) | 373 | `result-track:179013c13be3f97a1225bd197d2f24a52871ea11e91155b5c1226132c373b84a` |
| 40 | `lemma` | [UpperHemicontinuousAt.mem_of_tendsto](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/upperhemicontinuousat-mem-of-tendsto.md) | 394 | `result-track:a6eb171c28b149c02ae33146e1cdc5db37b29a4d2704a90e95a728b9bd3e6a52` |
| 41 | `lemma` | [LowerHemicontinuousAt.of_sequences](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/lowerhemicontinuousat-of-sequences.md) | 414 | `result-track:d1d60d637f1bc0b98d6b01f664fa95a42fd9152e510fd627e2ca45478dc827e0` |
| 42 | `lemma` | [LowerHemicontinuousAt.exists_seq_tendsto](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/lowerhemicontinuousat-exists-seq-tendsto.md) | 433 | `result-track:49c2fe4e311d6ca1dfd576c184a63a60373b8e9a5b13f5379b9f7ec411a6c946` |
| 43 | `lemma` | [LowerHemicontinuousAt.exists_subseq_tendsto](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/lowerhemicontinuousat-exists-subseq-tendsto.md) | 465 | `result-track:4e099c69c4744ecfb05a384093d59b00d23881ed335552e5dcdd69f71688b0cc` |
| 44 | `lemma` | [hasOpenLowerSections_iff_isOpen_compl_preimage_Iic_compl](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/hasopenlowersections-iff-isopen-compl-preimage-iic-compl.md) | 480 | `result-track:1494cbc0b2ba6bc6635c53d6f2d43ae4769809817e82da53e619ea3501276105` |
| 45 | `lemma` | [hasOpenLowerSections_iff_isClosed_preimage_Iic](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/hasopenlowersections-iff-isclosed-preimage-iic.md) | 488 | `result-track:1c74ba3c23cdcafc945aa646d20024ef6fc4d916ac8975e3cd9125b19a01210d` |
| 46 | `lemma` | [LowerHemicontinuous.inter_hasOpenCGraph](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/lowerhemicontinuous-inter-hasopencgraph.md) | 497 | `result-track:414d55664cf8282eea69a676ba83d35064e3b6516a84d032be52c85a9368e60a` |
| 47 | `theorem` | [TendstoUniformlyOn.lowerHemicontinuousOn](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/tendstouniformlyon-lowerhemicontinuouson.md) | 526 | `result-track:980c428bfb2919653d845f5dc43ebd78d08e5325654b3991eafffe359f73bfab` |
| 48 | `theorem` | [TendstoUniformlyOn.upperHemicontinuousOn](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/tendstouniformlyon-upperhemicontinuouson.md) | 557 | `result-track:6e384053fbca4dd06c1c14d2635501d954cc7a19141abfde3adfdd310792fa49` |
| 49 | `theorem` | [TendstoUniformly.lowerHemicontinuous](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/tendstouniformly-lowerhemicontinuous.md) | 589 | `result-track:f8c5269c331d2ab27d69842415871cbf3ffe628686717c3077e6d05e09ba4fd9` |
| 50 | `theorem` | [TendstoUniformly.upperHemicontinuous](../../../../GeneralTopology/HemicontinuityNamespacedPublic.lean/declarations/tendstouniformly-upperhemicontinuous.md) | 597 | `result-track:0824e76d9a82fba8c66eebbf14e5c5eed22e09fcd6dfca19231cc1b60f06f5b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e144c0a8cddd3ec8d6d109f2610cb7c2fbab64383813846a9bde9422a117d0f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
