# Verification target: Ring Colimits

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15b25c435cd7cba509e47e130427a67e788022db",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantd9a81df711497c0a29dd474dfe845a527737d2fd77163311299a2925e0629456.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15b25c435cd7cba509e47e130427a67e788022db`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantd9a81df711497c0a29dd474dfe845a527737d2fd77163311299a2925e0629456.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantd9a81df711497c0a29dd474dfe845a527737d2fd77163311299a2925e0629456.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Prequotient](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/prequotient.md) | 39 | `declaration-track:1d8bb5a511c5009bad611bad1677410d976e0f1b93d4f9ee3f9a005001e5b1a9` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/instance.md) | 50 | `declaration-track:0ab66c68041f550c7278c3c24f4df0d3f6985084c6b3d653abab2bb7d7ffb902` |
| 3 | `inductive` | [Relation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/relation.md) | 59 | `declaration-track:0e6b5a7b9c05aba19145c578e6b41fb150ce6697bc81251365a3cf188960274a` |
| 4 | `def` | [colimitSetoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/colimitsetoid-source-edition-2.md) | 98 | `declaration-track:cd4113b2b7ffdaad601449cb80e2609f04aec3728d77ab7148090d9991527f6c` |
| 5 | `def` | [ColimitType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/colimittype-source-edition-2.md) | 106 | `declaration-track:f627abb211810899413cd54b81aaa28540df49838657277f09959628f1329eb1` |
| 6 | `instance` | [ColimitType.instZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/colimittype-instzero.md) | 109 | `declaration-track:4d55bf74fc5cffb27d61f581b1fa8060b7392703a20200aa848a73b5331f7914` |
| 7 | `instance` | [ColimitType.instAdd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/colimittype-instadd-source-edition-2.md) | 111 | `declaration-track:d71eca081e3ff95496ccad71f0a29497ba4905928c1a1cebd9bfcaa8ecb92b0d` |
| 8 | `instance` | [ColimitType.instNeg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/colimittype-instneg.md) | 115 | `declaration-track:09548ca5ff4559bde06fb95ced95f24d21a836d234febd4ed124c46c1c0ee8ba` |
| 9 | `instance` | [ColimitType.AddGroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/colimittype-addgroup.md) | 118 | `declaration-track:9608011ebfb435b78d8044aee3f099681c32fd68f0ad89d01f6b813bd39d10a1` |
| 10 | `instance` | [InhabitedColimitType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/inhabitedcolimittype-source-edition-2.md) | 128 | `declaration-track:d3e435703487e0d301597fc6562065b51c33cc61fdfcc80c6e5b8b8fa71d198b` |
| 11 | `instance` | [ColimitType.AddGroupWithOne](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/colimittype-addgroupwithone-source-edition-2.md) | 131 | `declaration-track:ef1a2e63b1e3bd40c975d711f97405e9c841ad94629a7ef12d1086109d63d92f` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/instance-source-edition-4.md) | 134 | `declaration-track:9b596c97d68ef18578922927e0fcd9fd9251d856286dccdf8a562ad640c49759` |
| 13 | `theorem` | [quot_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/quot-zero.md) | 153 | `result-track:29c188de3e07305632266fd1953fcf1ea2d1cafad75b9cc4eee4334b15eb0fca` |
| 14 | `theorem` | [quot_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/quot-one.md) | 157 | `result-track:9ee49b5e49acbbda8c71d5a8a72625a46c97ea230101dea59cebc1f2ada81040` |
| 15 | `theorem` | [quot_neg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/quot-neg.md) | 161 | `result-track:a91eb50a2b8712ca366a95c4655d52bab8265f69a3084173c6e2d2c5a631f2f3` |
| 16 | `theorem` | [quot_add](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/quot-add.md) | 166 | `result-track:4a3498a2cb5c091a15e51ad827753ff1b08d1a55fe0b9fa1cb11534492710e3d` |
| 17 | `theorem` | [quot_mul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/quot-mul-source-edition-2.md) | 172 | `result-track:935b673adc8f36133d93d190a4e113720146c5a2fb4a9e1a0ba3e67ca8a2f616` |
| 18 | `def` | [colimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/colimit-source-edition-2.md) | 178 | `declaration-track:f85e5c2cde6f3185327371859f33d0f1f0aa85d826b142989b5fad24fb813f79` |
| 19 | `def` | [coconeFun](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/coconefun.md) | 182 | `declaration-track:21fb2243dc7e9bd5615766875cf7c70122afdcba5b2a855223c185d883a5ced6` |
| 20 | `def` | [coconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/coconemorphism-source-edition-2.md) | 187 | `declaration-track:8a380f6564e613f8ba44085b32d3da9aa77780d42523156b0a902ee4767ff947` |
| 21 | `theorem` | [cocone_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/cocone-naturality-source-edition-2.md) | 195 | `result-track:f78ee2b2bdbee11b16aaa19ebdbd3703919c7c002c79fa98289cde001fed65a6` |
| 22 | `theorem` | [cocone_naturality_components](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/cocone-naturality-components-source-edition-2.md) | 202 | `result-track:ed88b9a4f9e3f278ee85575636b90da1c620f9ee5b19de2bd03ffc172132ca0c` |
| 23 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/colimitcocone-source-edition-2.md) | 207 | `declaration-track:e53e0030c9c507b13f6f629b5a03f7af0d28ed86ca4cd9d9118d943e53f0a4e7` |
| 24 | `def` | [descFunLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/descfunlift.md) | 214 | `declaration-track:9bab6ae5d9f8747533f76c71f86c54e6504bbac79b5cd17c66e4d2a0aa25ebca` |
| 25 | `def` | [descFun](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/descfun-source-edition-2.md) | 223 | `declaration-track:d7ffe4c29b9d10708cd29c9ea783471cab2bd7f5068b18ab1b7daa420b26ba90` |
| 26 | `def` | [descMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/descmorphism.md) | 257 | `declaration-track:a24471d7ba48e9ef51dcdbbdf046fd037ee9192707682932f5fe7288e437cc7e` |
| 27 | `def` | [colimitIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/colimitiscolimit.md) | 269 | `declaration-track:a986421324460cbf73bd89e2110ee7c4fae1a21432504efdc2a020c5ef831d5f` |
| 28 | `instance` | [hasColimits_ringCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/hascolimits-ringcat.md) | 283 | `declaration-track:1ea69473b18b662fac236ab1a82411a3ed70666551e14062bb8544cb72fb7218` |
| 29 | `inductive` | [Prequotient](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/prequotient-source-edition-2.md) | 335 | `declaration-track:72b0b580f344e9779555668e753136bcb221fd641edaf72b359a7c832226bfd2` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/instance-source-edition-3.md) | 343 | `declaration-track:7c3b6aad593d0919b8e333f25c7bd8c04dc9e4dde034e89705564f925dc0a32a` |
| 31 | `inductive` | [Relation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/relation-source-edition-2.md) | 352 | `declaration-track:c26e2766f181defff1ecb6072da7eedaf59981e76032b77f41be533425e93bed` |
| 32 | `def` | [colimitSetoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/colimitsetoid.md) | 392 | `declaration-track:950a86496c8c5ef3629d848ae8aba0f9b5b552a3bd905d199b92f4e6f992fdbd` |
| 33 | `def` | [ColimitType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/colimittype.md) | 400 | `declaration-track:9b263ed2903001cc1549477be7cd4b3050ab29ebab2424d28b56e15cfd20b224` |
| 34 | `instance` | [ColimitType.instZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/colimittype-instzero-source-edition-2.md) | 403 | `declaration-track:dc4f0ca11129efb35539748eae5ec89d9a7799b96d05c0459f9ec72b4ad622f2` |
| 35 | `instance` | [ColimitType.instAdd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/colimittype-instadd.md) | 405 | `declaration-track:c36ad9c28f4faaa52596bb164c4fbc6daf33e6f0c1f52e484d05fefb01167720` |
| 36 | `instance` | [ColimitType.instNeg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/colimittype-instneg-source-edition-2.md) | 409 | `declaration-track:b2644f6d26c69b4e6a9355fe0c13b73cf7a5f709ea2c9d32ea41cd5fe0193467` |
| 37 | `instance` | [ColimitType.AddGroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/colimittype-addgroup-source-edition-2.md) | 412 | `declaration-track:be0de4520b6801857bb137eecdf1a972338532d34a04acc1863a869d9fb478d2` |
| 38 | `instance` | [InhabitedColimitType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/inhabitedcolimittype.md) | 422 | `declaration-track:7998ccf6f57099b5079d738d99b3993e78c61c3b662f35ea9ce554e78ec1ca47` |
| 39 | `instance` | [ColimitType.AddGroupWithOne](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/colimittype-addgroupwithone.md) | 425 | `declaration-track:e847cfb22c67f8bf74ac115cb4a7bb82ded826ccdebbfec33296c86157d64dfd` |
| 40 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/instance-source-edition-2.md) | 428 | `declaration-track:5f1a01620e25a111f30caf517dde953589744d27f0f286d443c6a437070451e6` |
| 41 | `theorem` | [quot_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/quot-zero-source-edition-2.md) | 448 | `result-track:6f668ac87904d1f7c8e699b734c09f9742b8853f149ad95e3d18c42bc2c78aa0` |
| 42 | `theorem` | [quot_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/quot-one-source-edition-2.md) | 452 | `result-track:b4f037a82ded25fd107681e823160eb613dc0472dc1e22828de4f7d7db42e5a2` |
| 43 | `theorem` | [quot_neg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/quot-neg-source-edition-2.md) | 456 | `result-track:f6b9cf322df3fbd95a365a09154814656dfbea817203c0fd57c7a88e33730db5` |
| 44 | `theorem` | [quot_add](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/quot-add-source-edition-2.md) | 463 | `result-track:cb33f715e9b21c15e633192b9b608497c655926943a339e3894084f39ca2ba9f` |
| 45 | `theorem` | [quot_mul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/quot-mul.md) | 471 | `result-track:197c85c0a539138142c70467ee0174ac84f3a4b8b1a15606376e889e72808aac` |
| 46 | `def` | [colimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/colimit.md) | 477 | `declaration-track:afe62ef900eadb6e90777510381b90ef04206da64e8a0088808bd0413ba0b361` |
| 47 | `def` | [coconeFun](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/coconefun-source-edition-2.md) | 481 | `declaration-track:d5434a93896ea51ff8e90f3603f1e482b21f3c5bde341762cd6d74cf19ac15c7` |
| 48 | `def` | [coconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/coconemorphism.md) | 486 | `declaration-track:5baa540993c810873cef86e788d73be44af86188d0c3bd430eb62804d7fae577` |
| 49 | `theorem` | [cocone_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/cocone-naturality.md) | 494 | `result-track:ce6b52eb15024c9f98b91f01c168a1113f11a4ab257c991b2f0b6966b4634f90` |
| 50 | `theorem` | [cocone_naturality_components](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/cocone-naturality-components.md) | 501 | `result-track:e4b23bdcd4ab50a3c67309e834db1affc66e142356b55e558d00adee79bb5c5f` |
| 51 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/colimitcocone.md) | 506 | `declaration-track:8090bff564acf3c5da1717c06dae9de27182a3888107fcb43580dbe53f3a97a5` |
| 52 | `def` | [descFunLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/descfunlift-source-edition-2.md) | 513 | `declaration-track:d4e0dfb6ba9037a613e6b5af3b363f45cccb28ff1cd4255d2bdb95a968b7a7e7` |
| 53 | `def` | [descFun](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/descfun.md) | 522 | `declaration-track:40191accdb924b16899a444969e11a36774465fb765b98d8a93f64d4c7237db8` |
| 54 | `def` | [descMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/descmorphism-source-edition-2.md) | 557 | `declaration-track:ff89e83a0c8d46f345d8713023ae55d2ec8721b872c6048a9f4b182768b03ae1` |
| 55 | `def` | [colimitIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/colimitiscolimit-source-edition-2.md) | 569 | `declaration-track:e1eabd0e509a2ac1301e945aa339e166f4aa65d23a6261d87dbb3b7eb8c26290` |
| 56 | `instance` | [hasColimits_commRingCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimits.lean/declarations/hascolimits-commringcat.md) | 583 | `declaration-track:7c2c5b1b7fc0a7cf21904eab900ff9f94f6afd34cb03215eda61e51263810ea5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b0aae67e7b19b48b713cb0f7820f84055998a7383bd055eb30131a51def05f75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantd9a81df711497c0a29dd474dfe845a527737d2fd77163311299a2925e0629456.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantd9a81df711497c0a29dd474dfe845a527737d2fd77163311299a2925e0629456.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
