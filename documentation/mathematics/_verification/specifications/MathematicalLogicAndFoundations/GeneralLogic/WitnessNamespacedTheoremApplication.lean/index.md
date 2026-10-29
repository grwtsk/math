# Verification target: Witness Namespaced Theorem Application

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8136369984633e7a75357e67afba744b3a6a5d55",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Witness/Variant9b87595d840d14ef5d71bd14bd266298031f858acb0050a0fb4ede12d7e36a41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WitnessNamespacedTheoremApplication.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WitnessNamespacedTheoremApplication.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8136369984633e7a75357e67afba744b3a6a5d55`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Witness/Variant9b87595d840d14ef5d71bd14bd266298031f858acb0050a0fb4ede12d7e36a41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Witness/Variant9b87595d840d14ef5d71bd14bd266298031f858acb0050a0fb4ede12d7e36a41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.Transport.Theorem` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TheoremApplication](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WitnessNamespacedTheoremApplication.lean/declarations/theoremapplication.md) | 16 | `declaration-track:0ca2784e161d2f7b27326194513bb52c5811991b4b62e1d61a1d7e47540dd203` |
| 2 | `def` | [ofDomain](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WitnessNamespacedTheoremApplication.lean/declarations/ofdomain.md) | 27 | `declaration-track:bb40c2074125ea8c51a09044e7270587b923642c01f8c304eb18ab141e4d4cdb` |
| 3 | `structure` | [ExistenceEvidence](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WitnessNamespacedTheoremApplication.lean/declarations/existenceevidence.md) | 41 | `declaration-track:d69aec51d4539f298de049b28189b7da02d0a1d4cd14f14c3062cfbaa7a1bd80` |
| 4 | `def` | [ofApplication](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WitnessNamespacedTheoremApplication.lean/declarations/ofapplication.md) | 53 | `declaration-track:5b957a2d5b00d0c437901803395dfbc6695cd0f3845aeb0867ebbc42e0554ade` |
| 5 | `inductive` | [SelectionMethodKind](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WitnessNamespacedTheoremApplication.lean/declarations/selectionmethodkind.md) | 67 | `declaration-track:46f50e7be60104bca8815f388beb969d41675528e5fe36dd42ca3aa6352df85f` |
| 6 | `structure` | [SelectionMethod](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WitnessNamespacedTheoremApplication.lean/declarations/selectionmethod.md) | 80 | `declaration-track:ee1e975352d4ea615b60c20e98994457adf53caaabbf8fba42ddccc3132eaf1e` |
| 7 | `inductive` | [MaterializableSelectionKind](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WitnessNamespacedTheoremApplication.lean/declarations/materializableselectionkind.md) | 88 | `declaration-track:131f226206901fe0cbc6679e200c28989bbc73e7dbc6e1a463646a24c3efb89a` |
| 8 | `structure` | [WitnessSelectionEvent](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WitnessNamespacedTheoremApplication.lean/declarations/witnessselectionevent.md) | 101 | `declaration-track:f9879aced627d85cace4a5480e6ad091d03f873a0efc257a11ced480cd55c881` |
| 9 | `structure` | [SelectedWitness](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WitnessNamespacedTheoremApplication.lean/declarations/selectedwitness.md) | 115 | `declaration-track:7f0136c7834c2bfbf6c561b79db169909f34d1b21aedfa9fb161054e9dc2343c` |
| 10 | `def` | [value](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WitnessNamespacedTheoremApplication.lean/declarations/value.md) | 131 | `declaration-track:85da6dd1c0095674fd3c420c32c979a8b258243459c250f0a86a08cd5865b09c` |
| 11 | `def` | [ofSelection](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WitnessNamespacedTheoremApplication.lean/declarations/ofselection.md) | 145 | `declaration-track:b9b36b0e8a6beaa6dad42366b8b04df53994402b8906381c198161ddb3b21557` |
| 12 | `structure` | [ArithmeticWitness](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WitnessNamespacedTheoremApplication.lean/declarations/arithmeticwitness.md) | 162 | `declaration-track:46e102323aa5b5a77333f671d60594c43198bb3661c4ab607323940e5ddf2f1d` |
| 13 | `def` | [ofSelected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WitnessNamespacedTheoremApplication.lean/declarations/ofselected.md) | 180 | `declaration-track:e914cd1e4783d9e3a84d0356a7ae0e6c8703e3857d627e5388bf8a56120e3c44` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba11bfac2455b601d46ace1f31bd2b49b2a9b257e91c66e97bebb8ba180c7de7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Witness/Variant9b87595d840d14ef5d71bd14bd266298031f858acb0050a0fb4ede12d7e36a41.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Witness/Variant9b87595d840d14ef5d71bd14bd266298031f858acb0050a0fb4ede12d7e36a41.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
