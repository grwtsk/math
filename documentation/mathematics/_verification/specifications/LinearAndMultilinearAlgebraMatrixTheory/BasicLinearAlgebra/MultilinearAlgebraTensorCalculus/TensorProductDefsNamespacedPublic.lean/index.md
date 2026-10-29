# Verification target: Tensor Product Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a277b039a0a5a31c867e2ba83b74a33a8594c648",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant0c7ed273bc2f163ee2570cc52b8684900984b5e19f667d5d43c308f17034b73d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a277b039a0a5a31c867e2ba83b74a33a8594c648`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant0c7ed273bc2f163ee2570cc52b8684900984b5e19f667d5d43c308f17034b73d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant0c7ed273bc2f163ee2570cc52b8684900984b5e19f667d5d43c308f17034b73d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Eqv](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/eqv.md) | 64 | `declaration-track:c73eae17fa8709f38c00f4d38b117e89dab0aed08d5b1b4a59a89be117ec92d5` |
| 2 | `def` | [TensorProduct](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/tensorproduct.md) | 79 | `declaration-track:e887fbde12750a3c5773d7ce129276b6fa3ca25770080b0cd65d62474a2c93fe` |
| 3 | `instance` | [addCommSemigroup](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/addcommsemigroup.md) | 92 | `declaration-track:3e4cd67f22f939a17f063bf774c8f0e9e6c03ebcaf65c1895903ea97e2dae989` |
| 4 | `instance` | [(anonymous)](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 97 | `declaration-track:dc1766100ca8ec7d20e739d9b233b7acdb96b4b4a1b76914fd27358862477fcf` |
| 5 | `def` | [tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/tmul.md) | 105 | `declaration-track:d7188891797e14c54ec6be57662f760b28af485e8c69cabdbeb746d86e5619cc` |
| 6 | `instance` | [(anonymous)](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/instance.md) | 115 | `declaration-track:43f762d7d436ff0289c74b0bea6e5e5cd7d36b2e4e934b97a4bb1b036bdec37e` |
| 7 | `theorem` | [zero_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/zero-tmul.md) | 128 | `result-track:7b4bc50c7b77f0bdc2ac68d97b583dd30f7a67c9c955b492cbec2a075054d687` |
| 8 | `theorem` | [add_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/add-tmul.md) | 131 | `result-track:7c588706a7c1ed72d925c201408589d272b59cfa8b451774a208f7e6be18412b` |
| 9 | `theorem` | [tmul_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/tmul-zero.md) | 136 | `result-track:d9ed376077120d31d3a12d57791ba39d0b06efa8c702ce95ddf05d078a04d858` |
| 10 | `theorem` | [tmul_add](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/tmul-add.md) | 139 | `result-track:58b79552a754ca3ef4d44d387365debda0a932c2707a07d4741a0487e1a24407` |
| 11 | `theorem` | [inductionOn](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/inductionon.md) | 143 | `result-track:4ba9acec5d2c3cd5042b2003ffcb15a6db18c5037b54dbda97f233b4a839f616` |
| 12 | `theorem` | [induction_on](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/induction-on.md) | 152 | `result-track:f2114bd47c18d197c08e87be16fa5ab2c8563651a3c9eb14358331b64d21b491` |
| 13 | `instance` | [uniqueLeft](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/uniqueleft.md) | 158 | `declaration-track:c50711d641345fedd3dc22e199915739b1d45f02eb23d5995f0685f475f4d20e` |
| 14 | `instance` | [uniqueRight](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/uniqueright.md) | 163 | `declaration-track:243f0863ae007a985cea0a89abc56906e4b0a3ad4511a1a9f7ad92f9a9e887a7` |
| 15 | `class` | [CompatibleSMul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/compatiblesmul.md) | 182 | `declaration-track:1007f8ffa21a4bf82186c94893b9e046e9c0879659990f278fc09e7f136edb21` |
| 16 | `instance` | [(anonymous)](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 189 | `declaration-track:eec14ba2872c0af7487c85376423074cbbd49a081934f4dd2a27a6b1f547fb22` |
| 17 | `theorem` | [smul_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/smul-tmul-source-edition-2.md) | 198 | `result-track:a25b12031290354c1607a484303637f52254a35a621d36abb879ae2417d1afd5` |
| 18 | `def` | [addMonoidWithWrongNSMul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/addmonoidwithwrongnsmul.md) | 204 | `declaration-track:2cd15882720d2721d0e054b56c60d4adc4abb7cecc9f259381e06f164ec9b5e9` |
| 19 | `def` | [SMul.aux](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/smul-aux.md) | 209 | `declaration-track:f42027ce643586e247501d436aae30707e10a4bd7f47344791c1c50637ac2353` |
| 20 | `theorem` | [SMul.aux_of](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/smul-aux-of.md) | 212 | `result-track:6f593dc50c37e342e0559dedbe1e70599f205816991f0ea0163142c70c47c910` |
| 21 | `instance` | [leftHasSMul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/lefthassmul.md) | 230 | `declaration-track:c9960ba58cd8b65023c929de94a10e1f5d4036bbcc4f6eacbd7533a45e025add` |
| 22 | `instance` | [(anonymous)](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 248 | `declaration-track:4c582f9a5870bf6b9f98d50f68a5df8c2e2ce8f050212d60bd3daf6d7077b4a9` |
| 23 | `theorem` | [smul_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/smul-zero.md) | 251 | `result-track:e90decd5f876334fc26f75fc6cdd3f56740e92e65c457a1b273335ba0fb0caff` |
| 24 | `theorem` | [smul_add](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/smul-add.md) | 254 | `result-track:44a3931df19add00f67343c32845f3895483ff0915174479bfa3326ba63109f9` |
| 25 | `theorem` | [zero_smul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/zero-smul.md) | 257 | `result-track:be963dbd667d9ca076774f597afd170f3c33224674ca53c4e115efb0f14d3b14` |
| 26 | `theorem` | [one_smul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/one-smul.md) | 263 | `result-track:434c7d33e7bc9c0cc25af6096237ff90232ee951977ab581bb08e0cc4a6324eb` |
| 27 | `theorem` | [add_smul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/add-smul.md) | 269 | `result-track:5e58e8d12719ec9ceba1aa181e676f017a07020cf271200da76b70d99a21028f` |
| 28 | `instance` | [addMonoid](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/addmonoid.md) | 276 | `declaration-track:2a362cb5f377f744419e1b804317d5fd969b4f030f50c416ecd77bc62e730b5e` |
| 29 | `instance` | [addCommMonoid](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/addcommmonoid.md) | 280 | `declaration-track:cc777ca85ec3ba524eec88301885032d8e31ed1c2087a21188b55874ee1aeaaa` |
| 30 | `theorem` | [Tensor Product Defs Namespaced Public](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/tmul-left.md) | 284 | `result-track:ca3717e04dab020cb261d1f487293a70addf268885965444c457ef7888220302` |
| 31 | `theorem` | [Tensor Product Defs Namespaced Public](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/tmul-right.md) | 289 | `result-track:db44686c0e9cc55fe142d6f1a8fdbeac478be77c8aaa2c0d51999b03ca9e2aec` |
| 32 | `instance` | [leftDistribMulAction](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/leftdistribmulaction.md) | 296 | `declaration-track:797ed4af491ea259e3ddc20a2a690e38837c22e08af64c587ad268c06fa3505a` |
| 33 | `instance` | [(anonymous)](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 307 | `declaration-track:71f6441b981dd1547a0ddcc26f566f203365b1407a4c65aa6d2c71b5e2974045` |
| 34 | `theorem` | [smul_tmul'](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/smul-tmul.md) | 310 | `result-track:744d90bb67074369efa413c14ebf43b3ac9003faa1cf53afa9f25e1b6cce3713` |
| 35 | `theorem` | [tmul_smul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/tmul-smul.md) | 314 | `result-track:45ef77bf77b2037860ec24cd9efa9779d78c34c8b591b01a76c6a1e1aa9e8662` |
| 36 | `theorem` | [smul_tmul_smul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/smul-tmul-smul.md) | 318 | `result-track:0d4e60ab1b9ba270e39e3b7df4634b61a8835d8ceba95fe6becdd9316fa3999f` |
| 37 | `theorem` | [tmul_eq_smul_one_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/tmul-eq-smul-one-tmul.md) | 321 | `result-track:8f96636ef2cceb5960e7e8369c3ff5beba12746ebcdc374614b4398a7270fc79` |
| 38 | `instance` | [leftModule](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/leftmodule.md) | 325 | `declaration-track:c118ed1719250d41e7c6062cd0217db69c1003c360c8ef71202bf67f57169647` |
| 39 | `instance` | [(anonymous)](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 329 | `declaration-track:bf9c144aa75b35932ce9e253b016349912b6fd6e457aa83a90f7436fc7d6a885` |
| 40 | `instance` | [(anonymous)](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 332 | `declaration-track:baaadbe8a7c498a09b2a318d1c5cbac836ff3476fe216d6929f7f8a151e397ea` |
| 41 | `instance` | [smulCommClass_left](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/smulcommclass-left.md) | 345 | `declaration-track:6431783f764f0e88a56937153faa2bed4268f7416e0aca2566bf641fa900795b` |
| 42 | `instance` | [isScalarTower_left](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/isscalartower-left.md) | 354 | `declaration-track:d629ededed828274febcc916fe6772d67c7d2e7bd3e0fd1e67e7cd007cc947a4` |
| 43 | `instance` | [isScalarTower_right](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/isscalartower-right.md) | 364 | `declaration-track:4f7d547b9170f85426d82072e568a3ce89fd36fa807319317e87d15e73e6cdbe` |
| 44 | `instance` | [isScalarTower](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/isscalartower.md) | 374 | `declaration-track:96924869e38c3a489ac47f39f8bec970aa308fb9422fde08eca5eac0b2bb7515` |
| 45 | `def` | [mk](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/mk.md) | 380 | `declaration-track:a1bc1aee8f658288018c221052438d6a59a2f3b55ac33023a4f9d9266f482999` |
| 46 | `theorem` | [mk_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/mk-apply.md) | 385 | `result-track:5849dfbc12fd7fa4d3728f5bd62736afc971d7fac542184cc864f5c91c8bf87d` |
| 47 | `theorem` | [ite_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/ite-tmul.md) | 388 | `result-track:43b23179654ac36961ef87f04934a534eceacfd1b07047b9e721ade749ff9a8c` |
| 48 | `theorem` | [tmul_ite](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/tmul-ite.md) | 391 | `result-track:8d78b98d00b20544b34e736b0309a9db24eceedfa1147c4cd890ac6c61c49273` |
| 49 | `lemma` | [tmul_single](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/tmul-single.md) | 394 | `result-track:50f9b98ab6b4426e2d70b9acc17f09c199c1b75c5cc1b2740e7fafc42f9b7965` |
| 50 | `lemma` | [single_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/single-tmul.md) | 399 | `result-track:f6f3836541d3662af9d3c05474eb0b83e19fb1562dca606e517dfd05a97eb33e` |
| 51 | `theorem` | [sum_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/sum-tmul.md) | 406 | `result-track:c846e8ce120f4db31d665656aca821f87a410d80476a4378d01af2296dcbe93e` |
| 52 | `theorem` | [tmul_sum](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/tmul-sum.md) | 413 | `result-track:e4c8a272f87ac84c525c470df734f6d7e9467104fc2d126c8f0c01eed11491b8` |
| 53 | `theorem` | [span_tmul_eq_top](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/span-tmul-eq-top.md) | 425 | `result-track:5259c5c0a7de4c52d5d7f087a815ba1baabd9f2b9054b5d224474b2b1023ecda` |
| 54 | `theorem` | [map₂_mk_top_top_eq_top](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/map-mk-top-top-eq-top.md) | 435 | `result-track:644fee24e1f4367020960969bd4b47ed1b733269e0c040d5f4f989cffd1ce5e8` |
| 55 | `theorem` | [exists_eq_tmul_of_forall](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsNamespacedPublic.lean/declarations/exists-eq-tmul-of-forall.md) | 439 | `result-track:aef9d9ad3eb8ca4c97095289f1637fdc8fe28112673bab216d32f3dba3b4f7a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4df33e1fe76635c77a3e0f8cd7eb60148113958f8d724c2e4a2b3b4d9e61e6e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variant0c7ed273bc2f163ee2570cc52b8684900984b5e19f667d5d43c308f17034b73d.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Defs/Variant0c7ed273bc2f163ee2570cc52b8684900984b5e19f667d5d43c308f17034b73d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
