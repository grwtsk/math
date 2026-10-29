# Verification target: Abelianization Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb0df9725c3fc70c4730e9bd0ce3e5afc8ebbf9d",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb0df9725c3fc70c4730e9bd0ce3e5afc8ebbf9d`.

Source path: `GRWTSK/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Card` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Commutator` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Finiteness` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [commutator](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/commutator.md) | 47 | `declaration-track:30d8d60c2d5a61f3ea4356afe905f8a588d2b52f4547120d5190428162f0fbb3` |
| 2 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/instance.md) | 51 | `declaration-track:10a46c7a00ff61fcbf005bee7ed75ec1572dbc9040a942b36cb3a04bd2c22d3b` |
| 3 | `theorem` | [commutator_def](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/commutator-def.md) | 53 | `result-track:0927af3759b59878c6a09fbafb186f92b6130fc50adc13db957b1c0b63e132a8` |
| 4 | `theorem` | [commutator_eq_closure](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/commutator-eq-closure.md) | 57 | `result-track:0cca8c612bb7cea93fda564fbe5638ae55e108bd0eaa881700ffd44d9316c741` |
| 5 | `theorem` | [commutator_eq_normalClosure](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/commutator-eq-normalclosure.md) | 61 | `result-track:3ec03b7b46aa6ba799fd06e22211c84c4c62a47966a62c6fe77a1b5def3952ce` |
| 6 | `instance` | [commutator_characteristic](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/commutator-characteristic.md) | 65 | `declaration-track:6c824d2b0aa70a98dbe0e1f0e0906fb4c39c2075e50a716bc957965be9c7deda` |
| 7 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/instance-source-edition-5.md) | 69 | `declaration-track:9cabbbc8374d94375e506f575cc35dad1f2457d1c32c6b41b30852e78f91d877` |
| 8 | `theorem` | [rank_commutator_le_card](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/rank-commutator-le-card.md) | 73 | `result-track:59add0817635d9d8b50e3213fe40f3dde3002f3aa4bc34c701b06de90bf1484e` |
| 9 | `theorem` | [commutator_centralizer_commutator_le_center](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/commutator-centralizer-commutator-le-center.md) | 79 | `result-track:bb00404824ddb3be8131f39489ee945bf5a40920f3bf74eaffca53509e5311be` |
| 10 | `def` | [Abelianization](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/abelianization.md) | 91 | `declaration-track:a2c54aa7175ad134106becafecb16d74331e9988fe95fd0b2c720d8e3e56b723` |
| 11 | `instance` | [commGroup](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/commgroup.md) | 99 | `declaration-track:0aaac448425ceb00b0f2b72a38e41990ff9bd29895fe2c0cfd8921bb0fe12452` |
| 12 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/instance-source-edition-3.md) | 108 | `declaration-track:8676abca53ca1166b2a19331de983e78736c259bf00dacdf7133e6355dd6871a` |
| 13 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/instance-source-edition-7.md) | 111 | `declaration-track:feabdbcf80491ec25fc9b11944a27acd6f0ebbde9b7c2828bc9c197e1caa7def` |
| 14 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/instance-source-edition-2.md) | 114 | `declaration-track:127ecbabb0e61f07ffcf7f2b74ae70352ee8b96ebe55e324454a0ac75e943d32` |
| 15 | `def` | [of](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/of.md) | 120 | `declaration-track:55496c53856793fd75c030b48a9863e494f62fa2bcc1d3af315b8772f35ada0f` |
| 16 | `theorem` | [mk_eq_of](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/mk-eq-of.md) | 127 | `result-track:4bb8ad0dadda88ca83de72059caa06bee409f72190ce5b627dc0e8d1e2e3183c` |
| 17 | `theorem` | [commutator_subset_ker](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/commutator-subset-ker.md) | 138 | `result-track:41dfb79ee65a5096e9a3ba6ffe9fbdeeb8b3988b4f2eabbc1410c964e14a524b` |
| 18 | `def` | [lift](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/lift.md) | 146 | `declaration-track:bf6af3f3798d2c553a28980a2eb29e1152f1988669e879e8bd6b4fa1272f5541` |
| 19 | `theorem` | [lift.of](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/lift-of.md) | 154 | `result-track:c4cfb8ea696c2297d892ea114344320e05e09fad2129796ec42764c546055e74` |
| 20 | `theorem` | [lift.unique](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/lift-unique.md) | 158 | `result-track:a10e90b7f94eb4cd3bff29d02024f61a3761d429eee7e1fc4f09cbb7918dd479` |
| 21 | `theorem` | [lift_of](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/lift-of-source-edition-2.md) | 166 | `result-track:c4ebbe60d2b1f0960c0374ec0907fa438f343740115accf119f5d2fa05bcb9ff` |
| 22 | `theorem` | [hom_ext](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/hom-ext.md) | 176 | `result-track:9d9ce91b12c3b0d3f5cff262d489c08e80d4549b9e996f36ea47797b035f85af` |
| 23 | `def` | [map](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/map.md) | 185 | `declaration-track:a68e6e53022cf4006b29e66efee6085c8e56e2455096f2c7f2d46738ddd122f9` |
| 24 | `theorem` | [map_of](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/map-of.md) | 190 | `result-track:984bd73ec025d02882ac8014232bb0a4a2ded3af5cdbb52d35318ded8708d355` |
| 25 | `theorem` | [map_id](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/map-id.md) | 195 | `result-track:606e3d15b555fc935771e3295d246c8750a2788d3d3f7b0b4219aa2452a019de` |
| 26 | `theorem` | [map_comp](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/map-comp.md) | 200 | `result-track:3e0751de19eb01186e3fba6f25af824fbee4d0f30eeffca3dfd209bda8ac8c2c` |
| 27 | `theorem` | [map_map_apply](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/map-map-apply.md) | 205 | `result-track:23ebcaca723339ff8ea2600ca3799c24256ee0ec2d6678eb3489d70fa72d511d` |
| 28 | `def` | [MulEquiv.abelianizationCongr](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/mulequiv-abelianizationcongr.md) | 220 | `declaration-track:3013ba23e92623253562eed3f28c8d84a1cb5e4d2f93894be4f178c521af3e5a` |
| 29 | `theorem` | [abelianizationCongr_of](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/abelianizationcongr-of.md) | 233 | `result-track:733a393eff8fff31c828ba23262f049aa0db10e5f88d9b051c3bbefa18e28eac` |
| 30 | `theorem` | [abelianizationCongr_refl](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/abelianizationcongr-refl.md) | 239 | `result-track:e748e33e88ce3f7b3c716f9e7026e71390871edbfa3561a719399a07b43e3ceb` |
| 31 | `theorem` | [abelianizationCongr_symm](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/abelianizationcongr-symm.md) | 245 | `result-track:d36c5c5823cbeb90086866502a7b020bbe6ceefa7aa89dfb0f89db6b2f6a433c` |
| 32 | `theorem` | [abelianizationCongr_trans](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/abelianizationcongr-trans.md) | 250 | `result-track:ec4879952f6a6b625540083b03206e3b586b0422f6d7d2ff97f395968b0951e0` |
| 33 | `def` | [Abelianization.equivOfComm](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/abelianization-equivofcomm.md) | 259 | `declaration-track:13d8c8ae9066ff01e65155488215e63bd175821e5633e8dca4425853ba352a6e` |
| 34 | `def` | [commutatorRepresentatives](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/commutatorrepresentatives.md) | 274 | `declaration-track:83626063cce1fb937e3c7529a774f536a83f829228c36490d182d0eb1e9788b9` |
| 35 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/instance-source-edition-6.md) | 278 | `declaration-track:c42dfa88df7d7ee86d9fd0fa9d104fe434219f812d1a82257a166e78d421210e` |
| 36 | `def` | [closureCommutatorRepresentatives](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/closurecommutatorrepresentatives.md) | 282 | `declaration-track:521ae2084a5b9a91f0e073c000c156896ac6ed6965437f8fdaf4251fb6516080` |
| 37 | `instance` | [closureCommutatorRepresentatives_fg](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/closurecommutatorrepresentatives-fg.md) | 286 | `declaration-track:9e265ec0b565b3ff69d09bfb3c2f64a41c733b463ee8cdc39b4df85d2bba666f` |
| 38 | `theorem` | [rank_closureCommutatorRepresentatives_le](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/rank-closurecommutatorrepresentatives-le.md) | 291 | `result-track:d31c6d884d7e812c16671b865eca6126684c5e86682a903ee1a7a75ea6cfc420` |
| 39 | `theorem` | [image_commutatorSet_closureCommutatorRepresentatives](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/image-commutatorset-closurecommutatorrepresentatives.md) | 301 | `result-track:c81bd499ef9b52eb27ca7bf31843d9237dd53aaba24cf6f07d3770e5549bbf24` |
| 40 | `theorem` | [card_commutatorSet_closureCommutatorRepresentatives](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/card-commutatorset-closurecommutatorrepresentatives.md) | 315 | `result-track:b0af5e3f4fd9c1150d8098b3d03358f47de4247c3aff205befb7374077ef82b4` |
| 41 | `theorem` | [card_commutator_closureCommutatorRepresentatives](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/card-commutator-closurecommutatorrepresentatives.md) | 321 | `result-track:769601d7cf3e9b392b1ccfc33d7b94e8e5b3c2ee81e4e4c4e54acfe2dd10d663` |
| 42 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/declarations/instance-source-edition-4.md) | 328 | `declaration-track:9b0447c2b58144085c4ba452eeabe8adf04a24740079961137b32a5104afdec0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f4f1d368e9a550e5b8a1cd51feeef5498683cf2e81eb72069b10d96561355d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
