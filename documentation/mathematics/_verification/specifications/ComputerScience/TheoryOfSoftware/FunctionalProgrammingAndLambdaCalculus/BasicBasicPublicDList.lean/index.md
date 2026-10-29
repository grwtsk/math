# Verification target: Basic Basic Public DList

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2ad840814c82ef833dc4519564a15dd1f59e68c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc7c3e0d5d9d91715abfeec4be4120b0ed35a603045b94d56b6c9be35245c008b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicDList.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicDList.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2ad840814c82ef833dc4519564a15dd1f59e68c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc7c3e0d5d9d91715abfeec4be4120b0ed35a603045b94d56b6c9be35245c008b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc7c3e0d5d9d91715abfeec4be4120b0ed35a603045b94d56b6c9be35245c008b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Lint` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicDList.lean/declarations/dlist.md) | 19 | `declaration-track:6f6de6bcd18796f60dee85c9159ffe5aa17953ddc5fd89a870be9d9042f0bfe0` |
| 2 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicDList.lean/declarations/oflist.md) | 32 | `declaration-track:a673650969ee2f0471f03e7767c5c2765418ab8b63f3a68bcd2dc34588884087` |
| 3 | `def` | [empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicDList.lean/declarations/empty.md) | 36 | `declaration-track:64ad69f5517ac1f430f90142b1521adda94a5b84fa888487ac0c07b0a46550c0` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicDList.lean/declarations/instance-source-edition-3.md) | 39 | `declaration-track:b7a18cb06388c2cbbd6c13abb25bec7af2ee3a9ced2658cdb49746e0f71a4ad8` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicDList.lean/declarations/instance.md) | 41 | `declaration-track:482ca873692eac77af512e32c9d746f462c5d35df4559eee4fee5c653356b833` |
| 6 | `def` | [toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicDList.lean/declarations/tolist.md) | 44 | `declaration-track:b1c475410502739fe1fc725a3310d59a79acb196a4d9e72b6f3d1ed1235403b5` |
| 7 | `theorem` | [toList_mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicDList.lean/declarations/tolist-mk.md) | 47 | `result-track:86e9ba1fd93848ad3e987be05fe9956e1096e72da8211ae5cedced9011383069` |
| 8 | `def` | [singleton](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicDList.lean/declarations/singleton.md) | 50 | `declaration-track:4284e1aa001d54c515a7eac197a84dd54018240f5ee5acfda954d7153c137a3e` |
| 9 | `def` | [cons](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicDList.lean/declarations/cons.md) | 55 | `declaration-track:de3c529e24422e11f13c9ae8bccb8b4c69ff8068e28f9d011e30986a2e57215f` |
| 10 | `def` | [append](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicDList.lean/declarations/append.md) | 62 | `declaration-track:587d7604a196939282eeb421a11f7691bcc3d423d8f605bfbae825184d90cd6e` |
| 11 | `def` | [push](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicDList.lean/declarations/push.md) | 72 | `declaration-track:f3f3bcd71997a832ac1228b2fe42e73ff83a013713a08d5580ec6d03d8630df3` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicDList.lean/declarations/instance-source-edition-2.md) | 82 | `declaration-track:898c81484948c315990af748b9561e3ede04d7ba52d258565beb3ea34a276484` |
| 13 | `def` | [ofThunk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicDList.lean/declarations/ofthunk.md) | 85 | `declaration-track:5451c6bb610a4c3d70228ce33b74f6769d9393ec9d2afbfe5aed2088bc3769cf` |
| 14 | `def` | [join](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicDList.lean/declarations/join.md) | 90 | `declaration-track:06eee08c162553afb18283388c5084c85305b3caedfd46138ee652499b35e007` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a280528cdd557f709f1170658a9e617d4da0ed0eb117db6bf986e3f27084605 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc7c3e0d5d9d91715abfeec4be4120b0ed35a603045b94d56b6c9be35245c008b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc7c3e0d5d9d91715abfeec4be4120b0ed35a603045b94d56b6c9be35245c008b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
