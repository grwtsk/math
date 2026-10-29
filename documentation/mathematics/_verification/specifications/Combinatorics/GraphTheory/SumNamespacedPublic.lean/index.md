# Verification target: Sum Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ccfc2b20da2f28ff6d3e9a28d350cc3c4fc1353",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantd61b533e47ba5e8e48fb9e41be3a74822af56e22940a53f1ac74f1b7906ce39d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ccfc2b20da2f28ff6d3e9a28d350cc3c4fc1353`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantd61b533e47ba5e8e48fb9e41be3a74822af56e22940a53f1ac74f1b7906ce39d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantd61b533e47ba5e8e48fb9e41be3a74822af56e22940a53f1ac74f1b7906ce39d.lean.json)

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
| 1 | `def` | [sum](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/sum.md) | 44 | `declaration-track:73a26cfa8339d4850ff5667c6d392ca6cf59b908e8738c71267bfae48d4de365` |
| 2 | `theorem` | [sum_adj_inl](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/sum-adj-inl.md) | 58 | `result-track:eee403bd8efd49cda2078521a9eeb1b4c8e6b0867644a278174c1a56534f84a9` |
| 3 | `theorem` | [sum_adj_inr](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/sum-adj-inr.md) | 61 | `result-track:2dfb0cdd539e72188c327e919e14c897592f919a5c53545daf90edd630037197` |
| 4 | `theorem` | [map_inl_sup_map_inr](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/map-inl-sup-map-inr.md) | 64 | `result-track:1ba53758cd971f8b5961e2fec83681535156a76aacf8f42ea1bd01299c2bd1ed` |
| 5 | `theorem` | [map_inl](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/map-inl.md) | 67 | `result-track:61a7948a76cc4f01143cb1682bacbfdaab6cefeaab2198af413a8a6d22ec2922` |
| 6 | `theorem` | [map_inr](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/map-inr.md) | 70 | `result-track:951686ca4f4c8cd022748dd643d088542732edfd9b3b2c19e0b99943b12dd69a` |
| 7 | `def` | [Iso.sumComm](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/iso-sumcomm.md) | 75 | `declaration-track:ea931824bc45eb7b8e1990f56c650f722c18908356cedcc27f51ef092577dadd` |
| 8 | `def` | [Iso.sumAssoc](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/iso-sumassoc.md) | 80 | `declaration-track:08d369cf55b066d48fc1a39c4199070f3014847988811bcfe4a866fcf064d5b5` |
| 9 | `def` | [Embedding.sumInl](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/embedding-suminl.md) | 87 | `declaration-track:42822123ff9dc94ced1d3d68431562bc1dde73defc9b277daa1588dfd42348cc` |
| 10 | `def` | [Embedding.sumInr](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/embedding-suminr.md) | 95 | `declaration-track:cc6db46fc881925b75fcd020e62541060b09fbfb1d1253665b8b8d4d8ca6c1fa` |
| 11 | `def` | [Hom.sum](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/hom-sum.md) | 103 | `declaration-track:fc8035450700730f98eb4a45c417b3cffab0d19a9e927f7e8e8b69ee1185175e` |
| 12 | `lemma` | [Hom.sum_comp_sumComm](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/hom-sum-comp-sumcomm.md) | 107 | `result-track:44db3b304103bef89ce85effb639221f7ed23fffd919e824f10342dc2309fde9` |
| 13 | `lemma` | [Hom.sum_sum_comp_sumAssoc](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/hom-sum-sum-comp-sumassoc.md) | 111 | `result-track:03134fe11d563633bbdb73047e742b5c459cbab7efc1c5f6473ed47129ad2596` |
| 14 | `def` | [Embedding.sum](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/embedding-sum.md) | 119 | `declaration-track:541bd05773fc5f7213555cb35576b3a2ff143d7202b6a5c57c65509a490e4bdc` |
| 15 | `lemma` | [Embedding.toHom_sum](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/embedding-tohom-sum.md) | 124 | `result-track:ec2f96098bd4759f685b17c8ace9096dc6a9cf65979d3662f5491d1345f32182` |
| 16 | `lemma` | [Embedding.sum_comp_sumComm](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/embedding-sum-comp-sumcomm.md) | 127 | `result-track:ea592a8d031ccef2a84101b8d88163a0e40c2932287afef1f06573d79ce7d791` |
| 17 | `lemma` | [Embedding.sum_sum_comp_sumAssoc](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/embedding-sum-sum-comp-sumassoc.md) | 131 | `result-track:788c485fcc27d769363d405a63adb66ed2b73bd3576f77d5b46b16be4f3db735` |
| 18 | `def` | [Iso.sumCongr](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/iso-sumcongr.md) | 139 | `declaration-track:7397c5f80fcd448c9416145cb1ea83553551c227bade5ae7de980f2bd163f2eb` |
| 19 | `lemma` | [Iso.toHom_sumCongr](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/iso-tohom-sumcongr.md) | 143 | `result-track:8c9a144e9c949176f3d95720ec334639941fc5808046c8ca1454633e69e57830` |
| 20 | `lemma` | [Iso.toEmbedding_sumCongr](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/iso-toembedding-sumcongr.md) | 146 | `result-track:55c975fb8a323449bcc12e5f8e3cd63601d69eaef851bacaafc00ea12889ebb7` |
| 21 | `lemma` | [Iso.sumComm_comp_sumCongr](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/iso-sumcomm-comp-sumcongr.md) | 149 | `result-track:42a47a2c672ab66d1211ac3011b42a75ee8128bfd9cffa6f0a43d5a5f913ef59` |
| 22 | `lemma` | [Iso.sumAssoc_comp_sumCongr](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/iso-sumassoc-comp-sumcongr.md) | 153 | `result-track:5e6f7e3da511ac8d17221c363891a04e4fa1c3297f818810829da00bc2b76de8` |
| 23 | `def` | [edgeSetSumEquiv](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/edgesetsumequiv.md) | 160 | `declaration-track:fda8757eddaee4bfcc18e7f7d36b52f3e56f805fe4e11ff52b3aa5fd0e685200` |
| 24 | `lemma` | [not_adj_sum_inl_inr](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/not-adj-sum-inl-inr.md) | 176 | `result-track:3f76f12fd273709342ed1f06205b7c480ada84976bfcb8e2d2366ba7e1e5f872` |
| 25 | `lemma` | [not_reachable_sum_inl_inr](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/not-reachable-sum-inl-inr.md) | 178 | `result-track:64acd76b728cb67cf44e7fb6826fc50587f81c0f02d508e6a36503676dd7da9d` |
| 26 | `lemma` | [not_preconnected_sum](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/not-preconnected-sum.md) | 188 | `result-track:7fcd5c1eb44617856bd9ec88e7a108d973d9b2ab29613f36430c29c0654b9f51` |
| 27 | `lemma` | [not_connected_sum](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/not-connected-sum.md) | 191 | `result-track:5468bfbd0f121a1a64404ad051d2b9b37ac706e5ab9c7ec621afc24318afc03c` |
| 28 | `lemma` | [Reachable.sum_sup_edge](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/reachable-sum-sup-edge.md) | 194 | `result-track:5f6aa0e6b552786deac29c843c7c53fa9921ee7657f0c170738f038ba79721f4` |
| 29 | `lemma` | [Preconnected.sum_sup_edge](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/preconnected-sum-sup-edge.md) | 199 | `result-track:fa1a1e2a7abaf73c9e8d4385d153c6167cc137716d9c6a95a3c6465187a7ecdd` |
| 30 | `lemma` | [Connected.sum_sup_edge](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/connected-sum-sup-edge.md) | 207 | `result-track:8cbbb2b36970d6db1a395f87719ee81e4bf482cd5966cdefd57c260daff0fb4a` |
| 31 | `def` | [Coloring.sum](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/coloring-sum.md) | 212 | `declaration-track:e5af4eac19a8eadf24e5a6f5d5b86999076029d8c9c37f1ddab12cb181b7d2bd` |
| 32 | `def` | [Coloring.sumLeft](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/coloring-sumleft.md) | 217 | `declaration-track:56a83e51d9a6d65973734e4c53dc6b8658db0893dc4237e4880ded88cb0a12be` |
| 33 | `def` | [Coloring.sumRight](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/coloring-sumright.md) | 220 | `declaration-track:3a4f1e4ff815f27e374e846483832287d8a69b1bad0e8c1819c8e18718788b23` |
| 34 | `theorem` | [Coloring.sumLeft_sum](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/coloring-sumleft-sum.md) | 223 | `result-track:9d4266eb88e90896e0a19b4f2890aeb6b3509f21ccdce16d94aaf325713d364f` |
| 35 | `theorem` | [Coloring.sumRight_sum](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/coloring-sumright-sum.md) | 227 | `result-track:64d202cde0536c4911e1a630f409bae84df19268de5aeecc87cab86eaba0c9ad` |
| 36 | `theorem` | [Coloring.sum_sumLeft_sumRight](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/coloring-sum-sumleft-sumright.md) | 231 | `result-track:c3e26de4df846115cb4d666b30b21f7242e9514e4e9908c674da3b4b0e325532` |
| 37 | `def` | [Coloring.sumEquiv](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/coloring-sumequiv.md) | 235 | `declaration-track:1a50d598600489cc31c3570eb13ead71fefa9ad4efaf6be117f29b38ce3549fa` |
| 38 | `def` | [Coloring.sumFin](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/coloring-sumfin.md) | 242 | `declaration-track:3e4ac8e85c947cd7c58d45df0f9dfbadaf13b33cc43c2e8308d65930209789f8` |
| 39 | `theorem` | [Colorable.sum_max](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/colorable-sum-max.md) | 247 | `result-track:0ab179d5e1937ee7971eaf99efb154f229a1672f004546a024b851ae16a58119` |
| 40 | `theorem` | [Colorable.of_sum_left](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/colorable-of-sum-left.md) | 250 | `result-track:733cafb0e9e96128cba30edc27689a9f676632a33005f3ba1b2116e29a37fa18` |
| 41 | `theorem` | [Colorable.of_sum_right](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/colorable-of-sum-right.md) | 253 | `result-track:88baa5ec152c1950d6ea542e20e532940faa240bdde802aa01edfc3e3fdfcf21` |
| 42 | `theorem` | [colorable_sum](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/colorable-sum.md) | 257 | `result-track:e4f896cff15aca71826c270819e6b5bd107e963fe749fd20af9b8a4f21862acf` |
| 43 | `theorem` | [chromaticNumber_le_sum_left](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/chromaticnumber-le-sum-left.md) | 261 | `result-track:d4fc5b9b1fac7dd4f19b48bbe4c80c043eef45082372a3f355bc2c1326d0a62f` |
| 44 | `theorem` | [chromaticNumber_le_sum_right](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/chromaticnumber-le-sum-right.md) | 264 | `result-track:82ad7b2582aeafd2224207ea11cf8ee0375b5d24b6f2cb6258b20461c110dfc3` |
| 45 | `theorem` | [chromaticNumber_sum](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/chromaticnumber-sum.md) | 268 | `result-track:15b17da76ac7d03fc0a1d7bc7be0760316d18ba37927ddfd6c665ee613a50e5e` |
| 46 | `lemma` | [neighborSet_sum_inl](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/neighborset-sum-inl.md) | 278 | `result-track:616b25a256c975908154561361431ade0b273ea5bfdc39ba67b9ab818f85b484` |
| 47 | `lemma` | [neighborSet_sum_inr](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/neighborset-sum-inr.md) | 281 | `result-track:1152cfb701928d2489f43df5295a788a32994b2b681a684ea2c3e0c91d7394a5` |
| 48 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SumNamespacedPublic.lean/declarations/instance.md) | 284 | `declaration-track:d78320a8a4262d9cf35e3643af77073eb459ab68e16ccd8d69384afff7e68537` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1ae1f16a63364067bccda583de979bbb6c09a5500fff685c9dca2f709476fb47 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantd61b533e47ba5e8e48fb9e41be3a74822af56e22940a53f1ac74f1b7906ce39d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantd61b533e47ba5e8e48fb9e41be3a74822af56e22940a53f1ac74f1b7906ce39d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
