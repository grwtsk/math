# Verification target: Equiv Option Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3401426476335c4d218daa8d447f86f2a4a4766",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant0499487ca3dd031ebe97acced60901ace1faa193b4bb5dfd922950e6de0c9ef8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3401426476335c4d218daa8d447f86f2a4a4766`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant0499487ca3dd031ebe97acced60901ace1faa193b4bb5dfd922950e6de0c9ef8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant0499487ca3dd031ebe97acced60901ace1faa193b4bb5dfd922950e6de0c9ef8.lean.json)

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
| 1 | `def` | [optionCongr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/optioncongr.md) | 38 | `declaration-track:110ff475fac48ecc131e5f8cb617ddac8325f653b5c3ccbc5accad97e97e8710` |
| 2 | `theorem` | [optionCongr_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/optioncongr-refl.md) | 45 | `result-track:a01a0b91ddda414f8f49fe2d97ff4576504112831ac5265ffc916ad94dac6694` |
| 3 | `theorem` | [optionCongr_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/optioncongr-symm.md) | 49 | `result-track:0226212a68717c0e0da6b0ba417e4060856c87faf914a6cb66e2602f9ff80112` |
| 4 | `theorem` | [optionCongr_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/optioncongr-trans.md) | 53 | `result-track:ff85b131ca2dfaf7587bdfd161da00e400bdc4bf0d4c8f00e47091f274ba92bb` |
| 5 | `theorem` | [optionCongr_eq_equivFunctor_mapEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/optioncongr-eq-equivfunctor-mapequiv.md) | 61 | `result-track:b175298cc975e2faf4a8192867de5b614b7dfdcc15de9f30e9a1665dc0d7bc85` |
| 6 | `def` | [removeNoneAux](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/removenoneaux.md) | 74 | `declaration-track:3a0d9a6e00552cd87be64bc960714887ecccc2d92d89b6779107f732fca7a3e0` |
| 7 | `theorem` | [removeNoneAux_some](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/removenoneaux-some.md) | 84 | `result-track:1bb7dcbf18971e70002024c2dd922065b8e0866dc83b7d8d1d5b0ca40e23cc24` |
| 8 | `theorem` | [removeNoneAux_none](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/removenoneaux-none.md) | 88 | `result-track:6b0a42d654be431be47f4cb0d62cc1f0768ac25a0ad4187e69bcac584088aa34` |
| 9 | `theorem` | [removeNoneAux_inv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/removenoneaux-inv.md) | 93 | `result-track:066cc9fa595d5297431d3762c498f95da661fb888fe6328d42e474c77b0fac32` |
| 10 | `def` | [removeNone](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/removenone.md) | 114 | `declaration-track:295ab69d1a8e457d91e6f35bc5543e2bf0d38d3c5b3334f51b976d02bb39d21b` |
| 11 | `theorem` | [removeNone_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/removenone-symm.md) | 121 | `result-track:f7c970612b281a5c6d0558fb2fc8085b63a84c7f3e1b9e9891adfda2514233fb` |
| 12 | `theorem` | [removeNone_some](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/removenone-some.md) | 124 | `result-track:7261bc49fb6d0f847f995d74800beafbe3d8a8404c185ef94072d0fa883d9bec` |
| 13 | `theorem` | [removeNone_none](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/removenone-none.md) | 128 | `result-track:f88540727797a86811843adbfad4be5d8e821ecda86b286743aa4006457d61ed` |
| 14 | `theorem` | [option_symm_apply_none_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/option-symm-apply-none-iff.md) | 132 | `result-track:4b5817085e37fdd06827561f3eea9be275e2d26cbf716d063afc4909f9956c61` |
| 15 | `theorem` | [some_removeNone_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/some-removenone-iff.md) | 135 | `result-track:e4f4f64220311f51b8e2862420b921d12002ffb5df5ab1f977b77f4b6a02038c` |
| 16 | `theorem` | [removeNone_optionCongr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/removenone-optioncongr.md) | 146 | `result-track:9d64bd53dd36204cbf5e684b7b3d2297ab15ae6f68c627df494f5cc4f4101a55` |
| 17 | `theorem` | [optionCongr_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/optioncongr-injective.md) | 151 | `result-track:a5dedd3f621945608f9a92ffaf4d65ac11b410a8e81c9c19f4ad105f4529429b` |
| 18 | `def` | [optionSubtype](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/optionsubtype.md) | 156 | `declaration-track:63055cfe276d8f7f36753d9ccc3983536852bf226acdf0b1a7b5c9db797b339c` |
| 19 | `theorem` | [optionSubtype_apply_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/optionsubtype-apply-apply.md) | 195 | `result-track:1aa18e34b828f5f4b8db7989055d951b8a27630e73dc8044364109f362698f12` |
| 20 | `theorem` | [coe_optionSubtype_apply_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/coe-optionsubtype-apply-apply.md) | 202 | `result-track:78ffb83f39a9a52ada6548b33c9251415ca1edb3c965f4f7466331e834050495` |
| 21 | `theorem` | [optionSubtype_apply_symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/optionsubtype-apply-symm-apply.md) | 208 | `result-track:86251c3d7d0109e541f5b2c9c36ea0bc49267b003479a7ee992cfb6069464870` |
| 22 | `theorem` | [optionSubtype_symm_apply_apply_coe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/optionsubtype-symm-apply-apply-coe.md) | 216 | `result-track:bccbd9c5ba870df7990452dd9c143574ea5f4c3d3f786dcf5f0e9203e8b048ab` |
| 23 | `theorem` | [optionSubtype_symm_apply_apply_some](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/optionsubtype-symm-apply-apply-some.md) | 221 | `result-track:f692fe2999dbe3e50c267d6b99c1a6d40153922b8ae4c3b54224d4995e749b2e` |
| 24 | `theorem` | [optionSubtype_symm_apply_apply_none](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/optionsubtype-symm-apply-apply-none.md) | 229 | `result-track:da9686a9dbcea18b6a3292dc1a7414c56bcbfdc3979452b28277e42c1d07e634` |
| 25 | `theorem` | [optionSubtype_symm_apply_symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/optionsubtype-symm-apply-symm-apply.md) | 236 | `result-track:3d97bbf8fa724a2e83677d59e7727a09b2143133c3262a100a23eecd3d32ee83` |
| 26 | `def` | [optionSubtypeNe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/optionsubtypene.md) | 245 | `declaration-track:eef4f5324f9564b380a64434c6b732e996baa6cd08a092f521f46f942c8c586d` |
| 27 | `lemma` | [optionSubtypeNe_symm_self](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/optionsubtypene-symm-self.md) | 247 | `result-track:d2ff999e6c75c0b52f7f937535bbd9ba36e8d209df3fc5fa21d65d5cbfd9e096` |
| 28 | `lemma` | [optionSubtypeNe_symm_of_ne](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/optionsubtypene-symm-of-ne.md) | 248 | `result-track:a927efb8cebbda49d524a54901708ccff9e3d53d7ee008fc940dcb6466783ddd` |
| 29 | `lemma` | [optionSubtypeNe_none](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/optionsubtypene-none.md) | 251 | `result-track:dd3519b3a5e01fbd95a2af6a9c7d9284c9d92c6297b0412bd3a6b5a7dd2dbb66` |
| 30 | `lemma` | [optionSubtypeNe_some](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/optionsubtypene-some.md) | 252 | `result-track:75a203eba8ed476abe2f0f1f8ea79dd868498748ed62992918a6093725c36e81` |
| 31 | `def` | [optionEquivSumPUnit.](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/optionequivsumpunit.md) | 257 | `declaration-track:43cff30fd351d43878f0a8538276b8b827cf691df419188bf95334d97463ba8a` |
| 32 | `theorem` | [optionEquivSumPUnit_none](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/optionequivsumpunit-none.md) | 263 | `result-track:a3e0059072af885c407666fdbcabf5a2b2c08b4fbf7803f4139249a688c0e005` |
| 33 | `theorem` | [optionEquivSumPUnit_some](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/optionequivsumpunit-some.md) | 267 | `result-track:c2df165a50cdf84d6b82d6b0b2bd17f5b71c28af44d729476a30de811d9c0824` |
| 34 | `theorem` | [optionEquivSumPUnit_coe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/optionequivsumpunit-coe.md) | 271 | `result-track:2bc1babd8320c886fdf5ae770e3ff12f5987c133b14e1651419127d776e975f5` |
| 35 | `theorem` | [optionEquivSumPUnit_symm_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/optionequivsumpunit-symm-inl.md) | 275 | `result-track:398e3282aae7db3f43a550d6621f711e1db0f3addf730afa51c4e8362d15242c` |
| 36 | `theorem` | [optionEquivSumPUnit_symm_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/optionequivsumpunit-symm-inr.md) | 279 | `result-track:aba8dfe0472e789c1ae6d7f197aa8731b9419644673e09cac97cf7443762a3f9` |
| 37 | `def` | [optionIsSomeEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/optionissomeequiv.md) | 284 | `declaration-track:dbc78855abd1518e02a203e39fb1b55951b6cac605e1d951069ed1f4ea777c53` |
| 38 | `abbrev` | [subtypeNeSumPUnit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivOptionPublic.lean/declarations/subtypenesumpunit.md) | 291 | `declaration-track:9154bfcf7974a04ea9c53b399c684ede81589f32d899b3e88b77d29a6cd6522e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e43f4dc2afa617739b735a09d83aba0f21ef23dd4791bd264d27d6d9ac026492 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant0499487ca3dd031ebe97acced60901ace1faa193b4bb5dfd922950e6de0c9ef8.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant0499487ca3dd031ebe97acced60901ace1faa193b4bb5dfd922950e6de0c9ef8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
