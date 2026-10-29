# Verification target: Bilinear Map Ext Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c60e5d2898e7e4da61a5d30b819da103e0dce381",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BilinearMap/Variant36a76283dec5275d706540118195821732af0e5b6df4c638fa9871d3a21511a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c60e5d2898e7e4da61a5d30b819da103e0dce381`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BilinearMap/Variant36a76283dec5275d706540118195821732af0e5b6df4c638fa9871d3a21511a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BilinearMap/Variant36a76283dec5275d706540118195821732af0e5b6df4c638fa9871d3a21511a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mk₂'ₛₗ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/mk-source-edition-3.md) | 66 | `declaration-track:fd2304b2763d4ab2319c9c3f44165ff2d418e1788da447cabb564bc7e45f5f75` |
| 2 | `theorem` | [mk₂'ₛₗ_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/mk-apply.md) | 80 | `result-track:02eafbe75ab23fc74b697b7054b85d340c8df207c26820ae16fdea25801c2d41` |
| 3 | `def` | [mk₂'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/mk-source-edition-2.md) | 87 | `declaration-track:828371533f90be03abf8d530d12420aa0d349329e76cca813582ddc0c409ae30` |
| 4 | `theorem` | [mk₂'_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/mk-apply-source-edition-3.md) | 96 | `result-track:a3410f8b716102d3c37979f1107685c4cc1d789795100998044912b2d0e80188` |
| 5 | `theorem` | [ext₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/ext.md) | 99 | `result-track:a4b25e994ad7223bd56a2310bd54e30f589cc89d8edcb3650f6e47dcdeb414f8` |
| 6 | `theorem` | [congr_fun₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/congr-fun.md) | 102 | `result-track:46d40daa6abef2825b8dbb845ed8526c18d8fa63394c9cddecf5b0ec566ef71a` |
| 7 | `theorem` | [ext_iff₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/ext-iff.md) | 105 | `result-track:d0588e091a95ab057d20f35e26c791440497f9b5271d7a38a390e9bc2c0073f8` |
| 8 | `def` | [flip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/flip.md) | 114 | `declaration-track:7b69783e16bdc64b6a6352ced010154139f2672c9f1a2d38824fa324bf6d8897` |
| 9 | `theorem` | [flip_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/flip-apply.md) | 125 | `result-track:dc9165f3023c1d6699b5012ab9200659d17d0db1aca0223788f544210f5a5549` |
| 10 | `theorem` | [flip_flip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/flip-flip.md) | 130 | `result-track:b27e31b7d0bf1bad9405e07d5aee3c114ad20aeac0403124f8be5ceecc60366a` |
| 11 | `theorem` | [flip_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/flip-inj.md) | 133 | `result-track:f7198bde0872ce708a790a66a0cc636086036070dbaa5c364f1c52b81f2439b1` |
| 12 | `theorem` | [map_zero₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/map-zero.md) | 136 | `result-track:dfecd4afa5829a6757a28f59fd74d9f239e3d3f19260ff8cc1b00ea8622f89c4` |
| 13 | `theorem` | [map_neg₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/map-neg.md) | 139 | `result-track:b447184313710b5bb516ee7ea92eb1bff0e6c4835c21132f1b0a1f1099b7f67c` |
| 14 | `theorem` | [map_sub₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/map-sub.md) | 142 | `result-track:399e007a5d302866972d65b09d340f553b6efc8b7ba5c78cb843180d051689ac` |
| 15 | `theorem` | [map_add₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/map-add.md) | 145 | `result-track:0f02449999964ba73795bc4e799f89fca102e64f6f0b3f1c905a58ea45a0db40` |
| 16 | `theorem` | [map_smul₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/map-smul-source-edition-2.md) | 148 | `result-track:f590fd69f3e72a86269baed194b8eb00a88c1fb35177ff643529c031e225bad9` |
| 17 | `theorem` | [map_smulₛₗ₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/map-smul.md) | 151 | `result-track:167b5d4a9d2fc12cf9fd31e385d0a60cd244c082088c594336756ec473b54356` |
| 18 | `theorem` | [map_sum₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/map-sum.md) | 154 | `result-track:ad99017d19b99584488b33be2c04466b0c7d0b6297fb82028bd5d339991aa6d8` |
| 19 | `def` | [domRestrict₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/domrestrict.md) | 159 | `declaration-track:921ea6dc329a304ade55aba878ee3ddcb259da2885db1a2d4dcad919d8c18c87` |
| 20 | `theorem` | [domRestrict₂_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/domrestrict-apply-source-edition-2.md) | 165 | `result-track:e5549d6b771f64aa5ae72a1a3ac1c7eb08c6b74e69d833a7cbeea32db3c455f6` |
| 21 | `def` | [domRestrict₁₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/domrestrict-source-edition-2.md) | 169 | `declaration-track:ede56edc4f6508ca926827ae301c83272a23332e53f3a5921458c390528997d0` |
| 22 | `theorem` | [domRestrict₁₂_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/domrestrict-apply.md) | 173 | `result-track:de5aae5ef8f6c949aa36afb05460a6e22d29076f71d323afc11f50ed6a756e48` |
| 23 | `def` | [restrictScalars₁₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/restrictscalars.md) | 187 | `declaration-track:ce5f4a62bd2b5d0c6a9f692f23131db8efe621b8f88d7277285941a528bf74ae` |
| 24 | `theorem` | [restrictScalars₁₂_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/restrictscalars-injective.md) | 197 | `result-track:7c241a86c0eded0c2fff32bbd9ada5d0c282035b7084c582d25ea7eed6ae626b` |
| 25 | `theorem` | [restrictScalars₁₂_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/restrictscalars-inj.md) | 202 | `result-track:fdf9a51f9c3b4e1afc24d65e90ace4d01316f512bc1285a313b9484e7f24421c` |
| 26 | `def` | [mk₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/mk.md) | 229 | `declaration-track:3e07b5eef61b4006bb54588acfda3e8d3f68fc0a604822f8c5f2dc3c469556db` |
| 27 | `theorem` | [mk₂_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/mk-apply-source-edition-2.md) | 236 | `result-track:5e455a3d00a1deed11a8e12ce89ca698e9c0528a9897093288a675dc463e6787` |
| 28 | `def` | [lflip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/lflip.md) | 243 | `declaration-track:352ce76437f3388d7994039f87caeb18efe9b0e5afd16151d6248b32f278c8f5` |
| 29 | `theorem` | [lflip_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/lflip-apply.md) | 251 | `result-track:4e539bb68f757f44eb1dc6066a1afbd97dd4056a952a64ef05c3b25264f3c6f2` |
| 30 | `def` | [lcomp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/lcomp-source-edition-2.md) | 257 | `declaration-track:855d049712f54d9e5b130faee35dc100e8430de454d79d4b1825d150c4ca5c4e` |
| 31 | `theorem` | [lcomp_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/lcomp-apply.md) | 263 | `result-track:1058060c2900b8579e89baae71b5ff60cc362d3a3025e61647b9c277964c6099` |
| 32 | `theorem` | [lcomp_apply'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/lcomp-apply-source-edition-3.md) | 265 | `result-track:dd87bdd160855a8f53dd1485d9f34887b61dfb01d0d93f5a73761d83b3274479` |
| 33 | `def` | [lcompₛₗ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/lcomp.md) | 271 | `declaration-track:00f64abfed52bbc39a3a450bca26ade329f3abbdc67b1fbb3b1c8d8deca0735a` |
| 34 | `theorem` | [lcompₛₗ_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/lcomp-apply-source-edition-2.md) | 277 | `result-track:69b47b33f3c50f46780826a8fb136920152951539d6c8a10c3769df69b62e907` |
| 35 | `def` | [llcomp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/llcomp.md) | 283 | `declaration-track:de99d12a2b7fe21fc049240cb3567cc3351cf7d1f536e7b21f2704adf9d0a6bd` |
| 36 | `theorem` | [llcomp_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/llcomp-apply.md) | 294 | `result-track:60a5971048369aaf8e86c8ffe2d896c35868a612e1261c22b816b5cdb876be64` |
| 37 | `theorem` | [llcomp_apply'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/llcomp-apply-source-edition-2.md) | 297 | `result-track:6e5dcc8b95b3ac3909042756425f213ceef08e85580dfe6f6831df1d62da3742` |
| 38 | `def` | [compl₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/compl.md) | 303 | `declaration-track:496847b00013e48073b5725395b8aeaf737892e71b0918012d34d4271ba542a2` |
| 39 | `theorem` | [compl₂_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/compl-apply.md) | 313 | `result-track:33addf095741591e8b885c8fd242e49cbb2113a1efa16bf0f5db4167417cbb1f` |
| 40 | `theorem` | [compl₂_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/compl-id.md) | 316 | `result-track:78183e220120b7bb5e278e187d4de51f2c11613a7feb7098baac70e27f3f205d` |
| 41 | `def` | [compl₁₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/compl-source-edition-2.md) | 322 | `declaration-track:520d6340757e8055922f3f6f566423c7f89292cb8c9f9d063e1f46af11335b7d` |
| 42 | `theorem` | [compl₁₂_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/compl-apply-source-edition-2.md) | 329 | `result-track:fac50df799e14e86e2d05fec34f4ffde08e7d2e37b2e1207467d810e47dffa13` |
| 43 | `theorem` | [compl₁₂_id_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/compl-id-id.md) | 333 | `result-track:df425172ec6fc5915d0ff2f76ea700e41ee7fab7e7a1409160143a3fd7ef9656` |
| 44 | `theorem` | [compl₁₂_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/compl-inj.md) | 337 | `result-track:021cc3bba46150fb321f736a859e82a72045bda7b13536389999faf3393b1c22` |
| 45 | `def` | [compr₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/compr.md) | 353 | `declaration-track:1824f68d83af25272176a52c79c411be7dc613862f5f123a1f1f29b1a2d60854` |
| 46 | `theorem` | [compr₂_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/compr-apply.md) | 357 | `result-track:c3e2768af4eefc863736fab7fe1a349a59f8b1d91e1f0f04c0ec1f5561922915` |
| 47 | `theorem` | [injective_compr₂_of_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/injective-compr-of-injective.md) | 361 | `result-track:b66243889e6af83f4ba64758a6cd6f72368e91ac9aa88e190f70c2e8f931788c` |
| 48 | `theorem` | [surjective_compr₂_of_exists_rightInverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/surjective-compr-of-exists-rightinverse.md) | 366 | `result-track:526357d6a9c32736ce01ca1287623d3021c4ad07cb24f3d761dffee4f672fe37` |
| 49 | `theorem` | [surjective_compr₂_of_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/surjective-compr-of-equiv.md) | 371 | `result-track:c7cafa47e1271dee56a522990e3d017cf797291d2a8eb6b977c8266083155338` |
| 50 | `theorem` | [bijective_compr₂_of_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/bijective-compr-of-equiv.md) | 376 | `result-track:d7ea95f7167473f21bdd24fdcd45477e690c9aef09ef59fa1eeb3c029f7556b8` |
| 51 | `def` | [lsmul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/lsmul.md) | 384 | `declaration-track:9c9ee05f3770789090d3ac39d24b52bb5f5a7e6b8e692c83b0364bf414cc5f9e` |
| 52 | `lemma` | [lsmul_eq_DistribMulAction_toLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/lsmul-eq-distribmulaction-tolinearmap.md) | 390 | `result-track:6d2a78a74490f08e6e563c369610a10c2f013a04b5b2cf7a86fb3dde578d821a` |
| 53 | `theorem` | [lsmul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/lsmul-apply.md) | 396 | `result-track:3e4d75ef12f9292b52911d04cd399ac40eb1c217d9981aaa6a7b0dfc521f9c1a` |
| 54 | `abbrev` | [BilinMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/bilinmap.md) | 400 | `declaration-track:398b883ea97707e8671fcb742a823abb48672437d67bb9a56a036c11bd7d4b13` |
| 55 | `abbrev` | [BilinForm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/bilinform.md) | 404 | `declaration-track:10fb039b5c2fcb90fbafa05eaa5473f0d3d4cf9a3c8006ed47e1957abe2e2ee6` |
| 56 | `theorem` | [lsmul_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/lsmul-injective.md) | 416 | `result-track:206fba5ba8d6e2044967590e8b2a2eee39d16b483a2951ec990107a0d944a3a5` |
| 57 | `theorem` | [ker_lsmul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/ker-lsmul.md) | 420 | `result-track:0c504171207a16404965b4c4311074f66d23423b8b15c51559fee6f576e9665e` |
| 58 | `def` | [restrictScalarsRange](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/restrictscalarsrange-source-edition-2.md) | 443 | `declaration-track:16115cc5d0dd933f9538f7543706a974d986718a44bbe22b86337b022525ab34` |
| 59 | `lemma` | [restrictScalarsRange_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/restrictscalarsrange-apply-source-edition-2.md) | 448 | `result-track:9009233c9b9502037991eb3a26c395d451b000b1c382ccd992602bbb22d253c5` |
| 60 | `lemma` | [eq_restrictScalarsRange_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/eq-restrictscalarsrange-iff.md) | 456 | `result-track:77022e62148cb52b01339c26958354695ba166f4e0ab6ae26d85da116a4d3962` |
| 61 | `lemma` | [restrictScalarsRange_apply_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/restrictscalarsrange-apply-eq-zero-iff.md) | 461 | `result-track:103111a866a28468355e330f2ddbf0fac96419f978df7c5bce09677ea5211587` |
| 62 | `def` | [restrictScalarsRange₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/restrictscalarsrange.md) | 481 | `declaration-track:09cb7ce9fa81512b6f2933a3341b9e7dcaea50891de4170198c41627dd739510` |
| 63 | `lemma` | [restrictScalarsRange₂_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/restrictscalarsrange-apply.md) | 486 | `result-track:3bd4bfe2e543a4eb06e1c5995f22d9cbad21e41a1c9bdc8818e33514b057ea35` |
| 64 | `lemma` | [eq_restrictScalarsRange₂_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/eq-restrictscalarsrange-iff-source-edition-2.md) | 491 | `result-track:c89c21be3a5279631a6439bf08cb5dac252501894f49772e105600359b017957` |
| 65 | `lemma` | [restrictScalarsRange₂_apply_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapExtIff.lean/declarations/restrictscalarsrange-apply-eq-zero-iff-source-edition-2.md) | 496 | `result-track:8d50f32ef3915841a0561c269336ec4670351317a4067040634a4678b8d54bef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=49031d77e480c374f3a656fdcea5d1c30b2db133d821029d7eb736d30c60ae8f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BilinearMap/Variant36a76283dec5275d706540118195821732af0e5b6df4c638fa9871d3a21511a7.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/BilinearMap/Variant36a76283dec5275d706540118195821732af0e5b6df4c638fa9871d3a21511a7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
