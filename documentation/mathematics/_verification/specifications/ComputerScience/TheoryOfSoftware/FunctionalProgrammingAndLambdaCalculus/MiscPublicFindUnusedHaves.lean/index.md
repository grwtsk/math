# Verification target: Misc Public Find Unused Haves

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "240605315812c204b41e2f22b2718769634065dc",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantf686cbdbcf8c266533eecaa7ba49ed4c5fdb1a7375352bf9e3029cfd255362bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MiscPublicFindUnusedHaves.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MiscPublicFindUnusedHaves.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `240605315812c204b41e2f22b2718769634065dc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantf686cbdbcf8c266533eecaa7ba49ed4c5fdb1a7375352bf9e3029cfd255362bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantf686cbdbcf8c266533eecaa7ba49ed4c5fdb1a7375352bf9e3029cfd255362bb.lean.json)

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
| 1 | `def` | [unusedArguments](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MiscPublicFindUnusedHaves.lean/declarations/unusedarguments.md) | 32 | `declaration-track:0a3b0f637972269e344e3de27deb411c2a943c5ba20aba6a5b6fa568ba88173a` |
| 2 | `def` | [docBlame](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MiscPublicFindUnusedHaves.lean/declarations/docblame.md) | 85 | `declaration-track:66b7466dfa50d8fcaee2c0ce80fcf54c7778eb39bcd8d08270b43861e79ea03b` |
| 3 | `def` | [docBlameThm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MiscPublicFindUnusedHaves.lean/declarations/docblamethm.md) | 113 | `declaration-track:f47305dc804dec43cfb2572bdc8fcee3be51a971ddc3825a70a23c9ede4d9322` |
| 4 | `def` | [checkType](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MiscPublicFindUnusedHaves.lean/declarations/checktype.md) | 133 | `declaration-track:56b5e08af81f4a0e74139d9e9cd55317debb5ee92c81958747d515def6dd41bb` |
| 5 | `def` | [synTaut](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MiscPublicFindUnusedHaves.lean/declarations/syntaut.md) | 149 | `declaration-track:3ed31014c31e823f21f5bef3a0fe58e46d7ca5d329f4517251bf4ebeb882f28c` |
| 6 | `def` | [findUnusedHaves](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MiscPublicFindUnusedHaves.lean/declarations/findunusedhaves.md) | 173 | `declaration-track:d9e248e04c9af8a43501020cd68d1b59581b70a6aaadf56d9cc68ffdbb839d33` |
| 7 | `def` | [unusedHavesSuffices](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MiscPublicFindUnusedHaves.lean/declarations/unusedhavessuffices.md) | 193 | `declaration-track:a0d567919c9d069b15d294db182b16ce5582ca6874f6c941cad731bf1c07edf1` |
| 8 | `def` | [explicitVarsOfIff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MiscPublicFindUnusedHaves.lean/declarations/explicitvarsofiff.md) | 219 | `declaration-track:ccd85a77dc1995611995e28017bb5d91bfc31ff03aaab19611821397ee6c4aac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6745e51c4505310cfff17d6f40702c4a60f097a40f691ab6aff529e39746e2d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantf686cbdbcf8c266533eecaa7ba49ed4c5fdb1a7375352bf9e3029cfd255362bb.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantf686cbdbcf8c266533eecaa7ba49ed4c5fdb1a7375352bf9e3029cfd255362bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
