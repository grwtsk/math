# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Respect.Variante4f199b23cd8886665d5ea5e8b0255eadcb8ecd0bd48a222f9680c05b497d917

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64b15f2d2bcba38fd037cf760f8fe451b956cf55",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Respect/Variante4f199b23cd8886665d5ea5e8b0255eadcb8ecd0bd48a222f9680c05b497d917.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Respect/Variante4f199b23cd8886665d5ea5e8b0255eadcb8ecd0bd48a222f9680c05b497d917.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Respect/Variante4f199b23cd8886665d5ea5e8b0255eadcb8ecd0bd48a222f9680c05b497d917.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64b15f2d2bcba38fd037cf760f8fe451b956cf55`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Respect/Variante4f199b23cd8886665d5ea5e8b0255eadcb8ecd0bd48a222f9680c05b497d917.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Respect/Variante4f199b23cd8886665d5ea5e8b0255eadcb8ecd0bd48a222f9680c05b497d917.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Capability.Scope` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RespectEvidence](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Respect/Variante4f199b23cd8886665d5ea5e8b0255eadcb8ecd0bd48a222f9680c05b497d917.lean/declarations/respectevidence--25dea3f19b9e46885f51d35b.md) | 14 | `declaration-track:25dea3f19b9e46885f51d35bb1d8757152113e597e815a8213148cf54c147e88` |
| 2 | `def` | [RespectEvidence.AppliesTo](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Respect/Variante4f199b23cd8886665d5ea5e8b0255eadcb8ecd0bd48a222f9680c05b497d917.lean/declarations/respectevidence-appliesto--7f99d713288143818b4881a1.md) | 26 | `declaration-track:7f99d713288143818b4881a11c30f8892551a20d3f5df535c3f190262dc20d41` |
| 3 | `def` | [RespectEvidence.impliesTrust](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Respect/Variante4f199b23cd8886665d5ea5e8b0255eadcb8ecd0bd48a222f9680c05b497d917.lean/declarations/respectevidence-impliestrust--4776ae4dffbcd5f775d94fa1.md) | 31 | `declaration-track:4776ae4dffbcd5f775d94fa1317b3c7cd52a24bcb769a53f70d7521ab69b428e` |
| 4 | `theorem` | [trust_not_implied_by_respect](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Respect/Variante4f199b23cd8886665d5ea5e8b0255eadcb8ecd0bd48a222f9680c05b497d917.lean/declarations/trust-not-implied-by-respect--61c29e29f6c6c509dbcc7e1c.md) | 35 | `result-track:61c29e29f6c6c509dbcc7e1c2613eff1ef5eb0c7f3a55c579dddcc871fdb13ff` |
| 5 | `theorem` | [respect_is_scope_bound](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Respect/Variante4f199b23cd8886665d5ea5e8b0255eadcb8ecd0bd48a222f9680c05b497d917.lean/declarations/respect-is-scope-bound--8188f60954d0b99af49cb01d.md) | 40 | `result-track:8188f60954d0b99af49cb01d2b4097dec973b4488d8202a9b41dae6affebbcae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7cdbfd8139f5d0bd8f64fed725c2f3d78f842dd79c229e005c2645a9ddb982b7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Respect/Variante4f199b23cd8886665d5ea5e8b0255eadcb8ecd0bd48a222f9680c05b497d917.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Respect/Variante4f199b23cd8886665d5ea5e8b0255eadcb8ecd0bd48a222f9680c05b497d917.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
