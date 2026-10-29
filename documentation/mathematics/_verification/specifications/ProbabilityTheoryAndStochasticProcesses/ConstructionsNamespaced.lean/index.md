# Verification target: Constructions Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddbd418075a574abf5a6a5ef3f63afaa1515eb7a",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Constructions/Variant3a7f79bc62e3c5a5a24f288a74a9195723a22fc5a81996dfed95b7e91c4f45f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddbd418075a574abf5a6a5ef3f63afaa1515eb7a`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Constructions/Variant3a7f79bc62e3c5a5a24f288a74a9195723a22fc5a81996dfed95b7e91c4f45f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Constructions/Variant3a7f79bc62e3c5a5a24f288a74a9195723a22fc5a81996dfed95b7e91c4f45f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.ProbabilityMassFunction.Monad` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/map.md) | 48 | `declaration-track:d8368aab4edc3ea3717c0239b95b92bd59fd37d48e1f1dd524255da7b13ff73b` |
| 2 | `theorem` | [monad_map_eq_map](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/monad-map-eq-map.md) | 54 | `result-track:dbebd98d47ba07e1641001e0d775439d871f441187b7518198c40b8c6ac6e79f` |
| 3 | `theorem` | [map_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/map-apply.md) | 58 | `result-track:bace506e7ee7144fc13e317a5b746a69ada31f1ed56dde487ac0762a0d57f221` |
| 4 | `theorem` | [support_map](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/support-map.md) | 62 | `result-track:7a3ee5eb39c0bc9df6b1840b93528e85e75b0a8ff0b117838fac0e8a22b7fe95` |
| 5 | `theorem` | [mem_support_map_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/mem-support-map-iff.md) | 66 | `result-track:3aac71cd9b3a678ce11051595e29bf0ecb3ce1d7ea547d9ea0a4eb53640d4fd7` |
| 6 | `theorem` | [bind_pure_comp](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/bind-pure-comp.md) | 69 | `result-track:c38318260aff6ed499b90a615d71fdfd31d795123b043af46693da38bd46fbf0` |
| 7 | `theorem` | [map_id](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/map-id.md) | 72 | `result-track:def4820e953f3f251250a55eb4451a83410ed7a4c787b5f51ef9c0a8b2519c0f` |
| 8 | `theorem` | [map_comp](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/map-comp.md) | 76 | `result-track:8a275cbd3bfac66fc160ddf6198bb230792fa3fbc72d4d8b9f5b9a42dd761ed5` |
| 9 | `theorem` | [pure_map](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/pure-map.md) | 79 | `result-track:f61cf3fa7422a74c1032663c83be5e31d9c6d09de7edd29c1f6082dc80d9e2a8` |
| 10 | `theorem` | [map_bind](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/map-bind.md) | 83 | `result-track:1cc15fdc9e3030b83ad21ab82f5ea2bbaa3c4a871923b5e9e2a1c1e1ba0dc06b` |
| 11 | `theorem` | [bind_map](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/bind-map.md) | 88 | `result-track:6a01b459c13de178d553daca92c6926337c704c73fd929baaf5840e488883825` |
| 12 | `theorem` | [map_const](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/map-const.md) | 93 | `result-track:799128d098e248ef8b3a9fce9e66c766ad3b20cb12329569239715cd3e6eac8f` |
| 13 | `theorem` | [toOuterMeasure_map_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/tooutermeasure-map-apply.md) | 102 | `result-track:98ba78a14c9df43af790dfe2b49eaf50c7d4592b034b981a9036f27116188c89` |
| 14 | `theorem` | [toMeasure_map_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/tomeasure-map-apply.md) | 107 | `result-track:f5b0f2b5f2e5db0cfea54200352f938a808214c40eb27677d89775e206c6c2a8` |
| 15 | `def` | [seq](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/seq.md) | 121 | `declaration-track:3078688832fb025f81ca55a555e19ea000446d5c5c71ee933bc10935c965d891` |
| 16 | `theorem` | [monad_seq_eq_seq](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/monad-seq-eq-seq.md) | 127 | `result-track:914dad8b84a9c277e2cb2ba116cb4f282d0a05c13fe1684d9a769265388de883` |
| 17 | `theorem` | [seq_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/seq-apply.md) | 131 | `result-track:6a5ebaef951262bd7b4c98d75141bb792a22ce8545f436ecababd84294adb244` |
| 18 | `theorem` | [support_seq](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/support-seq.md) | 138 | `result-track:d7f1eecb7b74634f0dcc94df2e62b3420634b8b6ec8d500979da3cb77f92e185` |
| 19 | `theorem` | [mem_support_seq_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/mem-support-seq-iff.md) | 142 | `result-track:4de07e7391d48beb3bb02ce0f8cf6e930a8e680313ab73c38add3d5cbcddce3e` |
| 20 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/instance.md) | 147 | `declaration-track:f123a14da0668f8404260e8d4e03899e6127b0524a3e0a8f030ec009cf34f6bb` |
| 21 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/instance-source-edition-2.md) | 152 | `declaration-track:f6c970202673c2fab665d8cf996f470943d7ba535e2fff99ae94167c665b834a` |
| 22 | `def` | [ofFinset](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/offinset.md) | 162 | `declaration-track:784727b7459eddafe04828a32a247c73a1af9e50f78a5a5ea51b901fd1809c1a` |
| 23 | `theorem` | [ofFinset_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/offinset-apply.md) | 170 | `result-track:4e5089c1e1d93af4713ca267104b5dc5e7c608d9afa3eacdbdde62548d684606` |
| 24 | `theorem` | [support_ofFinset](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/support-offinset.md) | 174 | `result-track:9141b19096303491b008ea9f155829fa29e3d26a1787a89c7d8599332cd59d2c` |
| 25 | `theorem` | [mem_support_ofFinset_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/mem-support-offinset-iff.md) | 178 | `result-track:34e6696535d9e66895c699bbb8731123838ded5a107462f6a6d246711cf5e66e` |
| 26 | `theorem` | [ofFinset_apply_of_not_mem](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/offinset-apply-of-not-mem.md) | 182 | `result-track:7c82d236c808c32ff8f3cebf1ee65b4d211027b9ce3c8015b9b7c5dc64453d78` |
| 27 | `theorem` | [toOuterMeasure_ofFinset_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/tooutermeasure-offinset-apply.md) | 191 | `result-track:28696548cb99ff5e6d3e5ae604b32269b3c07c3f9e858f8be7709cc8f1bdc68a` |
| 28 | `theorem` | [toMeasure_ofFinset_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/tomeasure-offinset-apply.md) | 197 | `result-track:5a9e5acf5becd21e2586783874480288c0c3c391c885a36e820beea1266d83ab` |
| 29 | `def` | [ofFintype](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/offintype.md) | 209 | `declaration-track:76bf0573859d3166d6c0e19dfea5d0a40254b46c5a315a821af98385eeb9aedb` |
| 30 | `theorem` | [ofFintype_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/offintype-apply.md) | 216 | `result-track:5f86d0df2503c615adf6b96cc472941e75c8e8a303e361f1861bd7f3dfcc3429` |
| 31 | `theorem` | [support_ofFintype](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/support-offintype.md) | 220 | `result-track:f5acf3bc798f5ecd5a62b4df32a226227ff7a89907b1cdd9d8d138712506e0e2` |
| 32 | `theorem` | [mem_support_ofFintype_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/mem-support-offintype-iff.md) | 223 | `result-track:6dc92cf47816a166d82474a82b9f898dfe01dbacce8082d33e0e6252730c84b0` |
| 33 | `theorem` | [toOuterMeasure_ofFintype_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/tooutermeasure-offintype-apply.md) | 231 | `result-track:23df7f250e080d6f8331dab54cd02d52b307ade41105b571367977017cfc7438` |
| 34 | `theorem` | [toMeasure_ofFintype_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/tomeasure-offintype-apply.md) | 236 | `result-track:c34399eec9a46519bc6d5897fcc73cf0bb399e693fc807caae18650bdc0c43b8` |
| 35 | `def` | [normalize](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/normalize.md) | 249 | `declaration-track:a21a391733f2291ffed8d2e7523258e819575ba08ca9ebabb292e365c04ec6b5` |
| 36 | `theorem` | [normalize_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/normalize-apply.md) | 257 | `result-track:648f3753add66616f13c2daf31af98aa85930c6daf1c3af67de05e8450d2bc7b` |
| 37 | `theorem` | [support_normalize](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/support-normalize.md) | 261 | `result-track:d429a8b00c7d8350167ba90b7f14efe25ff0d21b9899aaef56d623952a1116eb` |
| 38 | `theorem` | [mem_support_normalize_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/mem-support-normalize-iff.md) | 265 | `result-track:6e1cc7f673f0796eb5975444bf158d13b73d2a8a1f33952d6f578bfc90c0ad3a` |
| 39 | `def` | [filter](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/filter.md) | 273 | `declaration-track:af9d72e71beff5787367d8e42e866a005bd1ace5355cbd3e77e9b23411b8ec93` |
| 40 | `theorem` | [filter_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/filter-apply.md) | 280 | `result-track:efe3ebee6c014eddb5f941e6ac00f735a5effe3ad1ab9e59fc0cabb484d277dc` |
| 41 | `theorem` | [filter_apply_eq_zero_of_not_mem](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/filter-apply-eq-zero-of-not-mem.md) | 285 | `result-track:d6cfc9f2d45c7cac8d7720d779237cf6136e27b3abcf4f5f512bf08d4c916d93` |
| 42 | `theorem` | [mem_support_filter_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/mem-support-filter-iff.md) | 289 | `result-track:28fbd6967359123e0c1a45ed2a066f00eaefc312f15d619448c727cecd113c7f` |
| 43 | `theorem` | [support_filter](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/support-filter.md) | 294 | `result-track:475d1bc32819d621c26e23b068bb80dcabcf03eb04b9a35ad335cb4e46efaabb` |
| 44 | `theorem` | [filter_apply_eq_zero_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/filter-apply-eq-zero-iff.md) | 298 | `result-track:9fe42c1f11ee97c672ab7264076ca594d0a4632a259e3e85bb3ae13585ae003d` |
| 45 | `theorem` | [filter_apply_ne_zero_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/filter-apply-ne-zero-iff.md) | 302 | `result-track:bedc63aaee8867fc7be55d9d6d674ccd8e9d51e976acd44ecebb0b950c7cb5dc` |
| 46 | `def` | [bernoulli](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/bernoulli.md) | 311 | `declaration-track:2b19b12a1eca46f5f7e9eed001d337bde71b7deff4fb560deb139a36803e6aaf` |
| 47 | `theorem` | [bernoulli_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/bernoulli-apply.md) | 318 | `result-track:56d42a1f108f4a66d669ac5b9b22bcf1547a926192192f3a4b44e864ea4220d8` |
| 48 | `theorem` | [support_bernoulli](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/support-bernoulli.md) | 322 | `result-track:06ac722939e290e1dff12a9c064624f3a6c64e418caf93ca2659973fc024970e` |
| 49 | `theorem` | [mem_support_bernoulli_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConstructionsNamespaced.lean/declarations/mem-support-bernoulli-iff.md) | 330 | `result-track:d10c472cc16dd6e0c40af5a17e2dbb23c86097b8c9de83700eb408f1d6531c26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3509e73284d46ba37ea2b126ea0f1d9a9ee9ee3a31286f9e28826b7d6ae693eb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Constructions/Variant3a7f79bc62e3c5a5a24f288a74a9195723a22fc5a81996dfed95b7e91c4f45f8.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Constructions/Variant3a7f79bc62e3c5a5a24f288a74a9195723a22fc5a81996dfed95b7e91c4f45f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
