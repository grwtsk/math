# Verification target: Finite Lattice Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9ff8ed57e702c7db85d717532a24af91644d78f",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant48f087e5adce4c745eb280e2b251f539f30669429a7caa627af39437adf7c898.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9ff8ed57e702c7db85d717532a24af91644d78f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant48f087e5adce4c745eb280e2b251f539f30669429a7caa627af39437adf7c898.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lattice/Variant48f087e5adce4c745eb280e2b251f539f30669429a7caa627af39437adf7c898.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Option` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [fintypeiUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/fintypeiunion.md) | 54 | `declaration-track:214a30dccc08c55e2dc592a92d896747661743218cc18229715934f9f2f997c2` |
| 2 | `instance` | [fintypesUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/fintypesunion.md) | 58 | `declaration-track:d52ba4d4e6c96d0542dba3fe059110924867f160c6eadf7e64272085db8c3127` |
| 3 | `lemma` | [toFinset_iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/tofinset-iunion.md) | 63 | `result-track:475b34b13631863f1820ec849c91034714c7c10992a9d64ef4d04faf0da17e59` |
| 4 | `def` | [fintypeBiUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/fintypebiunion-source-edition-2.md) | 73 | `declaration-track:88ce6e907abc54a937d81438eb2c3754ca33783d009d5e71bdf024bc8c2e7540` |
| 5 | `instance` | [fintypeBiUnion'](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/fintypebiunion.md) | 78 | `declaration-track:4694c09e0c0afe5791bdf538a883d12db0ebcf5dfe382383fcdca71d98a15a9d` |
| 6 | `instance` | [finite_iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/finite-iunion-source-edition-3.md) | 100 | `declaration-track:bd2c206e44399db03a267d14c7c749088b2844246f36c7fc86b460f993e5c256` |
| 7 | `instance` | [finite_sUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/finite-sunion.md) | 105 | `declaration-track:743e69847b691f1e1b97a06c56e52277a81808ba4948a4c732cdd3ef10001baf` |
| 8 | `theorem` | [finite_biUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/finite-biunion-source-edition-4.md) | 110 | `result-track:d073a7b38e501655431a927bd8e22ad5fb7df4d76922715c04abab7fa0c0df54` |
| 9 | `instance` | [finite_biUnion'](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/finite-biunion-source-edition-5.md) | 116 | `declaration-track:f71da05c2e161093ce3cfca54da017b5f6a4a64add39dd30eb2c08feee818160` |
| 10 | `instance` | [finite_biUnion''](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/finite-biunion-source-edition-3.md) | 123 | `declaration-track:9347661fa0edcd805f85368f1dc43c63304a1b777d062cedd56b6053ff55d2f6` |
| 11 | `instance` | [finite_iInter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/finite-iinter.md) | 127 | `declaration-track:cf4f4a3fe7e95754fbfbdd95cba5cb9f267a59abe4085a0eb7117933bb29c8b4` |
| 12 | `theorem` | [finite_iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/finite-iunion.md) | 147 | `result-track:96185ca29864b0a901686650bff9edd68b420f4d25e62b61ae282259eda716c6` |
| 13 | `theorem` | [Finite.biUnion'](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/finite-biunion-source-edition-2.md) | 152 | `result-track:62d9cc054f79d54dcce00faa4e01a8663d95ed45efd75f852e5dd2ff60c2036a` |
| 14 | `theorem` | [Finite.biUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/finite-biunion.md) | 158 | `result-track:50da25a54c743d8e16def083655e36db410b75fc45c400565b0af40f53544a6a` |
| 15 | `theorem` | [Finite.sUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/finite-sunion-source-edition-2.md) | 162 | `result-track:bf2df1dfd7596e5b92c7d5c7546b13926141cc9b2ca4f15b4b0be8fe31f6d8e0` |
| 16 | `theorem` | [Finite.sInter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/finite-sinter.md) | 166 | `result-track:098fe61ac73ab82bc838d825a908bfdb65fb4b9d9f86a807721f746f47ef28f0` |
| 17 | `theorem` | [Finite.iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/finite-iunion-source-edition-2.md) | 172 | `result-track:a3be81bb373305b3dbe75b30685761146b4c0ede4d3e832166e770ed454fba49` |
| 18 | `lemma` | [finite_iUnion_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/finite-iunion-iff.md) | 183 | `result-track:e26ab15c1b1f00ef77de35ea846cc23b1dc835c50ffdcb816dd3e4175f235996` |
| 19 | `lemma` | [Infinite.iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/infinite-iunion.md) | 198 | `result-track:5ed652f45739c3debb535d4244f9771b293faf9b3edfa5a9323bd4bed7168307` |
| 20 | `lemma` | [Infinite.iUnion₂](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/infinite-iunion-source-edition-3.md) | 202 | `result-track:f21d7f8bfa143412e58c309a9685d6c44ffed404f40846082e67603200275ead` |
| 21 | `lemma` | [finite_iUnion_of_subsingleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/finite-iunion-of-subsingleton.md) | 206 | `result-track:e4e92a7aa07feb3fc105d5a982128111cb19c43d983fa08896b02d3a233603b6` |
| 22 | `lemma` | [PairwiseDisjoint.finite_biUnion_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/pairwisedisjoint-finite-biunion-iff.md) | 213 | `result-track:afe28a1c3fe98309b9bd044cc20ffc4d0fd6d5f5bfa11a95d762f49966ec1776` |
| 23 | `theorem` | [Finite.preimage'](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/finite-preimage.md) | 221 | `result-track:edca5c04549d1e89cfb1a6d26489e2af50de6a454155dd1aec7b2f103ca63665` |
| 24 | `theorem` | [union_finset_finite_of_range_finite](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/union-finset-finite-of-range-finite.md) | 229 | `result-track:052f8a8f7ee4a050dd1e0947562132c0543d8b465ae8de0bfcff93c566cdf766` |
| 25 | `lemma` | [Finite.of_finite_fibers](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/finite-of-finite-fibers.md) | 242 | `result-track:6d06e410f3564dcc4dd40c8910a410835a8fecf6ff793fad92f106087c119729` |
| 26 | `theorem` | [finite_subset_iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/finite-subset-iunion.md) | 248 | `result-track:e04e3f45619dd841b4495eca5240b886dc0b747bf512a8f87ef7ae7b4d6b039a` |
| 27 | `theorem` | [eq_finite_iUnion_of_finite_subset_iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/eq-finite-iunion-of-finite-subset-iunion.md) | 256 | `result-track:7bb0e095534c5bc64c10baa95023966c7eacb0f1dc366f5f518a47c7b7523918` |
| 28 | `theorem` | [infinite_iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/infinite-iunion-source-edition-2.md) | 277 | `result-track:642821f6ab26fb0a7c62694c77766f0b1604a85b9885b0595afa626a951b356c` |
| 29 | `theorem` | [Infinite.biUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/infinite-biunion.md) | 282 | `result-track:2fe81fe36c2f68963103b3916651830247010d138783184b945dde32abc570c1` |
| 30 | `theorem` | [Infinite.sUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/infinite-sunion.md) | 288 | `result-track:d976797fa58b38693498253d91963632a32e18530fc2478e2e1aa2dc20653a43` |
| 31 | `lemma` | [map_finite_biSup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/map-finite-bisup.md) | 296 | `result-track:598b6e5b504fdd1426d01b56162cd7b18bda5c524452e5818f9114002db369fe` |
| 32 | `lemma` | [map_finite_iSup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/map-finite-isup.md) | 304 | `result-track:75b01f4e5f57ca397e72b9548d7a2633006277f9d75c408c3bf7e519192a94db` |
| 33 | `theorem` | [Finite.iSup_biInf_of_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/finite-isup-biinf-of-monotone.md) | 311 | `result-track:275b1491b80ec37e2450585fc9fe97db0a28ac9f32e13d50197aad7e1233e7f3` |
| 34 | `theorem` | [Finite.iSup_biInf_of_antitone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/finite-isup-biinf-of-antitone.md) | 322 | `result-track:22f1419bab5f79fb0fe69ad4b3b6fa05455700ac23b574fa9dc487c7f61f6a53` |
| 35 | `theorem` | [Finite Lattice Namespaced Public](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/isup-iinf-of-monotone.md) | 328 | `result-track:294130256f85ead5dc12e95397a7c0635cbde70122d474dfa8a2026b5f7f76f1` |
| 36 | `theorem` | [Finite Lattice Namespaced Public](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/isup-iinf-of-antitone.md) | 334 | `result-track:861dba452c4b0776759b26b987e24d278d68474fcb0e16808980998850ed15de` |
| 37 | `theorem` | [iUnion_iInter_of_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/iunion-iinter-of-monotone.md) | 340 | `result-track:e67c797482b4709630055b03a36a28cdc32c9f549841c375d7b157c6aa169673` |
| 38 | `theorem` | [iUnion_iInter_of_antitone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/iunion-iinter-of-antitone.md) | 346 | `result-track:c83225de8c02089a239f2e78b15776f65af01bf2b0eba7416c014fdd1e7e9434` |
| 39 | `theorem` | [iInter_iUnion_of_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/iinter-iunion-of-monotone.md) | 352 | `result-track:0fcf4cb5f3945fe2827b85baf2541666fda347fc8bc669419667b1da045e28af` |
| 40 | `theorem` | [iInter_iUnion_of_antitone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/iinter-iunion-of-antitone.md) | 358 | `result-track:7e61819ce1f67a48456fcf8743ff93d3b55beb8b0f360c7545ece4ab2b3ad9b5` |
| 41 | `theorem` | [iUnion_pi_of_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/iunion-pi-of-monotone.md) | 363 | `result-track:9f7e2bece74bf23aa9c2a8ad8a813c68b207d89f10aa570a2e42bc4a50964b1f` |
| 42 | `theorem` | [iUnion_univ_pi_of_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/iunion-univ-pi-of-monotone.md) | 371 | `result-track:8d0e08333404549aa68d5b5b4352a6098530470b9a51f273db3a8cd7458400cb` |
| 43 | `theorem` | [Finite Lattice Namespaced Public](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/iinf-isup-eq-of-finite.md) | 376 | `result-track:068927dd1ac6cfe3e174357ab8811bedf2e9dad20c2c44cfc4834a8c156ee3a4` |
| 44 | `theorem` | [Finite Lattice Namespaced Public](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/isup-iinf-eq-of-finite.md) | 391 | `result-track:4c7a90706b745f0e2cf01ceffd77abca1d40e944e843ba205e75897e388e55f3` |
| 45 | `theorem` | [Finite.biInf_iSup_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/finite-biinf-isup-eq.md) | 395 | `result-track:9964e4a4a04c77e1b8a24af873518aada0945b75ac58f56317f780a197459a71` |
| 46 | `theorem` | [Finite.biSup_iInf_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/finite-bisup-iinf-eq.md) | 410 | `result-track:42083257024881c6df998ab8e064e91d7e5ceca146b54119ab4ef6f002396a4d` |
| 47 | `theorem` | [Finite.bddAbove](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/finite-bddabove.md) | 421 | `result-track:dd5127dd80c9f21741c9f6600d123da63b4e25a886977a0111a0f889e46174a1` |
| 48 | `theorem` | [Finite.bddAbove_biUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/finite-bddabove-biunion.md) | 426 | `result-track:78ce886f7f80ec216bb4e3330c18aed17c4710427ba5261efa544048407ce9e1` |
| 49 | `theorem` | [infinite_of_not_bddAbove](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/infinite-of-not-bddabove.md) | 433 | `result-track:33648399bcdd6e017ff9f8bdfde626cb263e02cee4ace3e94e82d4a24aba9804` |
| 50 | `theorem` | [Finset.bddAbove](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/finset-bddabove.md) | 442 | `result-track:0441cdf0f05281d5915a2a1a9c6cf84dfeea2ed006fdfd759863fa17654d66c0` |
| 51 | `lemma` | [Set.finite_sdiff_iUnion_Ioo](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/set-finite-sdiff-iunion-ioo.md) | 449 | `result-track:1a37b46b5290ec60adaff7b9919a6943f34e91aad0c3229316c81bfcf91f16d6` |
| 52 | `lemma` | [Set.finite_sdiff_iUnion_Ioo'](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/set-finite-sdiff-iunion-ioo-source-edition-2.md) | 456 | `result-track:7a05c5c54a08786f723da77c0466d6145a8cd25075db5678f9f2605863c68c8c` |
| 53 | `lemma` | [Directed.exists_mem_subset_of_finset_subset_biUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/directed-exists-mem-subset-of-finset-subset-biunion.md) | 462 | `result-track:c36a1a874b0da609248aa100cd5c4490c288aae6846e519ccb43dd859c004441` |
| 54 | `theorem` | [DirectedOn.exists_mem_subset_of_finset_subset_biUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/directedon-exists-mem-subset-of-finset-subset-biunion.md) | 473 | `result-track:6fdbd7fcc7f0c2b95ae5d750f17b84de517c31e09b625ab798fd7ffc6c1ea50b` |
| 55 | `theorem` | [DirectedOn.exists_mem_subset_of_finite_of_subset_sUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespacedPublic.lean/declarations/directedon-exists-mem-subset-of-finite-of-subset-sunion.md) | 480 | `result-track:a9f52465c453ac4e77642f9d5b8f1f5a6e571f606ac842d5fee35e56865320cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e66b37ae971bb36a730558ce77f4880680fbff21a1d8999161d208e60ade476f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant48f087e5adce4c745eb280e2b251f539f30669429a7caa627af39437adf7c898.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Lattice/Variant48f087e5adce4c745eb280e2b251f539f30669429a7caa627af39437adf7c898.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
