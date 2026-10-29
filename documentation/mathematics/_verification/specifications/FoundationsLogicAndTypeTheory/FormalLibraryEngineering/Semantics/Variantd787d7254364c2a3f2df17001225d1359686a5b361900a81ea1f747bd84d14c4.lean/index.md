# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Semantics.Variantd787d7254364c2a3f2df17001225d1359686a5b361900a81ea1f747bd84d14c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d508491a719b33d3a530b7db1011fafb14ad625",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variantd787d7254364c2a3f2df17001225d1359686a5b361900a81ea1f747bd84d14c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variantd787d7254364c2a3f2df17001225d1359686a5b361900a81ea1f747bd84d14c4.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variantd787d7254364c2a3f2df17001225d1359686a5b361900a81ea1f747bd84d14c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d508491a719b33d3a530b7db1011fafb14ad625`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variantd787d7254364c2a3f2df17001225d1359686a5b361900a81ea1f747bd84d14c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variantd787d7254364c2a3f2df17001225d1359686a5b361900a81ea1f747bd84d14c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Polynomial.Interval` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CubicIntegralWitness](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variantd787d7254364c2a3f2df17001225d1359686a5b361900a81ea1f747bd84d14c4.lean/declarations/cubicintegralwitness--abd03de767a2d4481418d704.md) | 20 | `declaration-track:abd03de767a2d4481418d704e341b5af7083340f30f4e39aa0fbd347eb77a286` |
| 2 | `theorem` | [CubicIntegralWitness.correct](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variantd787d7254364c2a3f2df17001225d1359686a5b361900a81ea1f747bd84d14c4.lean/declarations/cubicintegralwitness-correct--92c292c05d82c01bcc812010.md) | 27 | `result-track:92c292c05d82c01bcc812010ce536a0fd05ebc251276657f4427a146e1c0d58c` |
| 3 | `theorem` | [CubicIntegralWitness.correct_endpointDifference](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variantd787d7254364c2a3f2df17001225d1359686a5b361900a81ea1f747bd84d14c4.lean/declarations/cubicintegralwitness-correct-endpointdifference--4f99f12e2e3c9606fcf68e22.md) | 37 | `result-track:4f99f12e2e3c9606fcf68e22b72c69b9e8ae06e0145d710bc8bff92078dd4d08` |
| 4 | `def` | [cubicIntegralWitness](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variantd787d7254364c2a3f2df17001225d1359686a5b361900a81ea1f747bd84d14c4.lean/declarations/cubicintegralwitness--8abfcba2487108edd9fd8047.md) | 45 | `declaration-track:8abfcba2487108edd9fd80470d6c15c086fc80ca06c321212d10f3e1bb23d587` |
| 5 | `theorem` | [cubicIntegralWitness_value](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variantd787d7254364c2a3f2df17001225d1359686a5b361900a81ea1f747bd84d14c4.lean/declarations/cubicintegralwitness-value--32dd5f26b21b67f5e3a2a2ac.md) | 51 | `result-track:32dd5f26b21b67f5e3a2a2ac5022e2052577246effc0b48dc68f6c5de055f22c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=09f0e91fdfeaf2327369bc4890e23873366e5aa6e6a19d650ed3e19964084178 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variantd787d7254364c2a3f2df17001225d1359686a5b361900a81ea1f747bd84d14c4.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variantd787d7254364c2a3f2df17001225d1359686a5b361900a81ea1f747bd84d14c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
