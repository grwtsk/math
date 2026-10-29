# Verification target: Short Complex Limits

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54dd0d8328d29a3d0347011c9e0088eddf4beb46",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc1f503f5d5d86e16f87d667e8b4bd3231637e344604fef122e878b74f4b65a54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54dd0d8328d29a3d0347011c9e0088eddf4beb46`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc1f503f5d5d86e16f87d667e8b4bd3231637e344604fef122e878b74f4b65a54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc1f503f5d5d86e16f87d667e8b4bd3231637e344604fef122e878b74f4b65a54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.EpiMono` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isLimitOfIsLimitπ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/islimitofislimit.md) | 30 | `declaration-track:a4ef6bb2eb096024adc4a8f80b9784333c351b3f3d8bb3321a401bf53c6149b6` |
| 2 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/limitcone.md) | 65 | `declaration-track:b2341b0c9cf346b58c0f954e80131ee920b32417ed966adfc6d20cb6e024654e` |
| 3 | `def` | [isLimitπ₁MapConeLimitCone](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/islimit-mapconelimitcone-source-edition-2.md) | 74 | `declaration-track:a62a7893e1719d67352b2ba03efa749e326cb9cb810d72062c58e5776441bcc8` |
| 4 | `def` | [isLimitπ₂MapConeLimitCone](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/islimit-mapconelimitcone-source-edition-3.md) | 78 | `declaration-track:eef8191747ae5b8a192149ee465cd999f9304a8cb14f998729ce3b35b67b8fe1` |
| 5 | `def` | [isLimitπ₃MapConeLimitCone](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/islimit-mapconelimitcone.md) | 82 | `declaration-track:19a32742ebe1720e4c55c49516528680cfca7b24d3c501a9ed644d258d779bae` |
| 6 | `def` | [isLimitLimitCone](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/islimitlimitcone.md) | 86 | `declaration-track:f28c19e7f7b24421f293d216b7aa3b0064517a3924f46ba7b0357b00eb637db3` |
| 7 | `instance` | [hasLimit_of_hasLimitπ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/haslimit-of-haslimit.md) | 90 | `declaration-track:217847797eba22c8927cf18fac1be604ba24efdd3082bb51ca83538a34e0f344` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/instance-source-edition-13.md) | 92 | `declaration-track:c6288dc48448ce8955e8df2c9f3be39f55101f31c64480ced212cc041d80de61` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/instance-source-edition-9.md) | 95 | `declaration-track:7252f236e6f813c76263a0fadccfb1598a34f0c307d2604a6deb1e1fb64a13c3` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/instance-source-edition-14.md) | 98 | `declaration-track:d37f36c916ee66e5d269db09ce2c0da57be1a4ad6a750789d81790006245d035` |
| 11 | `instance` | [hasLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/haslimitsofshape.md) | 107 | `declaration-track:2532facc44c755e6f11cf12dc38c041db78c469ebaae5038f9d2483baf24d873` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/instance-source-edition-18.md) | 110 | `declaration-track:fc2cd72b7310eca89a698d8acd412489ae6f47148abd2f9a8ed3e1a1929d754e` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/instance-source-edition-4.md) | 112 | `declaration-track:33faf2c6ea278bf46d42e943de89580bdf0861ea9b625f3ad604d6fb253f2e50` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/instance-source-edition-15.md) | 114 | `declaration-track:d7569cd196388d1cb91d0c69b6f814dcb00674a70cb2c29a527212df4a602aec` |
| 15 | `instance` | [hasFiniteLimits](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/hasfinitelimits.md) | 122 | `declaration-track:54bbd7271e5622d49e5ec9a2250fdd0982c467434e1858023c9ddad8f2079d54` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/instance-source-edition-3.md) | 125 | `declaration-track:2e2d60968af306563ac69d243109e20bd3e0d040ae0fc14070e9685e4d43bb24` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/instance-source-edition-8.md) | 128 | `declaration-track:452f6815668eea13b21ebccd60593e2b1cb3d31caeb0832af51deec19058528c` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/instance-source-edition-10.md) | 131 | `declaration-track:76072e0ccdff69fd4173b075439174de5dca10e2bf6774f8f81ae7c01377a61c` |
| 19 | `instance` | [preservesMonomorphisms_π₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/preservesmonomorphisms-source-edition-2.md) | 140 | `declaration-track:82d9500cff2b49990d75254f7914615ebdf7002c574f430006989ab321d46742` |
| 20 | `instance` | [preservesMonomorphisms_π₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/preservesmonomorphisms-source-edition-3.md) | 144 | `declaration-track:f09643284c872d1dee8426b2afffe6a28ed4b994a3ab2bb3b9752b6b9ff8e573` |
| 21 | `instance` | [preservesMonomorphisms_π₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/preservesmonomorphisms.md) | 148 | `declaration-track:2bb38ab8a71a2323c8183d89765ac330350610d1a90009d34183d89d2fe4c689` |
| 22 | `def` | [isColimitOfIsColimitπ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/iscolimitofiscolimit.md) | 156 | `declaration-track:78a7951b0c77c8fd563a5a494af7bd93bbaea6fe02b465ad5ac9d14acd0aad93` |
| 23 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/colimitcocone.md) | 195 | `declaration-track:db766bb76e251e57cac3f39b76fddcf58f66f3cba472f5c350100092051f36ab` |
| 24 | `def` | [isColimitπ₁MapCoconeColimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/iscolimit-mapcoconecolimitcocone-source-edition-2.md) | 207 | `declaration-track:b1400c3ecfd691dbf0ca43f2ccb0e70239bd319be2e0ee6f5b77e87ea3c2fc10` |
| 25 | `def` | [isColimitπ₂MapCoconeColimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/iscolimit-mapcoconecolimitcocone-source-edition-3.md) | 212 | `declaration-track:df8c08739ce7dfc73d1cbb24cf7a5b8033c064372042d43a9ebb0a4937d4caa1` |
| 26 | `def` | [isColimitπ₃MapCoconeColimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/iscolimit-mapcoconecolimitcocone.md) | 217 | `declaration-track:2675c86c629bbf19eac59cf7c720d93b3a5f62ef5c275adb78e21815516392ab` |
| 27 | `def` | [isColimitColimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/iscolimitcolimitcocone.md) | 222 | `declaration-track:b102ce182ecd7ad817cd552298f2ce04fe09e8f7194148fbc4ba27050c835b3f` |
| 28 | `instance` | [hasColimit_of_hasColimitπ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/hascolimit-of-hascolimit.md) | 226 | `declaration-track:5f2b6f13507f29cbcd8e1143a34eb95e3062fa664a6ce008ce4461023236b3bf` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/instance-source-edition-12.md) | 228 | `declaration-track:8c752f16cded30dffbcdf77c6a29e3f66c6674b457ddeea96c5036589ac98e8f` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/instance-source-edition-5.md) | 232 | `declaration-track:39179d24d11b204ac6d5146618b62bff7943a9d2e66c5d9d93c4c250f474c07e` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/instance-source-edition-7.md) | 236 | `declaration-track:42c5ad749ead8db1e8cac00ba53807121463669eb3893a3fc5a8972990575607` |
| 32 | `instance` | [hasColimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/hascolimitsofshape.md) | 246 | `declaration-track:d77b8cc366cd8a21a10982ccca0e39af7f871ee7ad4c93349b62edce48a4d213` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/instance-source-edition-2.md) | 249 | `declaration-track:1e67ad0a7034d7559166eb9119d94e73260d04958434722e5a5048b59353d8e1` |
| 34 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/instance-source-edition-17.md) | 251 | `declaration-track:e43fd4c8d793ce57738c15883974bf65152efc184fca44eeece2066169732f5e` |
| 35 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/instance-source-edition-11.md) | 253 | `declaration-track:83d6f0add3217def524c7933e1b4bb5d3ecf1761467fc2723907292002b79d42` |
| 36 | `instance` | [hasFiniteColimits](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/hasfinitecolimits.md) | 261 | `declaration-track:99015fd20b78011eca0c3c7912c4e93e8d78ffe7eb021277bf9947609beb29be` |
| 37 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/instance-source-edition-16.md) | 264 | `declaration-track:e2417a657d4e7c4beee34eaf7fa84011ccd73e3a3c7ab7018c7d8fbc71042f51` |
| 38 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/instance.md) | 267 | `declaration-track:18b0515f54ffc02e6e1519ce4b80faf9d6a4f716a9daa82377bee6a85d9025bf` |
| 39 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/instance-source-edition-6.md) | 270 | `declaration-track:40e951395f6683852b99abaa46ec6c0d0987daf35ceba5fba8d1419381cb5a77` |
| 40 | `instance` | [preservesEpimorphisms_π₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/preservesepimorphisms-source-edition-2.md) | 279 | `declaration-track:2fc69a67532ba0d07be3cc896bf2f54fbd30a9d58da2d2f1efb1b5f1d1d4887a` |
| 41 | `instance` | [preservesEpimorphisms_π₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/preservesepimorphisms.md) | 283 | `declaration-track:253763a52b38a0c2c15396fe4f898f18e2d144ca227e09288b318914ae01e62e` |
| 42 | `instance` | [preservesEpimorphisms_π₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexLimits.lean/declarations/preservesepimorphisms-source-edition-3.md) | 287 | `declaration-track:cd4fdc1008cf85206d2ddc63e1e9360379c82776b8ed2154c014fc217044a93d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=88f5ce2f676feb76a50ef4c929e6605f3ee399cd8616cd7feb03ef27e6c92de4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc1f503f5d5d86e16f87d667e8b4bd3231637e344604fef122e878b74f4b65a54.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc1f503f5d5d86e16f87d667e8b4bd3231637e344604fef122e878b74f4b65a54.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
