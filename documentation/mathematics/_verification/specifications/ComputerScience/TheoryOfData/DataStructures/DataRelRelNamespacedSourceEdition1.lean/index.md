# Verification target: Data Rel Rel Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9c2d3ee9f2c76f518cffee0d7957a1559da828d",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rel/Variantc101bf90af9c9797992a0fb858a0227da8193cd2a9898f5bcc7b3fe1f53f8e7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9c2d3ee9f2c76f518cffee0d7957a1559da828d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rel/Variantc101bf90af9c9797992a0fb858a0227da8193cd2a9898f5bcc7b3fe1f53f8e7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rel/Variantc101bf90af9c9797992a0fb858a0227da8193cd2a9898f5bcc7b3fe1f53f8e7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.CompleteLattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.GaloisConnection` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Rel](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/rel.md) | 48 | `declaration-track:327f3e9dcdfba5dc4fc5faba37039752d2b6b92b27fa60b8c4126c0a2a27bdcf` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/instance.md) | 53 | `declaration-track:40a53f476b022be2f23fe348c85aa5594d0b17873192b2b3ce0da7a358cc4004` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/instance-source-edition-2.md) | 54 | `declaration-track:417dace718d58a4a2de8dc57d1b4cb786f58d70e9588ebeb5d71761a6bffa0be` |
| 4 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/ext.md) | 61 | `result-track:b596099c88895341e5d685108cb55997243d846f24cf49d9f7681da0d46b3c9f` |
| 5 | `def` | [inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/inv.md) | 64 | `declaration-track:5ac8c27a9fa7e049c01571055af11f57fc06a8c8988b54a7b5b1d3b800d5192e` |
| 6 | `theorem` | [inv_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/inv-def.md) | 68 | `result-track:4b3858753556c7bb759ef827a77dbac259f8adc9bdf0c19f74913f2b69f5eb72` |
| 7 | `theorem` | [inv_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/inv-inv.md) | 72 | `result-track:aacfe9b3192dff600994854f4364d0d337c8f383ae082333d40661adfdc7db5f` |
| 8 | `def` | [dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/dom.md) | 78 | `declaration-track:c8f165376241f577f9e9837fd09bbd8ebd98fae96c9ac8596c7f4747a8787f45` |
| 9 | `theorem` | [dom_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/dom-mono.md) | 81 | `result-track:9d1c6c0c27aa2df324b08489848001f8c1f63ab5b4b37ed5fc184681c72d31f4` |
| 10 | `def` | [codom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/codom.md) | 85 | `declaration-track:9445b8b7804cb0eae47712729bb1ee83744e364229e8e1d49ffcf86c52bfc8bc` |
| 11 | `theorem` | [codom_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/codom-inv.md) | 88 | `result-track:9cb27d1b275142a333827c452cb420df18379f24643c00ba721c9556bbd3749d` |
| 12 | `theorem` | [dom_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/dom-inv.md) | 93 | `result-track:2cff003448d728b1feab4c9848afd31263b276529b4c85aa434a88b251aa3daf` |
| 13 | `def` | [comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/comp.md) | 99 | `declaration-track:b776ad2c8cc6367d978bdc4fca4f56d578e7c2620b605eb9ae7435aeb873fc1a` |
| 14 | `theorem` | [comp_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/comp-assoc.md) | 107 | `result-track:e2db2e3cab956cdd00ee11ce335135d4158548595904bcaf48e25e08489823ec` |
| 15 | `theorem` | [comp_right_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/comp-right-id.md) | 114 | `result-track:0e933bbdba87889363501ff34db00fd5b79c631db52ce4001a3bc843cc58cb1f` |
| 16 | `theorem` | [comp_left_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/comp-left-id.md) | 121 | `result-track:d1c7593a056fa7da4f89117ad2748fbe2e9f801ce702856451a3babaa02ca2b4` |
| 17 | `theorem` | [inv_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/inv-id.md) | 127 | `result-track:3381a4957b6b1c5743b2722339d800ad590803f72077c151d421c4ad098d5201` |
| 18 | `theorem` | [inv_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/inv-comp.md) | 132 | `result-track:71ceda2dea03f9336482aa2b3762faf2b0373765bf41eff849bcf0fd905d0d20` |
| 19 | `def` | [image](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/image.md) | 138 | `declaration-track:16b47ce755ea9821668827abb564fe50f4fcc0aa4e3d254e7fd570951ea342e3` |
| 20 | `theorem` | [mem_image](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/mem-image.md) | 141 | `result-track:f499cf9fac00cc88743169f30b20feaeaabce117e6c4f26bb852a76d2debb334` |
| 21 | `theorem` | [image_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/image-subset.md) | 145 | `result-track:ef0988889a5ac369cf65a954c56e4f91cb5cfc90b722c2c26795e37e235ab293` |
| 22 | `theorem` | [image_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/image-mono.md) | 149 | `result-track:973aedb825a03f8457a42ca3c1b91c97a2f07201bdebdc1babc3ceca6248146a` |
| 23 | `theorem` | [image_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/image-inter.md) | 153 | `result-track:70e58db9882019e22c6d53521ddcbc7a2291e54b33c2a9ab0d202f5833a55df4` |
| 24 | `theorem` | [image_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/image-union.md) | 157 | `result-track:92ef4d4afd22bb2f3f79ccce6afb38c1fcef018a0a39b5f7bdc362c89e4736b5` |
| 25 | `theorem` | [image_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/image-id.md) | 165 | `result-track:27ffcaa830455e73ab8724e9d00c313c285f415714a9e449486e2a0a704962fb` |
| 26 | `theorem` | [image_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/image-comp.md) | 170 | `result-track:549085d97ba2eab3817275275b56748436fc3f5970b7e1fee2540468d31863a2` |
| 27 | `theorem` | [image_univ](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/image-univ.md) | 176 | `result-track:96cd59059013a0b9c5077ea919500adc4a9eee73ccc417030d6c6e16b5c43059` |
| 28 | `def` | [preimage](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/preimage.md) | 182 | `declaration-track:8353e43f3ea5160fb35cd7bde939243413f4db4606f165de44544f8e0bab91b0` |
| 29 | `theorem` | [mem_preimage](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/mem-preimage.md) | 186 | `result-track:ffdf6460e4680a382e2aa581fd8d932178153828485f2f5cd2449fa8bba36f98` |
| 30 | `theorem` | [preimage_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/preimage-def.md) | 190 | `result-track:a567198dc1c7ee8a2073b7c3b648b47b612eb4a80ab66d0335f5a7132b673c26` |
| 31 | `theorem` | [preimage_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/preimage-mono.md) | 194 | `result-track:3043803e73a9b8550688144a6c645e21596fad937a4e34296b8e8b199d2190c0` |
| 32 | `theorem` | [preimage_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/preimage-inter.md) | 198 | `result-track:0f4025c0548ea64a71db795f1e853dcec47b67bd54e90c6fd2b74cb9e9690b69` |
| 33 | `theorem` | [preimage_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/preimage-union.md) | 202 | `result-track:9577191dfb13263d03c7c36a68a36f8f9a7cc6a01137888000fb12e5763750e1` |
| 34 | `theorem` | [preimage_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/preimage-id.md) | 206 | `result-track:bb1bab7bdb65ecc493f769add78dabc6137f7669ffbe31b8b905f082b52b52d7` |
| 35 | `theorem` | [preimage_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/preimage-comp.md) | 210 | `result-track:b111dfea3072f4b0678c101200973c8813c645587af4ee8a672c9979d6f98255` |
| 36 | `theorem` | [preimage_univ](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/preimage-univ.md) | 214 | `result-track:0f70a454fd85402e8edd991746b68c08257972af5a80c8b43f59681bc005e0fc` |
| 37 | `def` | [core](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/core.md) | 219 | `declaration-track:96bf21904bbcfc382e6e863a8482c63ce7650eef7ff3f0b4e25d753b1fea65c7` |
| 38 | `theorem` | [mem_core](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/mem-core.md) | 222 | `result-track:211013a2afe5b0c1f4032677d692c5ab916d9a557afd0b8aaee0855f199c2f2a` |
| 39 | `theorem` | [core_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/core-subset.md) | 226 | `result-track:aef103d08c3a80788cc3445e64d779710043358f137801fe2e0c6a016c3a43e7` |
| 40 | `theorem` | [core_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/core-mono.md) | 229 | `result-track:45c60adf2036e220b6bbc3d7db8c766b4dcbd01752a1a769116f3fad0b1f00cc` |
| 41 | `theorem` | [core_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/core-inter.md) | 233 | `result-track:1ab8fb8c25d1fb778163b717dece657eb341586af7a88cd360485711bcf3425f` |
| 42 | `theorem` | [core_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/core-union.md) | 237 | `result-track:74d0b2130274d2522e1da9a608d572eb58f1d84cf9c87da21dc7ba2092a447ea` |
| 43 | `theorem` | [core_univ](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/core-univ.md) | 242 | `result-track:631b48d49ddc2253abfb9ff623863e8719337b9d8d3c446b45f35469bbb358ac` |
| 44 | `theorem` | [core_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/core-id.md) | 246 | `result-track:f95906af131a4e05bf6b90f83a8e624a6ab51e2252b8535bc934e684e8f35148` |
| 45 | `theorem` | [core_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/core-comp.md) | 249 | `result-track:adb5a3dd50b2b7a577b5683221f89768d1f08be954367d7f26cdd937fa8a4b06` |
| 46 | `def` | [restrictDomain](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/restrictdomain.md) | 256 | `declaration-track:00bad3dcfcbdffbf5d0d9507afe2da017a14a2ffd9610600b6066ce8343c355f` |
| 47 | `theorem` | [image_subset_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/image-subset-iff.md) | 259 | `result-track:84a8ab5b51b2ecba2d6d70ca90716b14c0e82a1eaa1373ac471ad8254e57cb40` |
| 48 | `theorem` | [image_core_gc](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/image-core-gc.md) | 263 | `result-track:2bf3c6f14eb31f39d79017355094abd820c3961ca5d431be7f9b9a76f1cf4b81` |
| 49 | `def` | [graph](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/graph.md) | 272 | `declaration-track:507985e19ec127bf29d27d650cf4dbf4c327f368abe8168a327fe2dd9c7bb290` |
| 50 | `theorem` | [image_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/image-eq.md) | 281 | `result-track:500fe2126ca728dc6381eff9baf14060a164ae269742a4d0a99504fa65cb7b42` |
| 51 | `theorem` | [preimage_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/preimage-eq.md) | 285 | `result-track:721e2d1d2cb79294d0bf81f4a8dc74906a6eef3a6ccd362f316a2cf5573d9162` |
| 52 | `theorem` | [preimage_eq_core](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition1.lean/declarations/preimage-eq-core.md) | 289 | `result-track:7b4da5bb02bfee14ff7dfe8759a6a8c3a86d3f17a4877de6cf8aaa74dd7a0b2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=852c45cb08a84ea24f1d95f24ec534cc064d2e2299e87b1402d20328479daa75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rel/Variantc101bf90af9c9797992a0fb858a0227da8193cd2a9898f5bcc7b3fe1f53f8e7a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rel/Variantc101bf90af9c9797992a0fb858a0227da8193cd2a9898f5bcc7b3fe1f53f8e7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
