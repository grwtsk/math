# Verification target: Basic Basic Namespaced Public Database

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32564e74db677b03254b3549ce2481c6afebc496",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted6c066cb28f47e595c78abe347a497221c4f7d4cacc8f267724743097e535a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicDatabase.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicDatabase.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32564e74db677b03254b3549ce2481c6afebc496`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted6c066cb28f47e595c78abe347a497221c4f7d4cacc8f267724743097e535a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted6c066cb28f47e595c78abe347a497221c4f7d4cacc8f267724743097e535a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Time.Zoned.Database.PosixTz` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Database](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicDatabase.lean/declarations/database.md) | 31 | `declaration-track:e603d7eb4806b42ecc55d393f9f7e3580ff8bd22f6603cca32ff53fc5990de93` |
| 2 | `def` | [convertWall](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicDatabase.lean/declarations/convertwall.md) | 49 | `declaration-track:98bf17e80788e8e9e78c7d7f0ee7621281c081aa4b248205b974e94089a8016b` |
| 3 | `def` | [convertUt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicDatabase.lean/declarations/convertut.md) | 56 | `declaration-track:5a55dace50800ee11e1edd6864c9f2c596f0e802f67f09370c244a5ea1da33fe` |
| 4 | `def` | [convertLocalTimeType](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicDatabase.lean/declarations/convertlocaltimetype.md) | 63 | `declaration-track:c2ec30b285d5b3a1772981bd7b9ebb8ca8a8b86215ff415e8b8df1db28e787ee` |
| 5 | `def` | [convertTransition](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicDatabase.lean/declarations/converttransition.md) | 82 | `declaration-track:e448fbfd64e62b4b8db8bebc5853502a0cac12796751868da60c84affda5af07` |
| 6 | `def` | [convertTZifV1](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicDatabase.lean/declarations/converttzifv1.md) | 91 | `declaration-track:704bd7df3b3f82f4b115a4da844069b91f50cf065cb31a80eac52d260c2a26e5` |
| 7 | `def` | [convertTZifV2](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicDatabase.lean/declarations/converttzifv2.md) | 121 | `declaration-track:8f095903141228fd52e87dbe0f2993ca8d3be126456d1774fa646c8805e7d566` |
| 8 | `def` | [convertTZif](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicDatabase.lean/declarations/converttzif.md) | 140 | `declaration-track:834ae4b571017558e041901b6cd7b1f6734d17a61bc640551026fed6fdb384a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b97b8afb446b0ea2e86c00eac67d934d8b3cfea82b9d4196819dac9ad9956bed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted6c066cb28f47e595c78abe347a497221c4f7d4cacc8f267724743097e535a3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted6c066cb28f47e595c78abe347a497221c4f7d4cacc8f267724743097e535a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
