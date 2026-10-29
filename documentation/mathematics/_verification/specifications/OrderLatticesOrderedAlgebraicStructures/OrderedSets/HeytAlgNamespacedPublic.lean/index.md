# Verification target: Heyt Alg Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e22da7d5f39e51ea1bfa93afd75d4e55af320ed",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlg/Variantee1257e4280dc8a6cb0c964905cb30fc422a548307e245d7338930bb4063f1c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e22da7d5f39e51ea1bfa93afd75d4e55af320ed`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlg/Variantee1257e4280dc8a6cb0c964905cb30fc422a548307e245d7338930bb4063f1c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlg/Variantee1257e4280dc8a6cb0c964905cb30fc422a548307e245d7338930bb4063f1c5.lean.json)

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
| 1 | `structure` | [HeytAlg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/heytalg.md) | 33 | `declaration-track:587c619479a9e7bf95f850758db6d7d955c01d9c0c478c66ec035e4ce65202ff` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 44 | `declaration-track:a4a96403bc831d2b6e6037db0829a6a781ba000ec38b5fa90945a7e6ded173ee` |
| 3 | `abbrev` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/of.md) | 50 | `declaration-track:8550ef0e204c6428857804805bcff90f0a9ef94b50a7bbdfc71182d926906b19` |
| 4 | `def` | [delabOf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/delabof.md) | 55 | `declaration-track:8f99ffc62901ba606588bf22a03ddb8a440ca1a71df90f6800f14a50cb32125f` |
| 5 | `structure` | [Hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/hom.md) | 59 | `declaration-track:28574db50ee15a51842ff213da2cccf86b837cd5ddf0a9f3ebc3f0e7c5421b93` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 64 | `declaration-track:e1326be994b1a84faf969c4819a5123df0e89f0f17e8cd766747c5fdc20b1d8b` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/instance.md) | 69 | `declaration-track:34b190d08b8f4610cf4d72a7bf01532ca9b2e98d9ab5ba320570053a0deac071` |
| 8 | `abbrev` | [Hom.hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/hom-hom.md) | 74 | `declaration-track:96909b3a4816b33b05c6ffc06750f6e3de68788e2032c859956edbd0a6925131` |
| 9 | `abbrev` | [ofHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/ofhom.md) | 78 | `declaration-track:325d0bbaa5c6597b6d73be511f5a5c9d80e8ad13830df519881a21a4e900a5a8` |
| 10 | `def` | [Hom.Simps.hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/hom-simps-hom.md) | 84 | `declaration-track:b4135f1495ff7e966b403e4420dabac555e078b32c35195ffd14c4a8293c8617` |
| 11 | `lemma` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/coe-id.md) | 94 | `result-track:3d1ba5b10e5c2c9eef753a5b55d6284ee1506366d9f47042797b897bc5bbf2b0` |
| 12 | `lemma` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/coe-comp.md) | 97 | `result-track:2a58ebde076760970504e9fb808a2531fc715a808fdb2e3937d95c03fbd08628` |
| 13 | `lemma` | [forget_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/forget-map.md) | 100 | `result-track:859c92ea09b041bbc6cd5dbfad5d3a8f1f27ba0d64424687bfdcf92876098373` |
| 14 | `lemma` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/ext.md) | 104 | `result-track:97f722360dc1b5f938acb4e822be503a592000c669744ce86eee1d3bfb5c77fa` |
| 15 | `theorem` | [coe_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/coe-of.md) | 108 | `result-track:e538f173385de181da25e14a75799020a07091826eeb135e78641cdaf8dd12a8` |
| 16 | `lemma` | [hom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/hom-id.md) | 111 | `result-track:8ae2ef550ca891b99c814ef7824040334d0c8deb5548d8896944f37f29470604` |
| 17 | `lemma` | [id_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/id-apply.md) | 114 | `result-track:8eebbc2cd46ecb4675a8fdfbcf6d6da6e5a2ec92b2ab49d5591b2bb968412b8d` |
| 18 | `lemma` | [hom_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/hom-comp.md) | 118 | `result-track:640418a7677ae4133a55f8202fcd834983bd33a59502d134ebdf495f7ee4e2b3` |
| 19 | `lemma` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/comp-apply.md) | 122 | `result-track:697816ff9375705bbf43032200854c14e520ae1d0c4b520efc55964235022951` |
| 20 | `lemma` | [hom_ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/hom-ext.md) | 126 | `result-track:a79cf77a3c9a67900d50a52cfad66c18a13621ae0e4da1f653d3b8a6021fe6e3` |
| 21 | `lemma` | [hom_ofHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/hom-ofhom.md) | 130 | `result-track:7c97a367162ebda3af22fca9b264759e673131467b6427574629a7e365ddd624` |
| 22 | `lemma` | [ofHom_hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/ofhom-hom.md) | 135 | `result-track:98e41d206e9df271abc50325e1c73438c0b5adf9bbac4c07e407d20563574ad2` |
| 23 | `lemma` | [ofHom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/ofhom-id.md) | 139 | `result-track:24e35cf540dec4209065e16bb715d287c1ca3ba2d37d8c415e0e248292ae0354` |
| 24 | `lemma` | [ofHom_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/ofhom-comp.md) | 142 | `result-track:b30af499b2a37c14ce2d23c010e5949adc4fc4f2fd36296d8ada1a3263ee01a5` |
| 25 | `lemma` | [ofHom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/ofhom-apply.md) | 147 | `result-track:ade2ff65cc2c6de3a95780b535478e8562615eaad5de1862c95434a9a1e05e56` |
| 26 | `lemma` | [inv_hom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/inv-hom-apply.md) | 151 | `result-track:5938851dcf57c26936907dbbce49240a591584b6fa71440a28317103c9eb8dc3` |
| 27 | `lemma` | [hom_inv_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/hom-inv-apply.md) | 154 | `result-track:8dbd8b2f3d8e689022231b13caae464e10cd8282e4883b2d679b7428d6300fe2` |
| 28 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 157 | `declaration-track:525b1b7ce61e90eb766b307d0ff9b73a887d19351175d0f471f88a949e1e5387` |
| 29 | `instance` | [hasForgetToLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/hasforgettolat.md) | 161 | `declaration-track:ce0fd790742ae6581436da094c71fd9a99e61339d90c251e879508c7f90dafc3` |
| 30 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespacedPublic.lean/declarations/iso-mk.md) | 167 | `declaration-track:d31501ae4c4030a4eecf36cff58c839e960f419b49faba68b4acda570437187b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d075742a9000e5557ae1fe4710ef0ac9545ce895a2c621c97ab30d6e48ec0c05 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlg/Variantee1257e4280dc8a6cb0c964905cb30fc422a548307e245d7338930bb4063f1c5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlg/Variantee1257e4280dc8a6cb0c964905cb30fc422a548307e245d7338930bb4063f1c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
