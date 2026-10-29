# Verification target: Dist Lat Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14f0779b72b3a0e12b120f9961cc58daabac1327",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant14390836beffda738637c9e5751a024c8663b3a6ed52f1a2347bc2276f95de0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14f0779b72b3a0e12b120f9961cc58daabac1327`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant14390836beffda738637c9e5751a024c8663b3a6ed52f1a2347bc2276f95de0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant14390836beffda738637c9e5751a024c8663b3a6ed52f1a2347bc2276f95de0d.lean.json)

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
| 1 | `structure` | [DistLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/distlat.md) | 28 | `declaration-track:0c9c249f318ff9e2ec849e082431a13298ef7e58722d41e09da89dce2444eb3f` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/instance-source-edition-3.md) | 39 | `declaration-track:db425e671680973f8779af5e3cd8326437513a456dcf11e559b8e41e967a5c51` |
| 3 | `abbrev` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/of.md) | 45 | `declaration-track:8920e3b97e5c143c53bef849d0d732a297c77f3adbeb7c25cb5d62bdc25220b6` |
| 4 | `def` | [delabOf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/delabof.md) | 50 | `declaration-track:105ca65ce864a33b3c40d8d98f642bd7c721ce94a5a5a2531757e270cab63ca0` |
| 5 | `structure` | [Hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/hom.md) | 54 | `declaration-track:8e417d61682ec32170e32f35d88e7262621c645d738ddf05dc498a7fc51c476b` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/instance.md) | 59 | `declaration-track:2078d6f87b90695309f9b7f2ab66b0c31cb0214529603f16d77fb4deaa915178` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/instance-source-edition-2.md) | 64 | `declaration-track:2e76e0fab5636b349da6fab5a7dbb13ce3bc23d96eb5313129d9badedcd2d65b` |
| 8 | `abbrev` | [Hom.hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/hom-hom.md) | 69 | `declaration-track:02553e1ef2a9f35c3b2aa5a24ca07fae083321d29e74a4c9e8982eaf92d29a84` |
| 9 | `abbrev` | [ofHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/ofhom.md) | 73 | `declaration-track:2f1b07c234dee1c66245cfd6efdc954a875c7ca62bc782566203e9f7001bc2b6` |
| 10 | `def` | [Hom.Simps.hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/hom-simps-hom.md) | 79 | `declaration-track:72261f7ade567a01aafb7054834d694c16c7d5464bccafc893a56222da0d2fe5` |
| 11 | `lemma` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/coe-id.md) | 89 | `result-track:2b75c1439b0eebd885ea62f6f1c62dc65457a5511706da92592965ac3de41daf` |
| 12 | `lemma` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/coe-comp.md) | 92 | `result-track:3a7e122f8b3475f6d5d4987e2d611e00ccd64a8101cac5ff0e0a4117059d588e` |
| 13 | `lemma` | [forget_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/forget-map.md) | 95 | `result-track:987a5f2e5e41dc5814b79cbbd38c3ed971570ccc63e4c88f19260633ebb01376` |
| 14 | `lemma` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/ext.md) | 99 | `result-track:a8b44cc5d3b26b3ca072e002b9aca051da860a452ada05baeca3b3bf024da4e1` |
| 15 | `theorem` | [coe_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/coe-of.md) | 103 | `result-track:d9e544460714f7a0ffb02475ced5062f218886963e71a300b603ddbf14090790` |
| 16 | `lemma` | [hom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/hom-id.md) | 106 | `result-track:46741b0303c01418bda917ae93ab1f9f00d260775a3f33a9f1e3f15626985d6a` |
| 17 | `lemma` | [id_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/id-apply.md) | 109 | `result-track:e59c3bc42bd56d60dc73e718a11538c237e4cdc4ef44abb7cc192bd84b3fff05` |
| 18 | `lemma` | [hom_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/hom-comp.md) | 113 | `result-track:ad98512bf40d42caf3f834491d116c67137aed943ccabc68cb994b9b509e22a8` |
| 19 | `lemma` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/comp-apply.md) | 117 | `result-track:0363987ca0776d4166a86eaaba2858ef7a762375ed1b457b0a01b524219d6ee6` |
| 20 | `lemma` | [hom_ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/hom-ext.md) | 121 | `result-track:d48b4f292e672cf0aa3a9784cff65d4e621c776c2f5f8deaf7eabdb05778ab60` |
| 21 | `lemma` | [hom_ofHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/hom-ofhom.md) | 125 | `result-track:d365cc418a38e902f6cfe6de76ebeb1d6fed3b68adf895a1cdb57a1be6b55301` |
| 22 | `lemma` | [ofHom_hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/ofhom-hom.md) | 130 | `result-track:181055ec569fdbb722524d5183cbeca0c0fe8e0b297f984b0508f59d14fc51a2` |
| 23 | `lemma` | [ofHom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/ofhom-id.md) | 134 | `result-track:7762da92d5880b7bb5dc406bdc9e24fa81903e3373d5375eefbc56dc79acc81b` |
| 24 | `lemma` | [ofHom_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/ofhom-comp.md) | 137 | `result-track:d68773707ddd39f3f880996a3cff0aae52e4e552a96c9ef46a48ef460f33f69d` |
| 25 | `lemma` | [ofHom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/ofhom-apply.md) | 142 | `result-track:88503c5332b80faf0d600fba3e446acc2ca61adc38e368f89da831349a13ee6d` |
| 26 | `lemma` | [inv_hom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/inv-hom-apply.md) | 146 | `result-track:f66834d52bc9bd003d4ec1d56d0174b2a0dee18087535e5f232f5238141983e2` |
| 27 | `lemma` | [hom_inv_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/hom-inv-apply.md) | 149 | `result-track:cb03abe5dcbc4001661e0f82041afe74731e33a12cf0f1938b76fdca29447832` |
| 28 | `instance` | [hasForgetToLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/hasforgettolat.md) | 152 | `declaration-track:00905d19fb1aa20ce339defae6525e02a8b3d8b1ca85952a18f04e3edd103282` |
| 29 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/iso-mk.md) | 159 | `declaration-track:a921a365e463615616c2220160fada7402aa7b86c2cce91abbe2eb7cd976a9ad` |
| 30 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/dual.md) | 165 | `declaration-track:5bda6ea3a9e12ea1b3d84deafaee973b23588dd5b2ef0b973ded967d53d7bb26` |
| 31 | `def` | [dualEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/dualequiv.md) | 171 | `declaration-track:9355a86bb0bb85c33bc915f82eb9b12e6a05b4867e0e96034ae483c462e66c64` |
| 32 | `theorem` | [distLat_dual_comp_forget_to_Lat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatPublic.lean/declarations/distlat-dual-comp-forget-to-lat.md) | 179 | `result-track:d2295b5581ee3d89457487a444a5b4e6fbf4d663458f57f69fd6731c96bfc1ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c4646dd79023b437e30028a90721906825e504bef3699870a8af43792a655e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant14390836beffda738637c9e5751a024c8663b3a6ed52f1a2347bc2276f95de0d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant14390836beffda738637c9e5751a024c8663b3a6ed52f1a2347bc2276f95de0d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
