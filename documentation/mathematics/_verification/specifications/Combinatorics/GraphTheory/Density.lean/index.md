# Verification target: Density

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "899090a6dec7cb7039f4ab779cfb1cad782423ef",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Density/Variant5d89b713c4a6fdb7ad53ae365fbf25335f6e015406693eeb1b970aeb3cbc0e37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/Density.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/Density.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `899090a6dec7cb7039f4ab779cfb1cad782423ef`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Density/Variant5d89b713c4a6fdb7ad53ae365fbf25335f6e015406693eeb1b970aeb3cbc0e37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Density/Variant5d89b713c4a6fdb7ad53ae365fbf25335f6e015406693eeb1b970aeb3cbc0e37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Partition.Finpartition` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [interedges](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/interedges.md) | 46 | `declaration-track:232358a5e4264b4cf5714a15b530df4ab69d8c7917eaeb0e4a4431eb078d756c` |
| 2 | `def` | [edgeDensity](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/edgedensity.md) | 51 | `declaration-track:2a143d3ced310f9cb5a96fbe61f198d9e281df52cda24f00de1215757bdd9af2` |
| 3 | `theorem` | [mem_interedges_iff](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/mem-interedges-iff-source-edition-2.md) | 57 | `result-track:fdb7e74e7d240367f3a578b72c74029b7d6de3c5e2f6b748856a2683a09d4721` |
| 4 | `theorem` | [mk_mem_interedges_iff](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/mk-mem-interedges-iff.md) | 61 | `result-track:8e7372802693c0d3793db8029a1fde1fa2a56ca9dba987fdb7119d7a33a86ee3` |
| 5 | `theorem` | [interedges_empty_left](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/interedges-empty-left.md) | 66 | `result-track:19a085084e9eb09d54bb34e8d0a905aee53ddffd3cb84e52369168bcb60c2e89` |
| 6 | `theorem` | [interedges_mono](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/interedges-mono.md) | 70 | `result-track:a3abbfa46be932533a798c39682f4da56cf3ba9ec639cfdd4abcd81269e885f8` |
| 7 | `theorem` | [card_interedges_add_card_interedges_compl](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/card-interedges-add-card-interedges-compl.md) | 78 | `result-track:57a3de68d87d596fc4c9c75d0b7601dd81314613e76cde33b463789266f56fc3` |
| 8 | `theorem` | [interedges_disjoint_left](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/interedges-disjoint-left.md) | 85 | `result-track:84f5db12d0f1cab1f4092ee88a9211ee4c03d2c5041eeeaedd5520ffaff4ca21` |
| 9 | `theorem` | [interedges_disjoint_right](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/interedges-disjoint-right.md) | 93 | `result-track:270883d7f31b8521ce3615076d0ede946b2f58bc1e21e0ec68cd9d948e19cfb3` |
| 10 | `theorem` | [interedges_biUnion_left](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/interedges-biunion-left-source-edition-2.md) | 105 | `result-track:a2855b1a724bab949091552f7ab834c4230bc2a3a51b1b9c2409fd8bc6b12a96` |
| 11 | `theorem` | [interedges_biUnion_right](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/interedges-biunion-right.md) | 111 | `result-track:0ea0f175591e6ac6becf699016a9580cfe034055c62bd2b6f35b65d78e3c7f48` |
| 12 | `theorem` | [interedges_biUnion](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/interedges-biunion-source-edition-2.md) | 119 | `result-track:e3fb6a82f21937ac672e5e9c5ada27dd4fe58513a23b83f7b076808ff981f115` |
| 13 | `theorem` | [card_interedges_le_mul](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/card-interedges-le-mul-source-edition-2.md) | 127 | `result-track:bb4ec9a8026b479a809dcea9753d161bd40b8a0c95bb2efad241f385eda35a9d` |
| 14 | `theorem` | [edgeDensity_nonneg](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/edgedensity-nonneg.md) | 132 | `result-track:cb13da5bf253c9ed92f1cdf25b0240aef394f7f3f9f3c99ea638ce4551316e54` |
| 15 | `theorem` | [edgeDensity_le_one](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/edgedensity-le-one.md) | 136 | `result-track:ae1e6ed6c392bbed0c7a77a1f29d7e8866e350d7c835b16338414706bcdee58b` |
| 16 | `theorem` | [edgeDensity_add_edgeDensity_compl](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/edgedensity-add-edgedensity-compl.md) | 142 | `result-track:24b3d86eb4b9579c226ef3358dc14f338879a9d664d85e9b8c6bf21ec05d6d5c` |
| 17 | `theorem` | [edgeDensity_empty_left](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/edgedensity-empty-left-source-edition-2.md) | 150 | `result-track:9e6ec9866551ae435be839b762e8bb69fde820ab3222696a869431f3534bc2be` |
| 18 | `theorem` | [edgeDensity_empty_right](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/edgedensity-empty-right-source-edition-2.md) | 155 | `result-track:3db3980ee99fc0a9f5f2041f05ecaa4a32ddfffec02a61b90ae76bae6bbb6f05` |
| 19 | `theorem` | [card_interedges_finpartition_left](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/card-interedges-finpartition-left.md) | 159 | `result-track:491895a313e9a3bcf0117066a5fbee1fae9b4500f0a1972e77e11afec08fb3d9` |
| 20 | `theorem` | [card_interedges_finpartition_right](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/card-interedges-finpartition-right.md) | 167 | `result-track:eee9759780127b60b8176389e9046fdcc814d4cf403deda7f38afc4261d8fe43` |
| 21 | `theorem` | [card_interedges_finpartition](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/card-interedges-finpartition.md) | 175 | `result-track:f973b1ff8a86ff7456e5fb6003b6a966d816e394d47e2bf5d047cfe3fda9471e` |
| 22 | `theorem` | [mul_edgeDensity_le_edgeDensity](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/mul-edgedensity-le-edgedensity.md) | 183 | `result-track:0848a145e7a5a3259f9bd3ff9cf16fb205e205b36ce70118d8fbdc8eea674d2f` |
| 23 | `theorem` | [edgeDensity_sub_edgeDensity_le_one_sub_mul](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/edgedensity-sub-edgedensity-le-one-sub-mul.md) | 192 | `result-track:974a86402a6a1fa67da279ae7fcc534a90503688bde7d35b19d13ae7af6b4162` |
| 24 | `theorem` | [abs_edgeDensity_sub_edgeDensity_le_one_sub_mul](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/abs-edgedensity-sub-edgedensity-le-one-sub-mul.md) | 204 | `result-track:05aa8343d02f896705d0be07be7944969723ba980e8195cd8a8d2a36a3be7881` |
| 25 | `theorem` | [abs_edgeDensity_sub_edgeDensity_le_two_mul_sub_sq](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/abs-edgedensity-sub-edgedensity-le-two-mul-sub-sq.md) | 215 | `result-track:10efaeb8b87e7228778842fe8522f2786e51f365d006676dbe4a5cd14fa90cb7` |
| 26 | `theorem` | [abs_edgeDensity_sub_edgeDensity_le_two_mul](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/abs-edgedensity-sub-edgedensity-le-two-mul.md) | 247 | `result-track:758e8a791d5d6be492c868ae1c4f466a2d3e7c506bc93f52cdbd3a8173bc8dd5` |
| 27 | `theorem` | [swap_mem_interedges_iff](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/swap-mem-interedges-iff.md) | 269 | `result-track:01b01cae597f9f4f412cf95d14269c89afb90206b01e1e3d1d76c9b46975eebb` |
| 28 | `theorem` | [mk_mem_interedges_comm](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/mk-mem-interedges-comm-source-edition-2.md) | 274 | `result-track:7e0b14dfaa885d41f1d5d96047a015fc45d5bdc779c2b2e6626946201dfbc06b` |
| 29 | `theorem` | [card_interedges_comm](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/card-interedges-comm.md) | 278 | `result-track:54797a8366af9cdd294546a33969b83a41e2a59e65a04d1a77380a42f6b9afa5` |
| 30 | `theorem` | [edgeDensity_comm](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/edgedensity-comm-source-edition-2.md) | 284 | `result-track:8ca36ccb6195677d5e178ed2c5f893c2cd10e1b12662b96caf2b12359a42b9b3` |
| 31 | `def` | [interedges](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/interedges-source-edition-2.md) | 302 | `declaration-track:acf564c95b67d587f487e4f6ef43701ec4b20b9a029ccc576ec4e98351013b68` |
| 32 | `def` | [edgeDensity](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/edgedensity-source-edition-2.md) | 307 | `declaration-track:f0eb3ab8ad5f45e0f6ce8d4b6e991bb171920acdb962232efd88900e747871a0` |
| 33 | `theorem` | [interedges_def](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/interedges-def.md) | 311 | `result-track:8ef10ae30eac82e01b16a8a0dbc5994b5a38c64d913fe27266ec6992415cd24f` |
| 34 | `theorem` | [edgeDensity_def](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/edgedensity-def.md) | 316 | `result-track:445df9ef0665a0348656a1e8c81093aee162a77e5bb92804fd26cd483f2c6cba` |
| 35 | `theorem` | [card_interedges_div_card](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/card-interedges-div-card.md) | 322 | `result-track:efa77965384f249807ac4010e6688fcff9d614eadbc3f1f00759d1e71161ef58` |
| 36 | `theorem` | [mem_interedges_iff](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/mem-interedges-iff.md) | 327 | `result-track:1eb03825c17457411bcf9a20fb7bf11573e1deb3d6f39f809958e9837b31d476` |
| 37 | `theorem` | [mk_mem_interedges_iff](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/mk-mem-interedges-iff-source-edition-2.md) | 331 | `result-track:95c3719fb9d0ef59ac227fc6eb38f3bbf530deccec2df11c508a9d14ec24903a` |
| 38 | `theorem` | [interedges_empty_left](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/interedges-empty-left-source-edition-2.md) | 336 | `result-track:8495b774896fc6959e984451580735b48aa1c4b79cc9c85e3294493bd9bbbb95` |
| 39 | `theorem` | [interedges_mono](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/interedges-mono-source-edition-2.md) | 340 | `result-track:beb284b268fb817c0cb46e377b3f045fba9c3f5b39e7521d30b13b57890211df` |
| 40 | `theorem` | [interedges_disjoint_left](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/interedges-disjoint-left-source-edition-2.md) | 344 | `result-track:c846c2eb69c77218bb0b9961ec06f61c1a33e16a4cb488afc06226e4f4ad6d53` |
| 41 | `theorem` | [interedges_disjoint_right](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/interedges-disjoint-right-source-edition-2.md) | 349 | `result-track:4fafd27c3d2ca03faa7df8449c05d047e5cc6a765867eaa275cf78d377abe409` |
| 42 | `theorem` | [interedges_biUnion_left](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/interedges-biunion-left.md) | 358 | `result-track:1c693fa24eb95e2530189b504c3ff83faee2420b89e2802631a3efa714348261` |
| 43 | `theorem` | [interedges_biUnion_right](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/interedges-biunion-right-source-edition-2.md) | 363 | `result-track:5914b478cd5a9a550acdfd1b3462e09f06f35b176b39a949e651c4be1d859d69` |
| 44 | `theorem` | [interedges_biUnion](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/interedges-biunion.md) | 368 | `result-track:a7d3fcaf7c4a881cf30639697d2137256c897eda888363de84be179b4b76367c` |
| 45 | `theorem` | [card_interedges_add_card_interedges_compl](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/card-interedges-add-card-interedges-compl-source-edition-2.md) | 374 | `result-track:e0f5aaad721cb66807caa0fedc2917d318654c8358b2b4e4059251ddfdcccfbc` |
| 46 | `theorem` | [edgeDensity_add_edgeDensity_compl](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/edgedensity-add-edgedensity-compl-source-edition-2.md) | 385 | `result-track:b51a8149750760b1842792ea0a3507e1641fe46cfd58356c9bbe4d204ad8e508` |
| 47 | `theorem` | [card_interedges_le_mul](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/card-interedges-le-mul.md) | 395 | `result-track:39cf7e3b708a8662de2bb2f2880d270ad9ce990f822325b253f615de2b8d2781` |
| 48 | `theorem` | [edgeDensity_nonneg](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/edgedensity-nonneg-source-edition-2.md) | 399 | `result-track:f78779d034a24bfeda3746aa82391032a17fb078e5d8a7848232e36bee449bf0` |
| 49 | `theorem` | [edgeDensity_le_one](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/edgedensity-le-one-source-edition-2.md) | 403 | `result-track:f3ae7dc5e1486820ab3d54265ec797107b7f4a7c95495e77a6246b2faa0a6a80` |
| 50 | `theorem` | [edgeDensity_empty_left](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/edgedensity-empty-left.md) | 408 | `result-track:06e8ad467257ed7e456e2ceaed91a8e67ce58fd657b10711f2d0dcd75de587cd` |
| 51 | `theorem` | [edgeDensity_empty_right](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/edgedensity-empty-right.md) | 413 | `result-track:2d2356b5b34de6331c24b36b9e2986720ac9b053e7d73c528ab931a17bc5263a` |
| 52 | `theorem` | [swap_mem_interedges_iff](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/swap-mem-interedges-iff-source-edition-2.md) | 418 | `result-track:26ccf09bd218eb6f9058521413077d0eaf3a1c8d5236ef2fa23672f726896701` |
| 53 | `theorem` | [mk_mem_interedges_comm](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/mk-mem-interedges-comm.md) | 422 | `result-track:1148d92ba0b2897d7604db1ed3403c0ee293232b4b33486b39bd575c11f68577` |
| 54 | `theorem` | [edgeDensity_comm](../../../../../Combinatorics/GraphTheory/Density.lean/declarations/edgedensity-comm.md) | 426 | `result-track:684d907368d28f719658ba53a07d489078fe3fe57d08e1f8b12ed1dd0e4e3528` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f56cbd80d64d2daea58462bc0b841eece8954e87fe61e736b81d821264258900 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Density/Variant5d89b713c4a6fdb7ad53ae365fbf25335f6e015406693eeb1b970aeb3cbc0e37.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Density/Variant5d89b713c4a6fdb7ad53ae365fbf25335f6e015406693eeb1b970aeb3cbc0e37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
