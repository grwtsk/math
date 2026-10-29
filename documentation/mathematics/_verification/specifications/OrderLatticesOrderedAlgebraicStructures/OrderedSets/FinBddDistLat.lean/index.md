# Verification target: Fin Bdd Dist Lat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b2b36824784626cba3be61213440c3f5aa9c9f8",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLat/Varianta49a826a06e363111766c9706a3344c206d742f22837dc23fccd0afb66220064.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b2b36824784626cba3be61213440c3f5aa9c9f8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLat/Varianta49a826a06e363111766c9706a3344c206d742f22837dc23fccd0afb66220064.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLat/Varianta49a826a06e363111766c9706a3344c206d742f22837dc23fccd0afb66220064.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.BddDistLat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.FinPartOrd` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinBddDistLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/finbdddistlat.md) | 23 | `declaration-track:49cd77070c091d3568629d9721f8f0b2148021f3e7e149de351f6c21b5c92634` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/instance-source-edition-5.md) | 28 | `declaration-track:c17f44d669255ddeea1e818d4b0c7600036ca837a8c47633baef7a1bb1f10045` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/instance-source-edition-6.md) | 31 | `declaration-track:de46db16d4c03ae302f0ba75079d782293580db4a050a170704d798e8e66a4c1` |
| 4 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/instance-source-edition-2.md) | 34 | `declaration-track:5b510799e91f5de03d8505e1b8d144d3884f8cc69495f2fbf56ea6742b0cbd93` |
| 5 | `abbrev` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/of.md) | 40 | `declaration-track:64f290d127d3bde1cab5ef61f17d881cdbebe7517c4e419261c0e5e864bcf7df` |
| 6 | `abbrev` | [of'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/of-source-edition-2.md) | 44 | `declaration-track:dfadb21c71eb2c24a11215ec01f205059d08308fdf499f0e3edb01ff98f5e577` |
| 7 | `structure` | [Hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/hom.md) | 50 | `declaration-track:26d2504501788c8e25dfcf0e45275013a3e7a00e07bf53b6ffd5ae70309037d3` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/instance.md) | 55 | `declaration-track:29ebf334ac86380375e1a7e240f44fdddad7ee63096de294a1e2f01eb7788d69` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/instance-source-edition-4.md) | 60 | `declaration-track:b759cde248037f2fd534262f781cdbf0c921adb6b08541bb5879eb2bc85ae770` |
| 10 | `abbrev` | [Hom.hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/hom-hom.md) | 65 | `declaration-track:cdd92881c3ba251d9a1cc3581d0ac80133706b2d30097a941e8f8f3b5d789cc6` |
| 11 | `abbrev` | [ofHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/ofhom.md) | 69 | `declaration-track:3bb42d8ac8bbdeb741c2039963a7749254a0e8a1d255eb83d906327e0bdff3f5` |
| 12 | `def` | [Hom.Simps.hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/hom-simps-hom.md) | 77 | `declaration-track:7c4359b0d3cf82d4834d9cfb00366fca4ecbe8ed103b14411c892633dcc7596c` |
| 13 | `lemma` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/coe-id.md) | 87 | `result-track:ccb5401597351158bcefc98d33f14efe1cf7b8c20e661bb3a6c65c54490b850f` |
| 14 | `lemma` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/coe-comp.md) | 90 | `result-track:cfd8354a476fbaeb4124d42fa82a37c212f959d23ed8c29b812332960e9a0dab` |
| 15 | `lemma` | [forget_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/forget-map.md) | 93 | `result-track:dc3bdbeef51a5a41ead529df57d37bcf3b058a52ae7a1dacfc871bebe327398d` |
| 16 | `lemma` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/ext.md) | 97 | `result-track:3f4af821c2b9caec87d408ca57960a4410c368b0e8728dc4654b2469d75b3099` |
| 17 | `lemma` | [hom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/hom-id.md) | 101 | `result-track:7c217a47a20f2eaca36a849c4853887099e97227b3984c2adc609951dfe6e286` |
| 18 | `lemma` | [id_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/id-apply.md) | 104 | `result-track:eb5f20a37565c0c51a044d331f52680bfe1f53f3347bbc69233bca668cfd8eb2` |
| 19 | `lemma` | [hom_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/hom-comp.md) | 108 | `result-track:a6821a35f27b06507586aa1bd9e0306acca34ada2f494d3230ed85559a7041c9` |
| 20 | `lemma` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/comp-apply.md) | 112 | `result-track:f4a84cc2f5789d228e8ade0aaebed1162ba45bad4a86702d1b4681b5e1a6450b` |
| 21 | `lemma` | [hom_ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/hom-ext.md) | 116 | `result-track:8a4f2f48bfb129f122e2a1d72a211dfd8833b9866427e2ee8ffb91c6eba8df86` |
| 22 | `lemma` | [hom_ofHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/hom-ofhom.md) | 120 | `result-track:7cc738535670ee49de20604dca9efc48c7a91c3bde6413dc13abd08928551c16` |
| 23 | `lemma` | [ofHom_hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/ofhom-hom.md) | 125 | `result-track:5ed21eb1265fcdc56a8b6417482370556778e9d8cc181003e5d86f2bbf93a375` |
| 24 | `lemma` | [ofHom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/ofhom-id.md) | 129 | `result-track:ea6e38a28101cea54f609619998474fa203c02b9fc2d688ff995519a5aa4492d` |
| 25 | `lemma` | [ofHom_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/ofhom-comp.md) | 133 | `result-track:936e31727d78dce697b152f7779d62dd504808112ce804a44bc9024156b9a83f` |
| 26 | `lemma` | [ofHom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/ofhom-apply.md) | 139 | `result-track:269ebb41ff32e65052adffc6683a3e0dc037b1d554da97fc3d2e4edb201ee4d4` |
| 27 | `lemma` | [inv_hom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/inv-hom-apply.md) | 144 | `result-track:b0b5469c3f4ed8dbb27e268e339fbf9953f66f213dce1ce4e7f4c2572fecb7d3` |
| 28 | `lemma` | [hom_inv_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/hom-inv-apply.md) | 147 | `result-track:c422e5e089b0241839e458abb84dcf7f2dd00253ef934a217890fc508971a3b5` |
| 29 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/instance-source-edition-3.md) | 150 | `declaration-track:7719c4af919cc180c001e0d1931db910bee3d269d7ed80346eaba76ebfd136a6` |
| 30 | `instance` | [hasForgetToBddDistLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/hasforgettobdddistlat.md) | 153 | `declaration-track:0ef1f1eeda089a461d1003ba6e55e025c792c50666d861732ed88cbaa66e11d9` |
| 31 | `instance` | [hasForgetToFinPartOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/hasforgettofinpartord.md) | 157 | `declaration-track:ff43731ed2cbdb48c907d3c5e38f0598fadd5d35b03c5b96e6968950f55c0b22` |
| 32 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/iso-mk.md) | 164 | `declaration-track:9e86b4157dbda41b81d3b3fd7626ac805f2407096e49365daca946cac3022d46` |
| 33 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/dual.md) | 172 | `declaration-track:e56d8eaa600272aa1bf40fb12196aa8c3bf6589b72f1323fc4366782b53a1c0b` |
| 34 | `def` | [dualEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/dualequiv.md) | 178 | `declaration-track:001b4f0e0158c38e3afbdf235d68431589ee2f252121f53ff6201fc126feb4d3` |
| 35 | `theorem` | [finBddDistLat_dual_comp_forget_to_bddDistLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLat.lean/declarations/finbdddistlat-dual-comp-forget-to-bdddistlat.md) | 186 | `result-track:7677c1c5360c94688309813a4ef9e8add9b5f2d1d31a964477b9db433754c00a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=103d4fc5207ac4af4d317023b438d1951838aded3e46d74f3a24c15d49a8acf4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLat/Varianta49a826a06e363111766c9706a3344c206d742f22837dc23fccd0afb66220064.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLat/Varianta49a826a06e363111766c9706a3344c206d742f22837dc23fccd0afb66220064.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
