# Verification target: Hom Aut

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd89c3a960f2e1dc0f7dbf8007d173e2aac259d4",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Aut/Varianteb7b1349adaa80b1f797e279b73a1cdbdec377c4cc13d9b3b0eaeafe4169624a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd89c3a960f2e1dc0f7dbf8007d173e2aac259d4`.

Source path: `GRWTSK/Algebra/GroupTheory/Aut/Varianteb7b1349adaa80b1f797e279b73a1cdbdec377c4cc13d9b3b0eaeafe4169624a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Aut/Varianteb7b1349adaa80b1f797e279b73a1cdbdec377c4cc13d9b3b0eaeafe4169624a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Perm.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MulAut](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/mulaut.md) | 35 | `declaration-track:e0d97c9e683fc23fff948b4f91ec40a68f22f122ba1bf0bbbe18c020e891d2e7` |
| 2 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/instance.md) | 49 | `declaration-track:1a3f3b1da30b59946445add813ac235fbd9ff29b960434124a84528b7826f2ae` |
| 3 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/instance-source-edition-2.md) | 63 | `declaration-track:3ff36dc9ce6b95c988f609fab960c163d6fe2263046a0b5f4965e9a03dc61b4d` |
| 4 | `theorem` | [coe_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/coe-mul-source-edition-2.md) | 67 | `result-track:d0e4d783501e9a46fc2d247c97b0a7bbea94312dd7431321dceb54ab23235447` |
| 5 | `theorem` | [coe_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/coe-one.md) | 72 | `result-track:1583e31ab70b53ba896779bd1d8de8fd8b87d77eb28a10c6d77c2555cee61a9e` |
| 6 | `theorem` | [mul_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/mul-def.md) | 76 | `result-track:2cd410b9625acd4ab28b7d0bee9ee41e0b430fe68c36eb7c3b32e6404578f35b` |
| 7 | `theorem` | [one_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/one-def-source-edition-2.md) | 80 | `result-track:43b54554d36d8aa546fbb17bcf799e59aaebbf63ccb1a9438428994e72e26f97` |
| 8 | `theorem` | [inv_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/inv-def.md) | 84 | `result-track:19508971a33811d66070304b55811221ca43f97d506313c8fd98c47181e5346a` |
| 9 | `theorem` | [mul_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/mul-apply-source-edition-2.md) | 89 | `result-track:3978008d5fb5159abd1d0f9a7f4b8de295fd4dd083be474d1fd6071112bf64be` |
| 10 | `theorem` | [one_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/one-apply.md) | 94 | `result-track:30cbeb5b83aa8881e2f447f04bdade4f2ad34371c3775989693008edebd8be4c` |
| 11 | `theorem` | [apply_inv_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/apply-inv-self.md) | 99 | `result-track:8f49088a350c22ac6c988dc77d1d45c1ea94dda190bb8958043a884780eae73a` |
| 12 | `theorem` | [inv_apply_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/inv-apply-self-source-edition-2.md) | 104 | `result-track:91ec9ce56d74a18146268a3577065c3d0020d0f238f64e2a86174f49e4886d1e` |
| 13 | `def` | [toPerm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/toperm-source-edition-2.md) | 109 | `declaration-track:e3ac696405d28aca4eaec89920237d67d2d42467a1e381762345e058e21cc1f5` |
| 14 | `instance` | [applyMulDistribMulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/applymuldistribmulaction.md) | 116 | `declaration-track:eeafedd88b59fcc98ee5e80503341e8f2285f7741acdd788b36af77587cb1d06` |
| 15 | `theorem` | [smul_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/smul-def.md) | 125 | `result-track:26596dab08d7a3c9dbb9772e03aa4c075feb05c8b0e06d04e5f6cc27d1c95183` |
| 16 | `instance` | [apply_faithfulSMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/apply-faithfulsmul.md) | 130 | `declaration-track:eaafa6cd773e731266f9f379aae0b75ecb9d40e4f79596a9c9960fd69326bec0` |
| 17 | `def` | [conj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/conj.md) | 138 | `declaration-track:035a55c864efec05c0035791945c9aef309d6a2db96f34a6665e5d7562382efe` |
| 18 | `theorem` | [conj_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/conj-apply-source-edition-2.md) | 153 | `result-track:a4c59222bde54436ef2c8a4fb8cedec20be7a4d235032b211b4dff4a5bb987ab` |
| 19 | `theorem` | [conj_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/conj-symm-apply-source-edition-2.md) | 158 | `result-track:6bf25edb0dbe2424d39ef3597998db7760ec036e46ac5be202503b9cd1345fbe` |
| 20 | `theorem` | [conj_inv_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/conj-inv-apply.md) | 163 | `result-track:1263ae80ea9a288debc777cf29f760aebc4346e59dcd2bac3ea170caef46038a` |
| 21 | `instance` | [group](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/group.md) | 176 | `declaration-track:024e8ea7bca4f954007d018df36a915c741e73ce6cd4c9d3d7a11e7a4fff66b4` |
| 22 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/instance-source-edition-3.md) | 191 | `declaration-track:c1087a799588a6fa6be55942af00f8358d62c33387e8cba0e0b66079aab4baf7` |
| 23 | `theorem` | [coe_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/coe-mul.md) | 195 | `result-track:c6e578848bc07390be3c4cf2c61b6baa16fb437e38551e0f7d16d3c7f19a937a` |
| 24 | `theorem` | [coe_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/coe-one-source-edition-2.md) | 200 | `result-track:e09cf2c88e9ec0aaff3a834ca9d8323059b1ab21fd0e4ae4eeb79701fd60d6c3` |
| 25 | `theorem` | [mul_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/mul-def-source-edition-2.md) | 204 | `result-track:97b9e6c407cf939211ed049db21a31cb17150c2fa02100a20260cec60882a253` |
| 26 | `theorem` | [one_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/one-def.md) | 208 | `result-track:0cb72ecd1b34056bf4ef0c9beeec6b021014d855f893266ac3ff46f68e1d3698` |
| 27 | `theorem` | [inv_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/inv-def-source-edition-2.md) | 212 | `result-track:6633fc145b769c89432bf3a36c0d935b5e3b026e022c7cdff44f46a14da2a890` |
| 28 | `theorem` | [mul_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/mul-apply.md) | 217 | `result-track:0414e50f9c38a4d1ff7b249a14cf0e68f41e29b2dae053b7f08dc0e5bdabbb91` |
| 29 | `theorem` | [one_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/one-apply-source-edition-2.md) | 222 | `result-track:8d14f07ad3ac29609eec46e50ab3adff762cc7af36b5da51d6574e0631fdc06d` |
| 30 | `theorem` | [apply_inv_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/apply-inv-self-source-edition-2.md) | 227 | `result-track:de73066a07688ba6034f702b681ca5d08dbebe32de9395e13e8e32e6759059c4` |
| 31 | `theorem` | [inv_apply_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/inv-apply-self.md) | 232 | `result-track:11e7d45f5d52da4ec368c81941e1b1265125f5cec7c4084d2a189e0841d32a99` |
| 32 | `def` | [toPerm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/toperm.md) | 237 | `declaration-track:9af82499a32b93e5b3ff3552d956ef5e3deef87f584270cf99585e42179976fb` |
| 33 | `instance` | [applyDistribMulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/applydistribmulaction.md) | 244 | `declaration-track:14ba27a90d3d3c64f6b8c26891b1160b4d038c5db29e4fd524621156808963df` |
| 34 | `theorem` | [smul_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/smul-def-source-edition-2.md) | 253 | `result-track:b96cd457f1db733bbbea603ae082375498c7ac31a14768c73a249a45d25f9877` |
| 35 | `instance` | [apply_faithfulSMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/apply-faithfulsmul-source-edition-2.md) | 258 | `declaration-track:fe54384386205c1b046d286a1e39df255b24af71d084d4c0f20c09ba9ced7afc` |
| 36 | `def` | [conj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/conj-source-edition-2.md) | 265 | `declaration-track:dececec29f8f99f762da81adc79636c253f62758f650e26e316d930d4eea69db` |
| 37 | `theorem` | [conj_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/conj-apply.md) | 285 | `result-track:28c108e3e36238100785dde0f2b8da4653452e0acfa57867388c36933fa6dcea` |
| 38 | `theorem` | [conj_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/conj-symm-apply.md) | 290 | `result-track:1fc6a7d640f622e80df6519c5167fae588fcba2373bc0d3b33668001a9f421d1` |
| 39 | `theorem` | [conj_inv_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomAut.lean/declarations/conj-inv-apply-source-edition-2.md) | 298 | `result-track:a8fdcca7e47fdb5e6ebf2f8efd28d9e96ebc1baa53c7b3b730ca87064f0c068a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85a3c43cc5f7e2d162ee96bd32dd9461a2d3fbec01223bf13a9e33ce4c66926c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Aut/Varianteb7b1349adaa80b1f797e279b73a1cdbdec377c4cc13d9b3b0eaeafe4169624a.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Aut/Varianteb7b1349adaa80b1f797e279b73a1cdbdec377c4cc13d9b3b0eaeafe4169624a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
