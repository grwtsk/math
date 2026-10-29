# Verification target: Whole Dependent System And Finite Trace Run

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c27c69eae412cd83d9f86ea206022347d806641",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/FiniteGraphAndObservationComponents/Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e/WholeDependentSystemAndFiniteTraceRun.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WholeDependentSystemAndFiniteTraceRun.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WholeDependentSystemAndFiniteTraceRun.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c27c69eae412cd83d9f86ea206022347d806641`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/FiniteGraphAndObservationComponents/Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e/WholeDependentSystemAndFiniteTraceRun.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/FiniteGraphAndObservationComponents/Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e/WholeDependentSystemAndFiniteTraceRun.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Iterate` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [System](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WholeDependentSystemAndFiniteTraceRun.lean/declarations/system.md) | 44 | `declaration-track:b9bea74f077aaddca643903236857b654b6ca9e814b67c77515526a460cfe89b` |
| 2 | `def` | [run](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WholeDependentSystemAndFiniteTraceRun.lean/declarations/run.md) | 57 | `declaration-track:8326f848bd0eb7a8001a833e9332448c368bbb0481c768d248165545a737ac2e` |
| 3 | `theorem` | [run_nil](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WholeDependentSystemAndFiniteTraceRun.lean/declarations/run-nil.md) | 66 | `result-track:78101f6a55671defd10cf29eb83ac01aff351a452eb0ed7f0f7dfaf85a825825` |
| 4 | `theorem` | [run_cons](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WholeDependentSystemAndFiniteTraceRun.lean/declarations/run-cons.md) | 73 | `result-track:5ba05a5823e2a08cac703fb3681e9b13540883506ed9291237c55e2fd87dc73c` |
| 5 | `theorem` | [run_append](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WholeDependentSystemAndFiniteTraceRun.lean/declarations/run-append.md) | 83 | `result-track:1cc71fc66bd8aa4c7f4bc764eeff8e44f3165afdbbac9d6de155de43834c4bdf` |
| 6 | `theorem` | [run_singleton](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WholeDependentSystemAndFiniteTraceRun.lean/declarations/run-singleton.md) | 96 | `result-track:080b877b045421a01d53f2c98fb218cb3e0b82ba3ab6be94d8af156d2082eeb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a1cbfcd83eb52b937674a346ab7eb40accc1fc6ecc339b04f05e7f29978a2c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/FiniteGraphAndObservationComponents/Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e/WholeDependentSystemAndFiniteTraceRun.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/FiniteGraphAndObservationComponents/Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e/WholeDependentSystemAndFiniteTraceRun.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
