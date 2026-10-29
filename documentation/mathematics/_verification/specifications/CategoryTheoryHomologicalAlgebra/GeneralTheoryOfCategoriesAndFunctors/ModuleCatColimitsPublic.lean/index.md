# Verification target: Module Cat Colimits Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "467890248156563a42f746a82a5be8f05ff3a879",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant56240e276c94d5a20573b59aa01a789fbc55f3c8a2e6377810912600926d385b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `467890248156563a42f746a82a5be8f05ff3a879`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant56240e276c94d5a20573b59aa01a789fbc55f3c8a2e6377810912600926d385b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant56240e276c94d5a20573b59aa01a789fbc55f3c8a2e6377810912600926d385b.lean.json)

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
| 1 | `def` | [coconePointSMul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsPublic.lean/declarations/coconepointsmul.md) | 47 | `declaration-track:79f653ff8195a1e297abfecf7a4037725a7785ad90515c170e36202664e589c0` |
| 2 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsPublic.lean/declarations/colimitcocone.md) | 64 | `declaration-track:09e4c597ed99a990430f57d0356ec09e59245735234257806508727cf1c19722` |
| 3 | `def` | [isColimitColimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsPublic.lean/declarations/iscolimitcolimitcocone.md) | 82 | `declaration-track:69b033e97f466ea4a9f02c0ace65aa867d1fe286d6cd2da29bfc9be4730f6e7d` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsPublic.lean/declarations/instance-source-edition-5.md) | 106 | `declaration-track:fb1f9acb777934551bf805925b9142291c9bcd29723dc08f815bfe152f2931f2` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsPublic.lean/declarations/instance-source-edition-2.md) | 108 | `declaration-track:d4ff329d40d2d21514692cd87084590b450aa03b827d4ba37cb91c0e27cf5072` |
| 6 | `instance` | [reflectsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsPublic.lean/declarations/reflectscolimit.md) | 111 | `declaration-track:c9ed7a938d297797f109b97250ab9472536659979250643239943a68bf016b2b` |
| 7 | `instance` | [hasColimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsPublic.lean/declarations/hascolimitsofshape.md) | 119 | `declaration-track:fc45ad949d8926bcf3fbd2f1c6ce9340fa6243720314814fe0224d6938bf8a21` |
| 8 | `instance` | [reflectsColimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsPublic.lean/declarations/reflectscolimitsofshape.md) | 122 | `declaration-track:d0621915a9954bab2434a21940e5ef0b349b6da99da19a971600b5aa26d464af` |
| 9 | `instance` | [hasColimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsPublic.lean/declarations/hascolimitsofsize.md) | 125 | `declaration-track:9dd0469cd53496e4a080df8bb92fae147a02261c0df6a41934b1f95027ea4ce8` |
| 10 | `instance` | [forget₂PreservesColimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsPublic.lean/declarations/forget-preservescolimitsofshape.md) | 128 | `declaration-track:208498fd0d3285908dca57e8775b7bfe8265f282cd125217ccb5b80dd6bc5a05` |
| 11 | `instance` | [forget₂PreservesColimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsPublic.lean/declarations/forget-preservescolimitsofsize.md) | 132 | `declaration-track:a8c2d70a04798215b5221287d1c5fa46bb06385f309a6f6606a05fc628319935` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsPublic.lean/declarations/instance.md) | 136 | `declaration-track:0c0925dfce4e0a9a5a5cce7e09118c2fdfc840b0e39b68e7b67099bb462c77e7` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsPublic.lean/declarations/instance-source-edition-3.md) | 140 | `declaration-track:e74dab0d18a6dd45aa4cd2bc6a53511b8f84e9ed8c5d8c1eba4e1db1852a6a84` |
| 14 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsPublic.lean/declarations/example-source-edition-3.md) | 143 | `declaration-track:ba694ac6783e90f1d5fd249bd03effe80709d76927a2cc463a2ae0b18f2bc9e7` |
| 15 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsPublic.lean/declarations/example-source-edition-4.md) | 146 | `declaration-track:be70f5db38c8df1d9a89f39d18d69e9a6492e01bee7808688cbc50935b8f641f` |
| 16 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsPublic.lean/declarations/example-source-edition-5.md) | 149 | `declaration-track:d05740f571cbf29c3a857f14f22a983824df0987b73f1a46f4c052d5dda05556` |
| 17 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsPublic.lean/declarations/example-source-edition-2.md) | 152 | `declaration-track:af01ad84dab76ba980f8c41f0869d8fe70500db253921de4b416fd5d7259cbc6` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsPublic.lean/declarations/instance-source-edition-4.md) | 156 | `declaration-track:ec834f362e2a63910f40e97a044d568f16297b9d032bcd75aabddfab363a4c4f` |
| 19 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsPublic.lean/declarations/example.md) | 158 | `declaration-track:15b7d10f7c94e48f892f4a112410e5424f9653886b160f1ad3ae1550480acc9e` |
| 20 | `def` | [finsuppCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsPublic.lean/declarations/finsuppcocone.md) | 167 | `declaration-track:6b70814824f07d36a22632e688ee8baaf9d6c888ff90391ef678d26ed71f74ee` |
| 21 | `def` | [finsuppCoconeIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsPublic.lean/declarations/finsuppcoconeiscolimit.md) | 175 | `declaration-track:53657b980bc54e4c630f4b165d948dec94f07138352f88d4e736bf8b19c44f15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=031870cd6bfe6940cf0fd8d68d9a3315a15e0f6a868b3f67b4b9310c8530ea3e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant56240e276c94d5a20573b59aa01a789fbc55f3c8a2e6377810912600926d385b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant56240e276c94d5a20573b59aa01a789fbc55f3c8a2e6377810912600926d385b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
