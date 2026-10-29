# Verification target: Polynomial Algebra Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce5f1ce9aa8905348f5ff07c15ff90b695e5ef3b",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant299800de42ea932530de3174d283ac26bb53f4b9668cd37a67bf840481aa8f02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce5f1ce9aa8905348f5ff07c15ff90b695e5ef3b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant299800de42ea932530de3174d283ac26bb53f4b9668cd37a67bf840481aa8f02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant299800de42ea932530de3174d283ac26bb53f4b9668cd37a67bf840481aa8f02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toFunBilinear](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/tofunbilinear.md) | 40 | `declaration-track:f228e4d433955eb126eb55d39ea6d4abc5964ed85a0f38ef044e54aca150873f` |
| 2 | `theorem` | [toFunBilinear_apply_apply](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/tofunbilinear-apply-apply.md) | 43 | `result-track:41943d3d8b7d555546b2807dc7c3d3f054470cf5bd4d71bfa1aa26583a99c7c9` |
| 3 | `theorem` | [toFunBilinear_apply_eq_smul](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/tofunbilinear-apply-eq-smul.md) | 46 | `result-track:9085f08f9e8723441449634141561780bbdde0940874b122f3d1b8deca2799d0` |
| 4 | `theorem` | [toFunBilinear_apply_eq_sum](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/tofunbilinear-apply-eq-sum.md) | 49 | `result-track:478a7e742d5789a879d742e172fbcbb75f9dfe673fc35e36cef0ee1cd6d81a09` |
| 5 | `def` | [toFunLinear](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/tofunlinear.md) | 58 | `declaration-track:addee2bf6f2aa7b4c318ed17c1a9ed5c06a95f9d3542011d9f36526642b8f666` |
| 6 | `theorem` | [toFunLinear_tmul_apply](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/tofunlinear-tmul-apply.md) | 62 | `result-track:1aadf3a03aeff18d2aa03553b366afc3e2b35065a9aaccbf9d476c6c395ba93d` |
| 7 | `theorem` | [toFunLinear_mul_tmul_mul_aux_1](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/tofunlinear-mul-tmul-mul-aux-1.md) | 68 | `result-track:88e9872fdd446f09d2d5db909ffae8edefea48d0ae66a111e196bac46236c43c` |
| 8 | `theorem` | [toFunLinear_mul_tmul_mul_aux_2](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/tofunlinear-mul-tmul-mul-aux-2.md) | 72 | `result-track:8d406fb5d30644cfb968c396b80230310cb0d9947e3373b89d15ea693150debe` |
| 9 | `theorem` | [toFunLinear_mul_tmul_mul](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/tofunlinear-mul-tmul-mul.md) | 80 | `result-track:a57db65e27a97928beed18cf0ef85c7fe71101a7eba4d1766bd24cf1decf7f27` |
| 10 | `theorem` | [toFunLinear_one_tmul_one](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/tofunlinear-one-tmul-one.md) | 94 | `result-track:54d1140493e9d6af6f9495ef5bc65687faaba3ddbc379be3424c7ea8fcf94189` |
| 11 | `def` | [toFunAlgHom](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/tofunalghom.md) | 101 | `declaration-track:857a594c94a311069a589af2e09f56a8788e8ff18430a6a8a54c12c130af793f` |
| 12 | `theorem` | [toFunAlgHom_apply_tmul_eq_smul](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/tofunalghom-apply-tmul-eq-smul.md) | 105 | `result-track:56d6e0531506da39b3b21dc8d0d451e888e33de85bb561b75fbde7eb5407a9b4` |
| 13 | `theorem` | [toFunAlgHom_apply_tmul](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/tofunalghom-apply-tmul.md) | 108 | `result-track:6e8c11cc0939557edab429f0d51402caed96a11c38eb0ef614a7ae756e631565` |
| 14 | `def` | [invFun](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/invfun.md) | 117 | `declaration-track:eb447a62b1046410c484818071d197777e0c41033f67a95dda6454ba484d63ab` |
| 15 | `theorem` | [invFun_add](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/invfun-add.md) | 121 | `result-track:f34a4d6240c22990fa1687739357f08cbc9695e2a369e6391dd2e03d522ca997` |
| 16 | `theorem` | [invFun_monomial](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/invfun-monomial.md) | 124 | `result-track:329e2052afd7a20ec9fd777e383442f86e036744c1fb05ca6bd705804ad47253` |
| 17 | `theorem` | [left_inv](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/left-inv.md) | 128 | `result-track:b3c13a84f73ffe35c17220e6061140ca75560a2a03bb6b9b0fe3a81856f39f08` |
| 18 | `theorem` | [right_inv](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/right-inv.md) | 142 | `result-track:1cbd03399a3622ed79afd90d6bf6c8f19c92711c5951cbedb382141ebecc9e27` |
| 19 | `def` | [equiv](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/equiv.md) | 156 | `declaration-track:55c18981b74f4ceeafd226931ca6bebac10bcca10b8e68fe9c0061698d48c58e` |
| 20 | `def` | [polyEquivTensor](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/polyequivtensor.md) | 168 | `declaration-track:7dc8489e33c44f8bc7cf4516323c54c5d59bc392254d6ba1ece0c3d6978fa7e1` |
| 21 | `theorem` | [polyEquivTensor_apply](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/polyequivtensor-apply.md) | 172 | `result-track:b1aca634ef65c3120d9b10b1a36d7c4634ba91d9e9ad396fe5e98e3b9f342613` |
| 22 | `theorem` | [polyEquivTensor_symm_apply_tmul_eq_smul](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/polyequivtensor-symm-apply-tmul-eq-smul.md) | 178 | `result-track:ab1b542a0980c88ce87574f233b305937ee888d3ed9116fc7a9b55111597dee5` |
| 23 | `theorem` | [polyEquivTensor_symm_apply_tmul](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/polyequivtensor-symm-apply-tmul.md) | 181 | `result-track:4e79367a5702f9f341d4cdb4afd93745011de74e0a6d32f0a356f553659312c2` |
| 24 | `def` | [polyEquivTensor'](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/polyequivtensor-source-edition-2.md) | 190 | `declaration-track:fc8040ede95645164853564380149e6b39bd2ce13774e6abbf20a02f145effcc` |
| 25 | `theorem` | [coe_polyEquivTensor'](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/coe-polyequivtensor.md) | 195 | `result-track:c2205631e8a15b31d9b9085edee9041187bcebc771b4b9b7d97f2f9759500a6f` |
| 26 | `theorem` | [coe_polyEquivTensor'_symm](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/coe-polyequivtensor-symm.md) | 197 | `result-track:1d13a7ac7df2c072977c71f0b04a777ef35c57058db568c65f6457d6d000fd8a` |
| 27 | `def` | [Polynomial.algebra](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/polynomial-algebra.md) | 204 | `declaration-track:203cc8c5aee34ebd3eeb73566a6140235b66def2655ab73fcad698cfcbbb15c7` |
| 28 | `theorem` | [Polynomial.algebraMap_def](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/polynomial-algebramap-def.md) | 211 | `result-track:a0e23107afbb2483720e75b1f0b9db2e5a344bc1364e95241a3cd22eb6510c5c` |
| 29 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/instance-source-edition-5.md) | 213 | `declaration-track:dd0773b0a8946a667c73db6de9979b8b5c194f3bf60f7e37d3ad1386f8e3d8f9` |
| 30 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/instance-source-edition-4.md) | 217 | `declaration-track:af5644c98364cb46c4b23f183a7cbcf0233b996803e87ea99c2636eee8452ed2` |
| 31 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/instance.md) | 220 | `declaration-track:1b849695b126ff6d451987438d9dc7c490d479ad8dda0261fa10a6c360533c7a` |
| 32 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/instance-source-edition-3.md) | 226 | `declaration-track:a5a7af581a9d2051cb20c5bd7125a2efc2f497470922a41f582836bc58605189` |
| 33 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PolynomialAlgebraPublic.lean/declarations/instance-source-edition-2.md) | 230 | `declaration-track:720c8702dbcd84bc03e4abadd28d7998b26d3a91034e3759243ee515e068e2d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f3fd1208b4c084239ac10b75a4cbaa5e9ec154e2a476a55b5a2d17e84c5424d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant299800de42ea932530de3174d283ac26bb53f4b9668cd37a67bf840481aa8f02.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant299800de42ea932530de3174d283ac26bb53f4b9668cd37a67bf840481aa8f02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
