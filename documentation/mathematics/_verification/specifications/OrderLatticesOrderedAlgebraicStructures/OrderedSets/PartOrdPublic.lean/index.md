# Verification target: Part Ord Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfd8c20088d27b8e9bbdaf30a7df279a43b1a839",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrd/Variant10d9dc435d751b8e9ce36ab3076c6105c227fdc860d9d277212c8af468f79075.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfd8c20088d27b8e9bbdaf30a7df279a43b1a839`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrd/Variant10d9dc435d751b8e9ce36ab3076c6105c227fdc860d9d277212c8af468f79075.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrd/Variant10d9dc435d751b8e9ce36ab3076c6105c227fdc860d9d277212c8af468f79075.lean.json)

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
| 1 | `structure` | [PartOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/partord.md) | 26 | `declaration-track:cff553aba8dbf9b404a8708b9a25220a9186d1f913859528eecb3b553c225d02` |
| 2 | `def` | [delabOf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/delabof.md) | 42 | `declaration-track:5731ad4f60797f245bb99f8df8e3953e4b7eeb47d20eb000d3af3b3f4208441d` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/instance-source-edition-3.md) | 44 | `declaration-track:5fa3eddc918bad0865faf9421ee184706205d03a2bba57a8222691694ea1fc3e` |
| 4 | `structure` | [Hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/hom.md) | 51 | `declaration-track:2670cec9bb74e9437e8e052bb4ba208d5ceba2ea30ad8eaf7a79c62b786bdb01` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/instance-source-edition-2.md) | 56 | `declaration-track:302f607280dc41c9579f32cc524bf501715cb15c3620f18ee3ed3ade2a8d37e8` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/instance.md) | 61 | `declaration-track:08c8432d940def726d695e2ae444373310d7f0ab798a265b015e1ac2615ce3ef` |
| 7 | `abbrev` | [Hom.hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/hom-hom.md) | 66 | `declaration-track:4c57a21fecfcfa3230751f73e7df2d933cee51eac57408a05d346f94546a63e8` |
| 8 | `abbrev` | [ofHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/ofhom.md) | 70 | `declaration-track:c1034b58384cc3aa0a41209435dce5f87977e024ea09a91fb6e6dfa05c3796c0` |
| 9 | `def` | [Hom.Simps.hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/hom-simps-hom.md) | 75 | `declaration-track:80fdee38e5d905b5a10b8f0cb5770c2b9db151bb2a19a359301cbdb6d2af6533` |
| 10 | `lemma` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/coe-id.md) | 84 | `result-track:cdfcca3c0beb4a9d5cb8bf272dabd4e92b3b5969ec1cfa4ec9c2781669f72001` |
| 11 | `lemma` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/coe-comp.md) | 86 | `result-track:021203657083fd25da1d59220ee8a9f9db865436d67cf4c5ec2330b7f43554a5` |
| 12 | `lemma` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/ext.md) | 89 | `result-track:5b67e15defebc9dc23920b654621837012cc0857bfc2502c970552947ca53a54` |
| 13 | `theorem` | [coe_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/coe-of.md) | 93 | `result-track:2bb87007fa095666deb6bec993adc439245f7ceaa952f3e3d8c0db5d0858bbc0` |
| 14 | `lemma` | [hom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/hom-id.md) | 96 | `result-track:a27ba3f600240a45c72d5306e5cfac45167dc66e9a19f0d91fd95689d538b979` |
| 15 | `lemma` | [id_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/id-apply.md) | 99 | `result-track:6346a1ac6b467be751a0ddaf90809c671c711e6d6bde536604884cc3aaba3201` |
| 16 | `lemma` | [hom_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/hom-comp.md) | 103 | `result-track:19d8aa1729d02b5d7a3d030934ee00fe2e070a327a965ccf02d8f33d38f88ccb` |
| 17 | `lemma` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/comp-apply.md) | 107 | `result-track:d5c107a89bb5321d4dac1ff662714d1cd53f2a7be3e9b25f23606ecf02d66786` |
| 18 | `lemma` | [hom_ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/hom-ext.md) | 111 | `result-track:fa2a038ec941d382739ff8a9022027b12e05412b9df5427df3a8b35e261f1b09` |
| 19 | `lemma` | [hom_ofHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/hom-ofhom.md) | 115 | `result-track:5a86faa6e46ca510d794a7c2cc69038e7ebb22038619453e4dc267a77b32aa0e` |
| 20 | `lemma` | [ofHom_hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/ofhom-hom.md) | 119 | `result-track:d3f3be2f8e26b3f5aec223bd9d3e5f938f8b6cc4ac233bd8f97bdeb64ea5323d` |
| 21 | `lemma` | [ofHom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/ofhom-id.md) | 122 | `result-track:feaf7370ffeefb54d7476a3c1a925d752846505088e616b66812fa4028a85691` |
| 22 | `lemma` | [ofHom_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/ofhom-comp.md) | 125 | `result-track:39fb40634c19457304b7910922657a698f3e925d191093b15adaabedf7e1804a` |
| 23 | `lemma` | [ofHom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/ofhom-apply.md) | 130 | `result-track:803f662f2051f1e8b46005803ae1fb2f800878555266114fabb2bdf40dae3db5` |
| 24 | `lemma` | [inv_hom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/inv-hom-apply.md) | 133 | `result-track:ce1e57b5d68b3cd112c4d2137ed9fd7f06fe21a6df7e5e2eb4d8065ef45e2867` |
| 25 | `lemma` | [hom_inv_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/hom-inv-apply.md) | 136 | `result-track:fe542c8659461d217a26e89b3cfc205626c98e7f312cf715da3957132a29ecd0` |
| 26 | `instance` | [hasForgetToPreord](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/hasforgettopreord.md) | 139 | `declaration-track:bf40ddae7225d56f548f2e2387a6fb6afb580fcff3d9c85fc9517483df549c7a` |
| 27 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/iso-mk.md) | 145 | `declaration-track:fd8ee269204de17f488e06383968c4e334287d119274a187741d03367c2974e5` |
| 28 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/dual.md) | 151 | `declaration-track:3cc1dd919319492865772e12e8c3900c411283566eff8168c33cd0dc759e3ad4` |
| 29 | `def` | [dualEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/dualequiv.md) | 157 | `declaration-track:a5c99ce9e35faea7280fe8a3b4b302c4adf94b904fab5b4d6fe5c0d5790ba607` |
| 30 | `def` | [uliftFunctor](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/uliftfunctor.md) | 165 | `declaration-track:4f2eef13490e213938275cc20b7c35c899c8e1023eeb374b199013b460576f23` |
| 31 | `theorem` | [partOrd_dual_comp_forget_to_preord](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/partord-dual-comp-forget-to-preord.md) | 172 | `result-track:8e14d06b3ad5437bb1e73e8ee9238f5b5157c73f8a0c15584033ccaa7da10378` |
| 32 | `def` | [preordToPartOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/preordtopartord.md) | 178 | `declaration-track:c63774e31051b7a7f02bae06a8bddde1534e422b38c1fa6498b4b2e6c9c6b319` |
| 33 | `def` | [preordToPartOrdForgetAdjunction](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/preordtopartordforgetadjunction.md) | 192 | `declaration-track:fc2e32a50bfffce76d3160d944a491461ba8eca8e70146715d26fff4792c31a4` |
| 34 | `def` | [preordToPartOrdCompToDualIsoToDualCompPreordToPartOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/preordtopartordcomptodualisotodualcomppreordtopartord.md) | 209 | `declaration-track:783c4319eab196bb6909049822b8a4cab89508ce8543a930b282dc06f82f501d` |
| 35 | `lemma` | [preordToPartOrdCompToDualIsoToDualCompPreordToPartOrd_inv_app_hom_coe'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrdPublic.lean/declarations/preordtopartordcomptodualisotodualcomppreordtopartord-inv-app-hom-coe.md) | 216 | `result-track:ee7f2103df6c5c8f001fd98ff937b201584814fba9feb5c30602c4efd3d2343c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb18fded48ab02b191311b15823b38d0bf8942a428dd7ff464159f8005131bfa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrd/Variant10d9dc435d751b8e9ce36ab3076c6105c227fdc860d9d277212c8af468f79075.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrd/Variant10d9dc435d751b8e9ce36ab3076c6105c227fdc860d9d277212c8af468f79075.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
