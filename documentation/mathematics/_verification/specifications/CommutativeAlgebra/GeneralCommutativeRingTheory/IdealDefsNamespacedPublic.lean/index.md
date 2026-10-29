# Verification target: Ideal Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95d70bc7ca0da40e1827c01d39e3be5e5b7852a5",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsNamespacedPublic.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95d70bc7ca0da40e1827c01d39e3be5e5b7852a5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean.json)

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
| 1 | `abbrev` | [Ideal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsNamespacedPublic.lean/declarations/ideal.md) | 48 | `declaration-track:b7fc0ed041e0a95a00588d5446076cebc001cfd91df53633dff408fb1e9e5139` |
| 2 | `class` | [IsTwoSided](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsNamespacedPublic.lean/declarations/istwosided.md) | 58 | `declaration-track:308c6a0729d33a59128dd398ad75f2d2abc96d2eb693b11fc6ac2314bc197175` |
| 3 | `theorem` | [zero_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsNamespacedPublic.lean/declarations/zero-mem.md) | 61 | `result-track:d910cfbdaceab82b2b1ef0b7b5879156eb9bd0073338ad1122635e8d42ac621b` |
| 4 | `theorem` | [add_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsNamespacedPublic.lean/declarations/add-mem.md) | 64 | `result-track:19696f642979c761ccbf4ca8de6405a6ee4af4e887e69d0d848d31bfda04658e` |
| 5 | `theorem` | [mul_mem_left](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsNamespacedPublic.lean/declarations/mul-mem-left.md) | 69 | `result-track:1819cd826eddcfbeaa11f9b6ff53a90629b34cf656ab6a2edc7279878629cc13` |
| 6 | `theorem` | [mul_mem_right](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsNamespacedPublic.lean/declarations/mul-mem-right.md) | 72 | `result-track:fabbcfa555e32eb75a3c58126dc0f28c8b67da307b5be5fa2bd602c811b6a5e5` |
| 7 | `theorem` | [ext](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsNamespacedPublic.lean/declarations/ext.md) | 79 | `result-track:409c04ca720e630b3a7f7b124638797ffbcf90cd30b5e2c8e42883dd289ad2b5` |
| 8 | `theorem` | [unit_mul_mem_iff_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsNamespacedPublic.lean/declarations/unit-mul-mem-iff-mem.md) | 83 | `result-track:416c5da43f690bd9294cefac604130608fd124d53e29ce1712f82e76e2045985` |
| 9 | `theorem` | [pow_mem_of_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsNamespacedPublic.lean/declarations/pow-mem-of-mem.md) | 89 | `result-track:1cd5f6f2510022239608eaba86b898eeb55cb68200a6358410214ff8691fe3b0` |
| 10 | `theorem` | [pow_mem_of_pow_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsNamespacedPublic.lean/declarations/pow-mem-of-pow-mem.md) | 93 | `result-track:227a47baed37c6e046275931ea8ec7b146495c8a1b329f629f394b6b1ff5ee0c` |
| 11 | `def` | [Module.eqIdeal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsNamespacedPublic.lean/declarations/module-eqideal.md) | 102 | `declaration-track:19e6521b58db2b29ccbdff8483e3ebd8d0032f0f6af59bba8d6c83ba214a2647` |
| 12 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 120 | `declaration-track:e3adc4c51037102390d2b17e05c05999c04fdb93f7edc805deac7e5ae0bbb5fe` |
| 13 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsNamespacedPublic.lean/declarations/instance.md) | 121 | `declaration-track:b62c960c8c28c8a4d3b85b0f9f7819b97adc1e663fde758ef7c9d97c05a4b120` |
| 14 | `theorem` | [mul_unit_mem_iff_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsNamespacedPublic.lean/declarations/mul-unit-mem-iff-mem.md) | 124 | `result-track:0db842dba8b8687723a910347234751c643a9a98aa61cdd0d5e470b6053a7ede` |
| 15 | `lemma` | [mem_of_dvd](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsNamespacedPublic.lean/declarations/mem-of-dvd.md) | 127 | `result-track:87505601bf9dc693487397e43a052b4b1c2ca664188b8c64892561bd4f8267f5` |
| 16 | `theorem` | [neg_mem_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsNamespacedPublic.lean/declarations/neg-mem-iff.md) | 140 | `result-track:185a2761531ff213e4a43c74c2f8d462571ac4e31e8ad4d74093c4e542185f28` |
| 17 | `theorem` | [add_mem_iff_left](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsNamespacedPublic.lean/declarations/add-mem-iff-left.md) | 143 | `result-track:308ec70d8c565bc012720e7e73ecf657fe7bdcaa2bbbe8ac64214a01a7fc3bd0` |
| 18 | `theorem` | [add_mem_iff_right](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsNamespacedPublic.lean/declarations/add-mem-iff-right.md) | 146 | `result-track:712b5cec84a32255289758d5f62a2bfc1b563f17ce7081d601b256d409198036` |
| 19 | `theorem` | [sub_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsNamespacedPublic.lean/declarations/sub-mem.md) | 149 | `result-track:6695b8c4a545e0e7a051a7f35e2790f2b51c1250967194e7c4f082fcea85b755` |
| 20 | `theorem` | [mul_sub_mul_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsNamespacedPublic.lean/declarations/mul-sub-mul-mem.md) | 152 | `result-track:58407acb854b15b78e4c2d13daa8aeb8d53120c3e28c312c0db0e157fda08227` |
| 21 | `abbrev` | [inertia](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsNamespacedPublic.lean/declarations/inertia.md) | 162 | `declaration-track:78376daa5ddbe3007b4aa1b83e3bcb3c97c9eb9e715f9d3845e6849001973aa1` |
| 22 | `theorem` | [mem_inertia](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsNamespacedPublic.lean/declarations/mem-inertia.md) | 165 | `result-track:08f570861ca6021ee31d5d4cf89be3b22a6ba5b37e7505a37ab2ede417faf324` |
| 23 | `theorem` | [coe_mem_inertia](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsNamespacedPublic.lean/declarations/coe-mem-inertia.md) | 169 | `result-track:1dc32c28ec88c8def3a67824cd55f85377feb16ab8f88bbf1db1468fc5c03804` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8234c3e37cdf274c176b3e8bfa483605a736b9cdeaf04f382040c85c3906a267 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
