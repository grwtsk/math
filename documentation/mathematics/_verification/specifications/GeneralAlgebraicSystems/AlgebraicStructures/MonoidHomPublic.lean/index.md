# Verification target: Monoid Hom Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c632a217369f01d9da880bd5a481d16617286c7",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/MonoidHom/Variant94bd40bdb8954c3ea9a12572808e7bf8f8ae61b6aa325f237e18ea3d15969aca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c632a217369f01d9da880bd5a481d16617286c7`.

Source path: `GRWTSK/Algebra/GroupTheory/MonoidHom/Variant94bd40bdb8954c3ea9a12572808e7bf8f8ae61b6aa325f237e18ea3d15969aca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/MonoidHom/Variant94bd40bdb8954c3ea9a12572808e7bf8f8ae61b6aa325f237e18ea3d15969aca.lean.json)

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
| 1 | `structure` | [StarMonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/starmonoidhom.md) | 36 | `declaration-track:3234a3fa42df5f6b3dbd201764ced8cc3c8890957cdc137deabef835d41a536a` |
| 2 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/instance-source-edition-5.md) | 53 | `declaration-track:867e07034966a8dd6e4820d35b6d6581e49d3a64eda5ee6d5dee7eccf92a7937` |
| 3 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/instance-source-edition-2.md) | 57 | `declaration-track:2be38bfe4f2ba1b9f831d9d484c3462f3ef40c9fa1e42b078956c44e5f0c7150` |
| 4 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/instance.md) | 61 | `declaration-track:27039a8b5b3fe13bbe85eb327fca0f463ae6a5265e4fb0da77864c4f94aef220` |
| 5 | `def` | [Simps.coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/simps-coe.md) | 65 | `declaration-track:07c60ed9f9bf7a8de5ad7d7984af8095d2763ef7d10f10b69c79e44b268af5ea` |
| 6 | `def` | [ofClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/ofclass-source-edition-2.md) | 71 | `declaration-track:faccafec9ab353326e4d99d2e58712b7a47423d467b22e3ce98f58d43108c5be` |
| 7 | `theorem` | [coe_toMonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/coe-tomonoidhom.md) | 79 | `result-track:9d149b99a8106101b06975be034de12a9393b5f1f3e497d6a0b9619cfa0b16d5` |
| 8 | `theorem` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/ext-source-edition-2.md) | 83 | `result-track:c5b4364ddfc8841a2f47f007750ebfd5f533d15168a7505cbaefa0a1e6794a95` |
| 9 | `def` | [copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/copy.md) | 88 | `declaration-track:6ada4e8fe3d1ca2dfffd8642ae366a56492d161b2632198ede5b1b1a03a780a9` |
| 10 | `theorem` | [coe_copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/coe-copy.md) | 95 | `result-track:1db1915d3423e4b5bc15f612038c3cee0280da2a3cce7b563b74910fc931b0f7` |
| 11 | `theorem` | [copy_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/copy-eq.md) | 98 | `result-track:eaef7e4498d8e5574f1120438700a8263e26ccfa49236559a299ba3d088f4451` |
| 12 | `theorem` | [coe_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/coe-mk.md) | 102 | `result-track:01601859e539d799039dea8abad71be04c1659ddd0b4494cfbdc16224e2d3a38` |
| 13 | `def` | [id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/id.md) | 109 | `declaration-track:972cacb973355b9ef8ad5cc9669f17a2157c4ba927ed63234a3639abf7a7ae39` |
| 14 | `theorem` | [coe_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/coe-id.md) | 113 | `result-track:16c0b8e43b465cac6d603e8b295cd43d4083c43029a323255bc047b0c3d24e9e` |
| 15 | `def` | [comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/comp.md) | 123 | `declaration-track:d2184c93059a8b34169761514495270f0f1ff53aa3a554d08c6db04ec035c1c6` |
| 16 | `theorem` | [coe_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/coe-comp.md) | 128 | `result-track:d0560102d9e62da1f150ba4c28f5b22bca4c492f4ad43c4daa4fd4d66d40914b` |
| 17 | `theorem` | [comp_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/comp-apply.md) | 132 | `result-track:9c3da3ab17f2734766dd8e188a0ae83af0563b4f5bc9d84f309f1a303da47d66` |
| 18 | `theorem` | [comp_assoc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/comp-assoc.md) | 136 | `result-track:b0ac74827782fdb274aa2d0058a83f62c15d8802e533380c6a53b0115b329aa6` |
| 19 | `theorem` | [id_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/id-comp.md) | 141 | `result-track:4afbedf35a45bf398ed1387007cbdb69d956a50398cf51f534a1e16f6a34f258` |
| 20 | `theorem` | [comp_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/comp-id.md) | 145 | `result-track:76ae1dc1b73e8467783b4b3d200e57705b3b79a7d34a7474fe00e0ce9e5287c9` |
| 21 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/instance-source-edition-8.md) | 148 | `declaration-track:c9eb9335680dcce2a51687c8a93d25477ecd942b7045d2e7444540b7e63fd4f5` |
| 22 | `theorem` | [coe_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/coe-one.md) | 156 | `result-track:f7d1580eea2e57461cbbebcb92ed674c270cab986f632e8821ba832d3c63db77` |
| 23 | `theorem` | [one_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/one-apply.md) | 159 | `result-track:59c3e035ade81f4b84ed57854cd37832f0a8036ac06b98f60b660f867dd91def` |
| 24 | `structure` | [StarMulEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/starmulequiv.md) | 170 | `declaration-track:9d11f37e8d6063937fd0f11c592c25c3838bded9a8cbda5acfd402adda6ed1bf` |
| 25 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/instance-source-edition-6.md) | 189 | `declaration-track:ac214f9661076a70fd321b6611aca3151820280d4103f2886b2f3ae8e0858f5f` |
| 26 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/instance-source-edition-3.md) | 196 | `declaration-track:4918f0f0546c19b0873899585a8741db27088d39ff175ae7b67a450452487a40` |
| 27 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/instance-source-edition-7.md) | 199 | `declaration-track:b294665d915ce123094577a86f19a50239b71f2ae1b02157fa6b6ea695edc6c1` |
| 28 | `theorem` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/ext.md) | 203 | `result-track:b149f81487e86c7151c114ac0eea9831b32864de33b2844f73cfdadc4e846ed8` |
| 29 | `def` | [refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/refl.md) | 209 | `declaration-track:656ce437acae7f6211ed5224f44901cc5ca9ea751d8a1203bb8d7f6cd9a169a2` |
| 30 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/instance-source-edition-4.md) | 213 | `declaration-track:8558cda99b7aa964ea66662ff82a437396b1ebadc5adc2e9680a643d805fe3c6` |
| 31 | `theorem` | [coe_refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/coe-refl.md) | 217 | `result-track:6267f6eda777449f0639bfc0b277f75848df07d64887c9a73d018680ef2dda0d` |
| 32 | `def` | [symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/symm.md) | 222 | `declaration-track:3385e871b7f32fe5d9af1151df307662da1ffe11d4df77863194dd4e359dc9c5` |
| 33 | `def` | [Simps.apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/simps-apply.md) | 229 | `declaration-track:e686cdd61d83fda8aea81641282e475fa3c3237492cce198f1cb7b17736a4365` |
| 34 | `def` | [Simps.symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/simps-symm-apply.md) | 232 | `declaration-track:76900af6a37a9b6c14307d99c149eed1cc2b68b667e544e59cccf4d1ddd5fdee` |
| 35 | `theorem` | [invFun_eq_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/invfun-eq-symm.md) | 238 | `result-track:c437e95c974cc5c998e8a1d2a466856b60bbb959386300e995cb3e3543c5802f` |
| 36 | `theorem` | [symm_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/symm-symm.md) | 242 | `result-track:6bff9731ec3be4896c0a5e8b2db1b258d9cf26355524a19a115fe365af995dbd` |
| 37 | `theorem` | [symm_bijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/symm-bijective.md) | 244 | `result-track:41f0581a50d5d946efd05cd7a0b75a4d7d15675b42f978cfacfb69f10151780c` |
| 38 | `theorem` | [coe_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/coe-mk-source-edition-2.md) | 247 | `result-track:0ee9fd5a07d36ead5b2681660a63d318efbd5b9df33c65958c35fc2334ea7e01` |
| 39 | `def` | [ofClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/ofclass.md) | 251 | `declaration-track:b1b9308e125f37bfce4b428898b9723b7957bfea975b07593232aac7e684b238` |
| 40 | `theorem` | [coe_toMulEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/coe-tomulequiv.md) | 261 | `result-track:c8ba2c42b7ca61f6d6ada01a9b009e305886553df99b1a05615db2d00763fea9` |
| 41 | `theorem` | [toMulEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/tomulequiv-symm.md) | 265 | `result-track:4dbe866a105187494c0f89e241bd61c03ff3d7846d0c67f058203a33ee95a7e1` |
| 42 | `theorem` | [refl_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/refl-symm.md) | 269 | `result-track:8a165567a0290e4fa7ff54b98db792f234d84222e367d9652b295518fa532c21` |
| 43 | `def` | [trans](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/trans.md) | 274 | `declaration-track:19641671823417957142a52b5931fd10ede433f48c6477e1b9c0299632002b70` |
| 44 | `theorem` | [apply_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/apply-symm-apply.md) | 281 | `result-track:ce577fb3befd70ee79c2e28e8d547976bd12b10229317f01385ed6f3f3f0660d` |
| 45 | `theorem` | [symm_apply_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/symm-apply-apply.md) | 285 | `result-track:0449130fdb1c9913e3a17bd0b15e156cb23d94eb362624c919719615740205e3` |
| 46 | `theorem` | [symm_trans_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/symm-trans-apply.md) | 289 | `result-track:d24ca6b749c4348c94d002643bed854146ff52cf838c328941e8a15292db27b2` |
| 47 | `theorem` | [coe_trans](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/coe-trans.md) | 294 | `result-track:91706eb0cc25d397d182e5e6e7b576b5570c6c0cbe770047170f53094a51e645` |
| 48 | `theorem` | [trans_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/trans-apply.md) | 298 | `result-track:155ec78c6ebac0495a2a2f8919ae51f2589c2ec90f6744583747092b5354d631` |
| 49 | `theorem` | [toMulEquiv_trans](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/tomulequiv-trans.md) | 302 | `result-track:b6c794874baf4c33d6f856f262c51cf23d74f4958c5bebc349aae98f69414a6a` |
| 50 | `theorem` | [leftInverse_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/leftinverse-symm.md) | 306 | `result-track:2eab0659466aaa51bf67b2cd6d1a19be42e7120380d01a58af03f994ac0a3e90` |
| 51 | `theorem` | [rightInverse_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/rightinverse-symm.md) | 309 | `result-track:30cd9d9045f791bf0a454c12970e194d914c865ab7d7b3df9d99b466fb2a003d` |
| 52 | `def` | [toStarMonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/tostarmonoidhom.md) | 320 | `declaration-track:d89cd40df4f80cb99b846f2ed725f71af49d44d962fc6f6113f9529d90084d6b` |
| 53 | `def` | [ofStarMonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/ofstarmonoidhom.md) | 328 | `declaration-track:619f255bf8d702bd2cd8bec63b2a540ef2e2d3a48016ea9ffd74741d76c1509b` |
| 54 | `def` | [ofBijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/ofbijective.md) | 338 | `declaration-track:7972334ed8aedb6c043483ab2cca21328a6dc361e4ced56e2e353e35ef9b71c3` |
| 55 | `theorem` | [coe_ofBijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/coe-ofbijective.md) | 344 | `result-track:f7f730446dc2cbbc674ac01832191de4acc793bb9601289170d1744e145f08cd` |
| 56 | `theorem` | [ofBijective_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidHomPublic.lean/declarations/ofbijective-apply.md) | 348 | `result-track:2f7060f9d90112bc9c1bf66859b902e8f55a0a68f6f52114cda8a9f2bae970f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73109118b07a1767b9a5d3a55bade3ed1ec78759ec2954b06c0606bfc09be5af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/MonoidHom/Variant94bd40bdb8954c3ea9a12572808e7bf8f8ae61b6aa325f237e18ea3d15969aca.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/MonoidHom/Variant94bd40bdb8954c3ea9a12572808e7bf8f8ae61b6aa325f237e18ea3d15969aca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
