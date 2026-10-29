# Verification target: Root System Hom Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53eda82ed247f46be8eef33b24fef6e41378e879",
  "lexical_observation_count": 78,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variante0eddf1c24aef78a3ef58ebda4e87cc17cbbc2f4a20fac0a8cb01d7f8b9b8745.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53eda82ed247f46be8eef33b24fef6e41378e879`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Hom/Variante0eddf1c24aef78a3ef58ebda4e87cc17cbbc2f4a20fac0a8cb01d7f8b9b8745.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Hom/Variante0eddf1c24aef78a3ef58ebda4e87cc17cbbc2f4a20fac0a8cb01d7f8b9b8745.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.RootSystem.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Hom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/hom.md) | 66 | `declaration-track:305a944c48578ee67d90201dde363e671ee50325970d09f8d1774fc8c81be66a` |
| 2 | `lemma` | [weight_coweight_transpose_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/weight-coweight-transpose-apply.md) | 81 | `result-track:029dccd0f3e1ecb8d8a1ae8455a88458da439703dd5753e57349e49886aa47af` |
| 3 | `lemma` | [root_weightMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/root-weightmap-apply.md) | 87 | `result-track:0ce6117469fc19570885af028be20fd8834fcc7652927d4bca48448e23c6cdd9` |
| 4 | `lemma` | [coroot_coweightMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/coroot-coweightmap-apply.md) | 93 | `result-track:45bea424026f462acb5a37aa39db247cf211c5a44b58ab7fecec3ec7fd881894` |
| 5 | `def` | [id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/id.md) | 101 | `declaration-track:4f08d666eaa711cbda7e1a59f78f643427e5e66a79ac127072a4300a95adb598` |
| 6 | `def` | [comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/comp.md) | 111 | `declaration-track:8a79e86c5083fa3c783342d3a9c6ecf3714413d355071e5a4a099a1a045ff6f9` |
| 7 | `lemma` | [id_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/id-comp-source-edition-2.md) | 134 | `result-track:d4a7d37ed1dc81e07d9fe6a6beb5baa3ce1cad6f95efa8f3c8819fc0b93d54af` |
| 8 | `lemma` | [comp_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/comp-id.md) | 141 | `result-track:73118d39da75fd4ce3b677023efa14cd2e83d19adf15347d5c1ae8a4aab420c4` |
| 9 | `lemma` | [comp_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/comp-assoc-source-edition-2.md) | 148 | `result-track:ffc3ba62b33ce4abc9233d3c816e0fdab6f3a463f0b69bb9b383c48456984a31` |
| 10 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/instance-source-edition-4.md) | 157 | `declaration-track:5a72c501c1f383aa2228652f08eaf1cebe99af26b8e915502b6cbf014b3fdb70` |
| 11 | `lemma` | [weightMap_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/weightmap-one.md) | 165 | `result-track:1da7051043e5ce8746ad594da8d01e4b7013f9e39a9b5ee3030263e135f03aa5` |
| 12 | `lemma` | [coweightMap_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/coweightmap-one.md) | 170 | `result-track:a91ebbd8f17360600aa1f53e63b36cd1c46c109b5444bbc553f6116a35e25b30` |
| 13 | `lemma` | [indexEquiv_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/indexequiv-one.md) | 175 | `result-track:f33b181bb23704599fe6765afd7caefc77880add721c535077b99b556db00b8f` |
| 14 | `lemma` | [weightMap_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/weightmap-mul.md) | 180 | `result-track:c4cb56a64c8c478df6d488763aa37e6833d5513e61eacaba78bec66574ea9859` |
| 15 | `lemma` | [coweightMap_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/coweightmap-mul.md) | 185 | `result-track:3cdc8facf6a9bd268c69e7d0da6cb62aadc5ed30dd68cfb43cf7a9b668f78487` |
| 16 | `lemma` | [indexEquiv_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/indexequiv-mul.md) | 190 | `result-track:b76df0567f54417ce77eb45bf784c9766affaee4ae4c352c14ddbf67b9bd2eaa` |
| 17 | `abbrev` | [Root System Hom Namespaced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/end.md) | 195 | `declaration-track:6299b8eb2eca7462f01df91c15731408a7b3399e24769126e58913c837ebf9c2` |
| 18 | `def` | [weightHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/weighthom-source-edition-2.md) | 198 | `declaration-track:b54952205853118e93dfc65140a9aa3a860f79183c2232f12a18d71a5990655e` |
| 19 | `lemma` | [weightHom_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/weighthom-injective.md) | 203 | `result-track:01afb364032c2228d62cbd3478ab93c02c257f2c40aabe71559de098939866ce` |
| 20 | `def` | [coweightHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/coweighthom-source-edition-2.md) | 215 | `declaration-track:c955713634c8c88f019dde6dd102aa992bb5842a0718bda39a511c262c831390` |
| 21 | `lemma` | [coweightHom_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/coweighthom-injective-source-edition-2.md) | 222 | `result-track:e9d1176b7190b555550ce13a8697da20cef413a5e7e9cf4609ed324f2312f469` |
| 22 | `def` | [indexHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/indexhom.md) | 247 | `declaration-track:885b0f9aba38142d841cbd4d6a5e0300b93d55fefb13c5c3181dc563a77c1e53` |
| 23 | `structure` | [Equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/equiv.md) | 263 | `declaration-track:47e75d21810d4287eddb34683dd19ccd665b8cca754953e083dcc87caab7b35a` |
| 24 | `def` | [weightEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/weightequiv.md) | 275 | `declaration-track:b38c091c73a9526a91716563dbd4cf9d8785b1c8d6dec161f64b3a72fa654935` |
| 25 | `lemma` | [weightEquiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/weightequiv-apply.md) | 279 | `result-track:057a466c29afa4dc0fe339af77dfea02a4193012a9bb96123ec51e7713fff81b` |
| 26 | `lemma` | [weightEquiv_symm_weightMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/weightequiv-symm-weightmap.md) | 284 | `result-track:254e506a62cb40322f54d251c7ab61f3d371575ecb4d86ccd85b1c0d672dea5f` |
| 27 | `lemma` | [weightMap_weightEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/weightmap-weightequiv-symm.md) | 289 | `result-track:5fbae6f235e785acad3332bb07c3cdddd92144bbd5415d9dc823d5d4a765c7c5` |
| 28 | `def` | [coweightEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/coweightequiv.md) | 295 | `declaration-track:4a97fb7a51f4947370b85d378d32243b84427bb6536c28fca3464ef59586ef99` |
| 29 | `lemma` | [coweightEquiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/coweightequiv-apply.md) | 299 | `result-track:1e560ee21802cb5db0f2df6bbc4f35572213079a470ae9f653215ea6eaa28c32` |
| 30 | `lemma` | [coweightEquiv_symm_coweightMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/coweightequiv-symm-coweightmap.md) | 304 | `result-track:645898f2e09f228fbed16c02a7f08660302672d0e1af4131533bc78ae15febf8` |
| 31 | `lemma` | [coweightMap_coweightEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/coweightmap-coweightequiv-symm.md) | 309 | `result-track:e5820c0325f3af6256370109d96a6b200031aa3561d917b7a4eb837e4de7fd8a` |
| 32 | `def` | [id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/id-source-edition-2.md) | 316 | `declaration-track:d2ad6e9772a424efddfea7b024e71d37f2f0dee8ab86f972b658349a36fa4ed7` |
| 33 | `def` | [comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/comp-source-edition-2.md) | 323 | `declaration-track:d5972376b189630f1ef956676485179008af87f36415d7c6c6fbddf3b3524625` |
| 34 | `lemma` | [toHom_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/tohom-comp.md) | 336 | `result-track:85a2253d2bea6c642ff187a32c56cf13fb2ee9d97325365d75633b47aee5bacc` |
| 35 | `lemma` | [id_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/id-comp.md) | 344 | `result-track:48dcbfe490371368634421dc0ca44740e6671fffaa04eb0d4da93a1f4e906f0c` |
| 36 | `lemma` | [comp_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/comp-id-source-edition-2.md) | 351 | `result-track:fc17720897e26ba111589f68d5501b504165fe90cdfb49780cee20130b8be7a4` |
| 37 | `lemma` | [comp_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/comp-assoc.md) | 358 | `result-track:5942cf14451a16a4ca89cee33cf5b9aaff7fc3a9f9e26e0059ee4de00f63c440` |
| 38 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/instance-source-edition-3.md) | 367 | `declaration-track:3a3a5f22bffe9c4217c68599df08c4d8ac942ecee9fa45ce78e8009874b9aa3e` |
| 39 | `lemma` | [weightEquiv_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/weightequiv-one.md) | 375 | `result-track:646b9d70bf95b71a1fda2f0b268d822b92a01ba75e36e80f7ce2fc877ffc3e7e` |
| 40 | `lemma` | [coweightEquiv_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/coweightequiv-one.md) | 380 | `result-track:0b751080486b667a6342556c5fc4ef6c54f1e1b7084b0b7b2a93b23900c014fc` |
| 41 | `lemma` | [toHom_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/tohom-one.md) | 385 | `result-track:d629c6254d53191e18e9a2cbf7626df9d55fec860b693b3243545c984be5f795` |
| 42 | `lemma` | [mul_eq_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/mul-eq-comp.md) | 390 | `result-track:a7d44469f14fc51eebebd1cff41d6b927dfe848ec17062fff5297dd8d884ce62` |
| 43 | `lemma` | [weightEquiv_comp_toLin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/weightequiv-comp-tolin.md) | 395 | `result-track:bfd57b645fad820f6e58e58fbbfc459e926200abc0840897c798582be505da53` |
| 44 | `lemma` | [weightEquiv_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/weightequiv-mul.md) | 400 | `result-track:b5a0a2a3d20dfc8ce07881aa155497e9c58ed41983725c3c5958011041da1abd` |
| 45 | `lemma` | [coweightEquiv_comp_toLin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/coweightequiv-comp-tolin.md) | 405 | `result-track:eb2d148d1ff69769bd43b45f7c24d24bd0dcd0ac8c49a0f11c58a6f0cbae7d1d` |
| 46 | `lemma` | [coweightEquiv_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/coweightequiv-mul.md) | 410 | `result-track:43f8a3eec5b4487e68ba8d52e553d766d381dc6884d333af1d0e3e8a4421a581` |
| 47 | `def` | [symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/symm.md) | 415 | `declaration-track:da7368b8a22a010e51764b69969e38907c9df0ae253d5acc1c63957c4c7c4b94` |
| 48 | `lemma` | [inv_weightMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/inv-weightmap.md) | 454 | `result-track:c11f35a2f056acd1a1566a3b88a31e68be4d1a434157e27b397c53c5cd0de180` |
| 49 | `lemma` | [inv_coweightMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/inv-coweightmap.md) | 460 | `result-track:60d1914c8ccf43a62649b2b2c97f7aa2c1710b21bd941a4f2cdb32f71fe0319d` |
| 50 | `lemma` | [inv_indexEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/inv-indexequiv.md) | 466 | `result-track:cdc80958f8e45cfa029cc5f7df422af128fa43e2fe54cb6e02a17a4398bac21f` |
| 51 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/instance.md) | 472 | `declaration-track:068cf549fa52f4bdcd7ee321984bba85695ac96f8d509df1f0fd54166cb85838` |
| 52 | `abbrev` | [Aut](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/aut.md) | 490 | `declaration-track:deb02724c431a2fe7fca4630784e44c6a63e0b8af0aeecc8e80ab073c06ad403` |
| 53 | `def` | [toEndUnit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/toendunit.md) | 496 | `declaration-track:1d3b5e43770c790b2eeb0f7804a3b5b049499dcb78ca4930e599eb88c3a7e3de` |
| 54 | `lemma` | [toEndUnit_val](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/toendunit-val.md) | 530 | `result-track:e3809477d23b9b8b689a44df9e1df48a7bd78697981ec595cc9e71868cb0911c` |
| 55 | `lemma` | [toEndUnit_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/toendunit-inv.md) | 533 | `result-track:9a636860e2bc44c8c9c836689c6b774465a1d97e385ff1b1c52a88cdd9182527` |
| 56 | `def` | [weightHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/weighthom.md) | 539 | `declaration-track:3358d0f79438ffe666507182cc3e9bcb985658bd4b431e634a05325e65d1164c` |
| 57 | `lemma` | [weightHom_toLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/weighthom-tolinearmap.md) | 544 | `result-track:640b3b6d8f610c0b9ccfdd92ca7e6055b513d142c7ea55b14cd7285a4831a0f8` |
| 58 | `lemma` | [weightHom_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/weighthom-injective-source-edition-2.md) | 548 | `result-track:f6053b44cb95a06810f2e2f8facabb562c206e23a5610d86917683dd67e2dcd9` |
| 59 | `lemma` | [weightEquiv_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/weightequiv-inv.md) | 557 | `result-track:c1f82d413a53384c7e25cef483bfd20a40e21b9ba01dd17c31a9bd02a22adc10` |
| 60 | `def` | [coweightHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/coweighthom.md) | 563 | `declaration-track:a147afcc40926b2432fd69c75777ad0ffe7f515e296de07445abd18456576d05` |
| 61 | `lemma` | [coweightHom_toLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/coweighthom-tolinearmap.md) | 572 | `result-track:f577a679821f6a15bdb74b8026913eebda928b56dcdefc2436ba85345d1af181` |
| 62 | `lemma` | [coweightHom_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/coweighthom-injective.md) | 577 | `result-track:456e391a8dc8b81fd4e2357c8bb48a1fbaedcc965653cfe2f1f6ab0ef4599898` |
| 63 | `lemma` | [coweightHom_op](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/coweighthom-op.md) | 588 | `result-track:aa355d2fb84c067a6d05c4ed82bf714f22f9b394ec1ab996518c2b634716e8de` |
| 64 | `lemma` | [coweightEquiv_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/coweightequiv-inv.md) | 593 | `result-track:c0683c33929915230d7af156c8b5269cc40bc1a0b1a38dc3ffe81e369a241de5` |
| 65 | `def` | [indexHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/indexhom-source-edition-2.md) | 599 | `declaration-track:ae8f5ec0cbb32f9566779ba0b6ab054570a60623273340c55bed1ce02f3a5278` |
| 66 | `lemma` | [indexEquiv_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/indexequiv-inv.md) | 605 | `result-track:b5cf1c07226c63665a74da8cc351cd426a30610c78d17bf1b0479a844977ed3d` |
| 67 | `def` | [reflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/reflection.md) | 610 | `declaration-track:57cbba52040e51dc66a6948e65f610b77cdd57b32132bdde2d643c8b5f2a2913` |
| 68 | `lemma` | [reflection_weightEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/reflection-weightequiv.md) | 633 | `result-track:a50037a5c76755f5f671637013d52b13585d37e43ecc97543720c186f9818459` |
| 69 | `lemma` | [reflection_coweightEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/reflection-coweightequiv.md) | 638 | `result-track:6b804b6cc58dc1597f873aaaca6f63bb10294ce579c2fb22217cc4e7d4980e09` |
| 70 | `lemma` | [reflection_indexEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/reflection-indexequiv.md) | 643 | `result-track:1ebf61be2c58a841037a87453228512238fc6ce967ff48d22012aecd8b492287` |
| 71 | `lemma` | [reflection_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/reflection-inv.md) | 648 | `result-track:1915bac41683ac16c3b657c2644149d93515a960741dd3ae9b737c7949bfab24` |
| 72 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/instance-source-edition-6.md) | 655 | `declaration-track:a12a935f29ccbfc343d81031ef520190a572876a6b45b54f4393c8f93117d34e` |
| 73 | `lemma` | [reflection_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/reflection-smul.md) | 662 | `result-track:8cdc1207ce3e3fe1f001064e984fdda11303b97bf770f0900459f437dc63a6f9` |
| 74 | `lemma` | [root_indexEquiv_eq_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/root-indexequiv-eq-smul.md) | 664 | `result-track:725b565e46231b6668adc7a922b53c7b9f2612b97bb6c8d2d407663e1c7c6679` |
| 75 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/instance-source-edition-2.md) | 669 | `declaration-track:34ee08e2257dc78b54fb9f3894cfdcd99f06ae8b4fc3de965eff186000d4799c` |
| 76 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/instance-source-edition-5.md) | 678 | `declaration-track:98905f2546fd1b0fe0f64dd9bc55f2758d218566538c2abeea10c1a72b559697` |
| 77 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/instance-source-edition-7.md) | 682 | `declaration-track:ae70b3dbc3d9651ab3c5c6e9c8a82c8ba09c3abae040a007f430be497b673256` |
| 78 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomNamespaced.lean/declarations/instance-source-edition-8.md) | 687 | `declaration-track:eefb489892afe47501863115409d30d91480396ce16b9cf263e7e6969ff32ebc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db5bfe4e3a9090af76759b5ac12960d24e819a29e04dfc1132a18a7ac9f7fbe9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Hom/Variante0eddf1c24aef78a3ef58ebda4e87cc17cbbc2f4a20fac0a8cb01d7f8b9b8745.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Hom/Variante0eddf1c24aef78a3ef58ebda4e87cc17cbbc2f4a20fac0a8cb01d7f8b9b8745.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
