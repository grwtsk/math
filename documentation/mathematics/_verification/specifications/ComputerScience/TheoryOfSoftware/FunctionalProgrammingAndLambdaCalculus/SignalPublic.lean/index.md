# Verification target: Signal Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d34666cf5bd15f4e1d1b1719bdccca438c3c7790",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signal/Variantba9fa075290ce86ac6bced0cd79fdaf4eeb17c63fb0e0d2f67bae35d691cc37d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SignalPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SignalPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d34666cf5bd15f4e1d1b1719bdccca438c3c7790`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signal/Variantba9fa075290ce86ac6bced0cd79fdaf4eeb17c63fb0e0d2f67bae35d691cc37d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signal/Variantba9fa075290ce86ac6bced0cd79fdaf4eeb17c63fb0e0d2f67bae35d691cc37d.lean.json)

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
| 1 | `opaque` | [SignalImpl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SignalPublic.lean/declarations/signalimpl.md) | 19 | `declaration-track:33976110c6302a79a620015590aef607d012b1ab4a598d27ab27b51973b57ae2` |
| 2 | `def` | [Signal](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SignalPublic.lean/declarations/signal.md) | 32 | `declaration-track:48e461816a2bc5a00f3c3ca4c0ed2f62579b0353901424c3f6f142ae4f1d1465` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SignalPublic.lean/declarations/instance.md) | 34 | `declaration-track:68ff7b006fd76f18ac3977d21e516f610de4ae8105a7f336e94b0f101546bb3e` |
| 4 | `opaque` | [mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SignalPublic.lean/declarations/mk.md) | 47 | `declaration-track:ad0da875d425bb1059d45c653cd3b660a375bbb7cc6b9070a15369eec48a3e1d` |
| 5 | `opaque` | [next](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SignalPublic.lean/declarations/next.md) | 68 | `declaration-track:0309e1ad400976317607e7a58378ba9ce66a5cc1cc82aee2a75fbc4879f70778` |
| 6 | `opaque` | [stop](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SignalPublic.lean/declarations/stop.md) | 78 | `declaration-track:75822be1f6617378b948fe4d0123cda77d626c982eaf22410dde76c2c4abde81` |
| 7 | `opaque` | [cancel](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SignalPublic.lean/declarations/cancel.md) | 87 | `declaration-track:2ebab1538079f3c2a0eabf0ec052222e679207e3fd8bf1a3c74cf14dffe54613` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ff67f6483bf1431eae58d74bbc2b5fad105a3cbd6fb7a9d3b43408d9114f83e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signal/Variantba9fa075290ce86ac6bced0cd79fdaf4eeb17c63fb0e0d2f67bae35d691cc37d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signal/Variantba9fa075290ce86ac6bced0cd79fdaf4eeb17c63fb0e0d2f67bae35d691cc37d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
