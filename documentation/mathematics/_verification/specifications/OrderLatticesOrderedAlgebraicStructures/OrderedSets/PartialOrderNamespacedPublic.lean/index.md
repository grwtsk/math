# Verification target: Partial Order Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b21e8e6af038c8d51bb44e3f01cd2f656ea473ec",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant034cd6e726da0089b3839ecfae0713e463d2b154673db11882372a7f42faabab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b21e8e6af038c8d51bb44e3f01cd2f656ea473ec`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant034cd6e726da0089b3839ecfae0713e463d2b154673db11882372a7f42faabab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant034cd6e726da0089b3839ecfae0713e463d2b154673db11882372a7f42faabab.lean.json)

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
| 1 | `class` | [Preorder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/preorder.md) | 53 | `declaration-track:1286cb6b6eb050324054311e29fcf469d59203a7641f27984a06ee7af8760e61` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/instance.md) | 61 | `declaration-track:18b4f97610cdd2c9f554440ad7f5b0571ff78b43102b2dfdba9f1e2dc45f66fa` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 64 | `declaration-track:d18da83926e634951150f6d062123a715d2d9ffc94f66659316f0b40b1b5c40a` |
| 4 | `lemma` | [le_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/le-refl.md) | 71 | `result-track:b83513c56a7f14ee3f088365e2c3852d6c9c58dc34b29eea1dc49e01a134e70d` |
| 5 | `lemma` | [le_rfl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/le-rfl.md) | 74 | `result-track:921ac33e0432833ef36afb00ef5d9a3a5774a9396d1c48798f85211826e1879c` |
| 6 | `lemma` | [le_trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/le-trans.md) | 77 | `result-track:134226bcce9193e3e78edbe76923c8defaa41690201282f791da2d263587e785` |
| 7 | `lemma` | [ge_trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/ge-trans.md) | 80 | `result-track:ceb2e41eb22fc6703c1dc64b2ca4ce9ff4da32db81960969f1c76b7f434368df` |
| 8 | `lemma` | [lt_iff_le_not_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/lt-iff-le-not-ge.md) | 83 | `result-track:00056d5a67024d9dda6b0f50846d5baff768e7cf08abd62ddc1fc2fbebca31ff` |
| 9 | `lemma` | [lt_of_le_not_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/lt-of-le-not-ge.md) | 86 | `result-track:4619702d89574ff62621d12c7eff8ed9adc243e11fa02c44ccdbc6a5d142ea42` |
| 10 | `lemma` | [le_of_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/le-of-eq.md) | 88 | `result-track:1ffc941595e4973ac4c4993fe82c88064571bb5bbe02eb949b409af8b72ad8d8` |
| 11 | `lemma` | [le_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/le-of-lt.md) | 89 | `result-track:30969e1ce0edaf8f0d1f9fcfc2c1e5dcbc443c8e4609b8500f0bf98b50253aa9` |
| 12 | `lemma` | [not_le_of_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/not-le-of-gt.md) | 90 | `result-track:e4c990709549d5016b36d43916ce07a5c7ab076361295213e24dc9f2de9fc41e` |
| 13 | `lemma` | [not_lt_of_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/not-lt-of-ge.md) | 91 | `result-track:5132b6b511d78adbd82990a4d4eecd58b974f6c0b0f923fce767b759b7d134e3` |
| 14 | `lemma` | [lt_irrefl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/lt-irrefl.md) | 96 | `result-track:9f8329f2c1db136deca1c448bb83e0237ba31fc548d16785247d23173202a663` |
| 15 | `lemma` | [lt_of_lt_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/lt-of-lt-of-le.md) | 99 | `result-track:0c8a408e5b7d0c5ffc164a8d1c79171475db1ca7cb9b9ffd78912c6c4d5f24b6` |
| 16 | `lemma` | [lt_of_le_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/lt-of-le-of-lt.md) | 103 | `result-track:25577e08e59a487006cf5be10180e0a384ba68da5898d13afe34c7bb352237ce` |
| 17 | `lemma` | [lt_trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/lt-trans.md) | 107 | `result-track:fd291f31a4c1043048d4f285b1447e4c621ff5a96039c517856f77474833849e` |
| 18 | `lemma` | [ne_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/ne-of-lt.md) | 110 | `result-track:d3ed56fec26e9c2b067326b2d3b6de33256ccbeb4bd0d620275ea718b5db8d36` |
| 19 | `lemma` | [lt_asymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/lt-asymm.md) | 112 | `result-track:3723b04263e5c7d612ccedde3039563a0f8f0b36cd29836932eb38187ce05f81` |
| 20 | `lemma` | [le_of_lt_or_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/le-of-lt-or-eq.md) | 117 | `result-track:e511915474b296f7cc45ee2ed45b3caa54e23b3b58717d00c7218ec94b5e612d` |
| 21 | `lemma` | [le_of_eq_or_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/le-of-eq-or-lt.md) | 119 | `result-track:31f9b6fd5128b6b5bb3630097d6cdd204d43f94470fcac3ce4a8437217e965da` |
| 22 | `lemma` | [lt_iff_gt_iff_le_iff_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/lt-iff-gt-iff-le-iff-ge.md) | 122 | `result-track:3ca38bdbdc63d1d5f1ab8788bab144908bb1d1e98b862e0a8715d04675bc5c66` |
| 23 | `lemma` | [lt_iff_le_iff_gt_iff_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/lt-iff-le-iff-gt-iff-ge.md) | 126 | `result-track:6234225abbfcd11c70e98cb7f3716500ce6859ae27b826468b08492049311dc6` |
| 24 | `lemma` | [lt_iff_ge_iff_gt_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/lt-iff-ge-iff-gt-iff-le.md) | 130 | `result-track:97dd9326eb0481d2e6cc22e50018c284ddee9a4e921db6f52b9abacefe9a695a` |
| 25 | `instance` | [instTransLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/insttransle.md) | 133 | `declaration-track:84c3eb8e758092858b93673b9a411073b2bb4f45bcc38691b438c67168787b64` |
| 26 | `instance` | [instTransLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/insttranslt.md) | 134 | `declaration-track:b4dfaca8c16052ac8d0c3b4753ca0dea7697044271fa51e00521f7f55e9663cc` |
| 27 | `instance` | [instTransLTLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/insttransltle.md) | 135 | `declaration-track:67d12074268bcef3d1ef6ed1746dc868a69acb42bdd25a69aa5ec40e02cf5ed2` |
| 28 | `instance` | [instTransLELT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/insttranslelt.md) | 136 | `declaration-track:b5e600cfa72e82d016bc56f88a0d987b6597309d5a457601015f4a9be53b163f` |
| 29 | `instance` | [instTransGE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/insttransge.md) | 140 | `declaration-track:7e882c17bba86900a43395315cc0e434272625d6b06d61e51f3ec4b537f0284a` |
| 30 | `instance` | [instTransGT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/insttransgt.md) | 142 | `declaration-track:814c827086996cc97d50013b4d6ae8d77360b7b130257161b21ce4d5866c6317` |
| 31 | `instance` | [instTransGTGE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/insttransgtge.md) | 144 | `declaration-track:d2f17096e9ce7520468c6ae430fa15328e20ad7f04c1239a3c51128ba5f46b77` |
| 32 | `instance` | [instTransGEGT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/insttransgegt.md) | 146 | `declaration-track:cd32f5b6e51a5ab5c8cc1befe81cd476f713501fa048de8a34b308ac8d05830f` |
| 33 | `def` | [decidableLTOfDecidableLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/decidableltofdecidablele.md) | 150 | `declaration-track:bd870f9202516e029df74c3e88cf39fff8039972dbca2274d38ce3770deb0b0d` |
| 34 | `def` | [WCovBy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/wcovby.md) | 157 | `declaration-track:d9f2d96831292476b80b401a713eb36d8feb3abb472292da8c1285753700cff9` |
| 35 | `def` | [CovBy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/covby.md) | 168 | `declaration-track:cb21a738483cb8ff1cf77b0b90ae5793716df5022a74a1f56c369e9605454f31` |
| 36 | `class` | [PartialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/partialorder.md) | 185 | `declaration-track:b27c516afea3ea32985f0bc5a2d1417cd13b537a9766507bae94ba0810784b08` |
| 37 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 190 | `declaration-track:99753af9a9e382cf32268138bb06662abe1a23b5b3e49c72bc3a30720db2088b` |
| 38 | `lemma` | [le_antisymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/le-antisymm.md) | 195 | `result-track:05634071e97ecd65d7775d26ac2fa91b9640f5007809b7e24d3c4594b6786ee9` |
| 39 | `lemma` | [ge_antisymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/ge-antisymm.md) | 198 | `result-track:85104301f2e76646353d4ad65b0062e5c6175f91fe4b2d27c9a8d7939f9c62da` |
| 40 | `lemma` | [le_antisymm_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/le-antisymm-iff.md) | 204 | `result-track:ae5c50ca5aa9f2fe3abd66da3ff1342b7e2b3c432c40612176bbca35dd594e0e` |
| 41 | `lemma` | [lt_of_le_of_ne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/lt-of-le-of-ne.md) | 208 | `result-track:80aae4f823cd37dfed065ab47bb85db2f0ec338fa0e89cb0596f948610549edd` |
| 42 | `lemma` | [lt_of_ne_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/lt-of-ne-of-le.md) | 212 | `result-track:d4087a61f178d3a866fa1e8dea9b6041c7bb6fba47187f0a773ddace6142a3fb` |
| 43 | `def` | [decidableEqOfDecidableLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/decidableeqofdecidablele.md) | 215 | `declaration-track:0ead9f7cae2db2582e8b74e6c78e7474102268e91cd35eba17bb4ba9109a82c8` |
| 44 | `lemma` | [Decidable.lt_or_eq_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/decidable-lt-or-eq-of-le.md) | 223 | `result-track:bd02a66c773da700f92b6ea87237982fbaaa3d8b17b92b1687e095c6de2ee93e` |
| 45 | `lemma` | [Decidable.le_iff_lt_or_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/decidable-le-iff-lt-or-eq.md) | 227 | `result-track:1a7eb699880410802803002c2a1677311f8b33ba438800874b0ba4cdbeede583` |
| 46 | `lemma` | [lt_or_eq_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/lt-or-eq-of-le.md) | 231 | `result-track:43760a1ba4f79b1df9ed78a9e31c9625f3f0eab33db3ac57c8a0857ede463b6b` |
| 47 | `lemma` | [le_iff_lt_or_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartialOrderNamespacedPublic.lean/declarations/le-iff-lt-or-eq.md) | 233 | `result-track:cbe9793e4d4f3455858abf9539e0c03c877884cf9f488a138edb07b4952cc9fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cddb928cd2f8487db490064a7247a0d910fe06844a4684bdf7644eab729bf306 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant034cd6e726da0089b3839ecfae0713e463d2b154673db11882372a7f42faabab.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant034cd6e726da0089b3839ecfae0713e463d2b154673db11882372a7f42faabab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
