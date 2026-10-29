# Verification target: Equiv Option Namespaced Option Subtype Ne

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a15274e3de343c2bced4b52443e38b3e10609ad1",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant837893742c2e9c9a48b97f64df118b3df6d7d306510961c302bdfbdec64ce850.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a15274e3de343c2bced4b52443e38b3e10609ad1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant837893742c2e9c9a48b97f64df118b3df6d7d306510961c302bdfbdec64ce850.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant837893742c2e9c9a48b97f64df118b3df6d7d306510961c302bdfbdec64ce850.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.EquivFunctor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Option.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Subtype` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [optionCongr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/optioncongr.md) | 42 | `declaration-track:a8ff843d9ddd00cefa69fa7bf205ee142db3448b79b4a4d12ca0c4fdd0085f4c` |
| 2 | `theorem` | [optionCongr_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/optioncongr-refl.md) | 49 | `result-track:ad23bc2f1b538250c13fa00e636548c8227780cd1a6fc98938b8c6d87203f327` |
| 3 | `theorem` | [optionCongr_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/optioncongr-symm.md) | 53 | `result-track:fcea5faf42912f0e3ee7f99515536751c558b1d9a3ca24a2ebafcadcf04eb4d8` |
| 4 | `theorem` | [optionCongr_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/optioncongr-trans.md) | 57 | `result-track:e20bbd5515a1f0b6434a0268964108a4650a299fe804d856c2d6e4360a9865fd` |
| 5 | `theorem` | [optionCongr_eq_equivFunctor_mapEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/optioncongr-eq-equivfunctor-mapequiv.md) | 63 | `result-track:cfa18e3636d47ab3031e057f27f28f2376eeb211755e74faa98911ce80d4d21b` |
| 6 | `def` | [removeNone_aux](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/removenone-aux.md) | 76 | `declaration-track:0a65c1452c71efb9c2bcd517817e1b3990ac6333b51f41221f47b78d5f76fade` |
| 7 | `theorem` | [removeNone_aux_some](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/removenone-aux-some.md) | 86 | `result-track:60bbf9da6995077f278ac2c0ac3b42e34b6754476d3059bd44f02888bd28ae1e` |
| 8 | `theorem` | [removeNone_aux_none](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/removenone-aux-none.md) | 90 | `result-track:2faec01fff4f1ccb7759be46355de161c78a05608e35c3b3fea6719acbf7f696` |
| 9 | `theorem` | [removeNone_aux_inv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/removenone-aux-inv.md) | 94 | `result-track:86d914e71a22b6ce86ffc380aeef21bc88b6305b85f452df2affe515b89c88d3` |
| 10 | `def` | [removeNone](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/removenone.md) | 113 | `declaration-track:06f0a78d004f09cf1f7ecd6d879690dd3a9d77ea29040fc976e9c3aa6b00d6f0` |
| 11 | `theorem` | [removeNone_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/removenone-symm.md) | 120 | `result-track:64c7bff2726a2f872cb87c07858b1c379ad81dbb5099faf8296d8180ecfd5cdb` |
| 12 | `theorem` | [removeNone_some](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/removenone-some.md) | 123 | `result-track:a1edaba884ba9019be70f644bec527c417d307f3666738ac9f79c8764f01258f` |
| 13 | `theorem` | [removeNone_none](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/removenone-none.md) | 127 | `result-track:e5fb34a4aee5758055c3dc8b6b87b08590382888c714a8ccbdfbd81f8ea6e3d9` |
| 14 | `theorem` | [option_symm_apply_none_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/option-symm-apply-none-iff.md) | 131 | `result-track:c79972711a6ad50d5165c1b4c4916dc5b416e51b227943d999659359109141ed` |
| 15 | `theorem` | [some_removeNone_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/some-removenone-iff.md) | 134 | `result-track:7bd74bad65482c84aca2c5bab97f31d49153fb5e266c8ac4e7afa16cf7f2fd0b` |
| 16 | `theorem` | [removeNone_optionCongr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/removenone-optioncongr.md) | 145 | `result-track:ac69c9f80bcc5602ec63aa998d873802954bfc302640185794c0db8e0253baf8` |
| 17 | `theorem` | [optionCongr_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/optioncongr-injective.md) | 150 | `result-track:156fbc0258dec93d6969d48ad34162d00eb97db525c697b8219f7dcf12fd759d` |
| 18 | `def` | [optionSubtype](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/optionsubtype.md) | 155 | `declaration-track:77259b1fbc9c5954cd21ca751b98c457871a34ef73cbb740314f5c4e439f995c` |
| 19 | `theorem` | [optionSubtype_apply_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/optionsubtype-apply-apply.md) | 194 | `result-track:b62956ce9d24fd7db70c401400a65424a14bf4791004248ea415e6929cb1c59a` |
| 20 | `theorem` | [coe_optionSubtype_apply_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/coe-optionsubtype-apply-apply.md) | 201 | `result-track:cce31f960ff5d2bcdd71715c3ca04660cc29bb750601f8c32b08b0e91696fea2` |
| 21 | `theorem` | [optionSubtype_apply_symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/optionsubtype-apply-symm-apply.md) | 207 | `result-track:eafd8543d5f0c61104bfb8d198fcd2c2995dfd9e8dc21d20db6b7dd241d05963` |
| 22 | `theorem` | [optionSubtype_symm_apply_apply_coe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/optionsubtype-symm-apply-apply-coe.md) | 215 | `result-track:3292be2ce9a8be509a0b14081a4c3b76ee7cfee4460504ae0ab5da7b7927d525` |
| 23 | `theorem` | [optionSubtype_symm_apply_apply_some](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/optionsubtype-symm-apply-apply-some.md) | 220 | `result-track:1725e7b179a10729a82ea3eda8758e3e7ce02d666cd9f2870e94d3cc85424f5d` |
| 24 | `theorem` | [optionSubtype_symm_apply_apply_none](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/optionsubtype-symm-apply-apply-none.md) | 228 | `result-track:11c87364c36c505c3556e673c877b9b8ed71e4deb3823ec02bf935b1faac4bf3` |
| 25 | `theorem` | [optionSubtype_symm_apply_symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/optionsubtype-symm-apply-symm-apply.md) | 235 | `result-track:07db2c6585b46b852024f42f3862c4d15c707971a75ed51ab07ebef7db4221fa` |
| 26 | `def` | [optionSubtypeNe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/optionsubtypene.md) | 246 | `declaration-track:9c5b5cf0104694808aea4bb062956fe94b7ca58e5a320cff3328201b694e6fc5` |
| 27 | `lemma` | [optionSubtypeNe_symm_self](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/optionsubtypene-symm-self.md) | 248 | `result-track:28e39779b82d601fa3a71d94bc8a6152e1fa63664f39b8b8b550160e99a9332f` |
| 28 | `lemma` | [optionSubtypeNe_symm_of_ne](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/optionsubtypene-symm-of-ne.md) | 249 | `result-track:5cc1941bf6c09515b53bd4a2546b7612f97211241f8633de6b6d122d9c143c28` |
| 29 | `lemma` | [optionSubtypeNe_none](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/optionsubtypene-none.md) | 252 | `result-track:6858fad8ba0fc25d75f4f1f07a0854c1ddbc48192fa1891ad7d4de3a8c2410c8` |
| 30 | `lemma` | [optionSubtypeNe_some](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/optionsubtypene-some.md) | 253 | `result-track:c95c18dd6ef778d6af4cf38db460888f7b2ba53fb80fd7b3745b6ec26f9e3714` |
| 31 | `def` | [optionEquivSumPUnit.](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/optionequivsumpunit.md) | 258 | `declaration-track:850d7361b90d6276a48042d20541ed88e71684d112798b3d74774b78e6c90806` |
| 32 | `theorem` | [optionEquivSumPUnit_none](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/optionequivsumpunit-none.md) | 264 | `result-track:a491571cf1975df0738e8506be05e78428a8b1d85748e6a0d36bab6d6e945403` |
| 33 | `theorem` | [optionEquivSumPUnit_some](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/optionequivsumpunit-some.md) | 268 | `result-track:34233d6331ad8c72270eadd39205420bd4618213dbb709ec288b722ceced6199` |
| 34 | `theorem` | [optionEquivSumPUnit_coe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/optionequivsumpunit-coe.md) | 272 | `result-track:f943a49e9244126439498bd7e9cc4d0b4cc637ffacee84640eba34763703bf04` |
| 35 | `theorem` | [optionEquivSumPUnit_symm_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/optionequivsumpunit-symm-inl.md) | 276 | `result-track:e1e496f614298042f10ef66a469b9d7d76edb9be46b5b9ac8b4319bbea6111db` |
| 36 | `theorem` | [optionEquivSumPUnit_symm_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/optionequivsumpunit-symm-inr.md) | 280 | `result-track:4db8917d21e72b40a800f40ce9875612b132b856e99e333c01160c7c224f8616` |
| 37 | `def` | [optionIsSomeEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedOptionSubtypeNe.lean/declarations/optionissomeequiv.md) | 285 | `declaration-track:4b1ddca3f6ccad76d95e87a7ac4fe1574c9851e3716355a20bb2826265d9ff2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8585c7f80beb135e0b6212bc75d4b84f4ff742f93956ab9db4765b93d98aec2e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant837893742c2e9c9a48b97f64df118b3df6d7d306510961c302bdfbdec64ce850.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant837893742c2e9c9a48b97f64df118b3df6d7d306510961c302bdfbdec64ce850.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
