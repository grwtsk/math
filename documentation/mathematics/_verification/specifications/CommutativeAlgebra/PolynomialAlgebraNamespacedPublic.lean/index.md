# Verification target: Polynomial Algebra Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "939fa4841b4c09c39bf4d5ddba40f8e9ee5c8efd",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant6e94bf6dfcd534564427c36f297bb48e1b5c72aa021d8e65fde3d426fd81a7d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `939fa4841b4c09c39bf4d5ddba40f8e9ee5c8efd`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant6e94bf6dfcd534564427c36f297bb48e1b5c72aa021d8e65fde3d426fd81a7d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant6e94bf6dfcd534564427c36f297bb48e1b5c72aa021d8e65fde3d426fd81a7d7.lean.json)

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
| 1 | `def` | [toFunBilinear](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/tofunbilinear.md) | 48 | `declaration-track:b7816c8b48863e074c10da97ce5014919b8710ef9958c50a4fa34f35bcafe4b4` |
| 2 | `theorem` | [toFunBilinear_apply_apply](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/tofunbilinear-apply-apply.md) | 51 | `result-track:52224fef71baed83bb7db90a2aa8717f1586d62bb0f55ae7e11afd910d9d45db` |
| 3 | `theorem` | [toFunBilinear_apply_eq_smul](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/tofunbilinear-apply-eq-smul.md) | 54 | `result-track:c1c175cb0f4f5ec7ff7e4a7f69b098bfc8c024714832be4cc6c5afaf5fe4b514` |
| 4 | `theorem` | [toFunBilinear_apply_eq_sum](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/tofunbilinear-apply-eq-sum.md) | 57 | `result-track:e3bb055d0fb529140bd60fa7d2f47bb59020be73edc03ab9a6eb518418247ff1` |
| 5 | `def` | [toFunLinear](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/tofunlinear.md) | 66 | `declaration-track:78718d7065562e8b90ffe8e19ffc4066878253a57eda56c37bdeda72ede020e1` |
| 6 | `theorem` | [toFunLinear_tmul_apply](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/tofunlinear-tmul-apply.md) | 70 | `result-track:7659e06d239b4dccd6886fd764ec437fafa558a54e1116a7fa5140c33e96e0fd` |
| 7 | `theorem` | [toFunLinear_mul_tmul_mul_aux_1](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/tofunlinear-mul-tmul-mul-aux-1.md) | 76 | `result-track:c30f7f0c0800ea196bc1fe898476f59649bd25be52c5e215a9156ceb57d18785` |
| 8 | `theorem` | [toFunLinear_mul_tmul_mul_aux_2](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/tofunlinear-mul-tmul-mul-aux-2.md) | 80 | `result-track:4c4aed1b3fee674ea023fe36bb5f7ba18d55431d55b50713238e67f9f0aa8410` |
| 9 | `theorem` | [toFunLinear_mul_tmul_mul](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/tofunlinear-mul-tmul-mul.md) | 88 | `result-track:f3fed3d25d1cdecc479da56153c5bf710c97f47c0e6b12d5e3eccbed149b37a0` |
| 10 | `theorem` | [toFunLinear_one_tmul_one](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/tofunlinear-one-tmul-one.md) | 102 | `result-track:f7be30b09b8d1e2a999f3dbb0ea3986810c0425e95294094bfb618ad4f72990f` |
| 11 | `def` | [toFunAlgHom](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/tofunalghom.md) | 109 | `declaration-track:20e130a01810071992107598386df8cdf1ff061c0584d86cefd489c54a08e63b` |
| 12 | `theorem` | [toFunAlgHom_apply_tmul_eq_smul](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/tofunalghom-apply-tmul-eq-smul.md) | 113 | `result-track:40e0e8c233a8a770e1667384c7605f0f74c63a5ce46f4d9ceba19cbb6c7aaa1c` |
| 13 | `theorem` | [toFunAlgHom_apply_tmul](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/tofunalghom-apply-tmul.md) | 116 | `result-track:2c723093ff2c81f41268d47e7afeff0f86975a3be540ff857fee563825539b92` |
| 14 | `def` | [invFun](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/invfun.md) | 125 | `declaration-track:182bec35ebba532b8c82bb9486983e6cb98f42bdfb2922ca1bb869fd19bb7743` |
| 15 | `theorem` | [invFun_add](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/invfun-add.md) | 129 | `result-track:d1b5be3eb9db2e514b65d2c55d8c536ea4f188220f5874b0d4ef461122dbec19` |
| 16 | `theorem` | [invFun_monomial](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/invfun-monomial.md) | 132 | `result-track:b759df8ea9f8e25bad4bfc3d8ae49613fa91a14ea103f38745016c77e88dfafe` |
| 17 | `theorem` | [left_inv](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/left-inv.md) | 136 | `result-track:efb0a8e4be32e94c87a0f55f39a599e634a86c57f981f5e6872aebea58215a37` |
| 18 | `theorem` | [right_inv](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/right-inv.md) | 150 | `result-track:5b7469e3d812290ad4f36dfc16fe07ea583d2e4b7c1b1f58d28f1c1a2aae4837` |
| 19 | `def` | [equiv](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/equiv.md) | 164 | `declaration-track:a8bcc4b7ccc157f4b7f08a0084a4739e1c758402a2d684fc8af20696eacada33` |
| 20 | `def` | [polyEquivTensor](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/polyequivtensor.md) | 176 | `declaration-track:5a6c9d5daf605fdfe32a15888e4cead86d4d84102d0f13ff0d61eb2e5211dd32` |
| 21 | `theorem` | [polyEquivTensor_apply](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/polyequivtensor-apply.md) | 180 | `result-track:d1d200a30b7b40308465ff681d087fe11d5a6079d4e08424376e7786ff32fcf1` |
| 22 | `theorem` | [polyEquivTensor_symm_apply_tmul_eq_smul](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/polyequivtensor-symm-apply-tmul-eq-smul.md) | 186 | `result-track:88e56801cd33b401e119d6bacf87cbc37f2617f7313528ec93cf1351630e9d33` |
| 23 | `theorem` | [polyEquivTensor_symm_apply_tmul](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/polyequivtensor-symm-apply-tmul.md) | 189 | `result-track:390630dc05a521870cd8b781800890802840297b6c41551fe57dcdd06f6da90b` |
| 24 | `def` | [polyEquivTensor'](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/polyequivtensor-source-edition-2.md) | 198 | `declaration-track:d28370f0a04d82f9f0264ea2c87483feb0bb9f1aaf4d6a6e66d08f6e882d74a4` |
| 25 | `theorem` | [coe_polyEquivTensor'](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/coe-polyequivtensor.md) | 203 | `result-track:ea6cc3ff37b65b1385c387038ba85e77eea6714cdb48cf997a120170dbf901e4` |
| 26 | `theorem` | [coe_polyEquivTensor'_symm](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/coe-polyequivtensor-symm.md) | 205 | `result-track:d50f505257a8253a10ceb950c85c2ee36cf4b44648b546e5efaf09d352f38225` |
| 27 | `def` | [Polynomial.algebra](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/polynomial-algebra.md) | 212 | `declaration-track:8320b00ee8a4bd48ab76a678018ac7161bec62944d98ba93baec6b2ce64e6cdd` |
| 28 | `theorem` | [Polynomial.algebraMap_def](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/polynomial-algebramap-def.md) | 219 | `result-track:ff5d8ca6413b0d2782d76b50cbc5c64518c8a54c67c7d2d80e212d458f7049bc` |
| 29 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 221 | `declaration-track:3717bd5d93834f8738627d8dce7590d83171b02965598b7b058378ae5ce7c577` |
| 30 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 225 | `declaration-track:cc945b057f143ecd8d19ea17a7f62204bcf38c6aeb35cfddf0fde75b3c161de2` |
| 31 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/instance.md) | 228 | `declaration-track:1688210d49353715473d3a1134ec7ad1c7cdadb66ed26136696e6fa44045cd8a` |
| 32 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 234 | `declaration-track:d59f334db7096b3dac61c38e23b72445f53019af0466575fc47f9daeaece73d5` |
| 33 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PolynomialAlgebraNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 238 | `declaration-track:3f9afa9be2ce4bb8aca6e0cf22fb4341ea6eace4b28da87dfa89d267483c4319` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=653d2a60c642838c346ebbcddf54bea8ad8c8319e77f17b536b8f1af4b9d0c9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant6e94bf6dfcd534564427c36f297bb48e1b5c72aa021d8e65fde3d426fd81a7d7.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant6e94bf6dfcd534564427c36f297bb48e1b5c72aa021d8e65fde3d426fd81a7d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
