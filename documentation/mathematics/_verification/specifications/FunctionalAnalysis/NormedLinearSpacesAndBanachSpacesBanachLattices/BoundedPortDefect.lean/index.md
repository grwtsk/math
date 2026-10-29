# Verification target: GRWTSK.Analysis.Operator.BoundedPortDefect

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b5719dea37115916fff7a064e81e204c18dcdbe",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Operator/BoundedPortDefect.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BoundedPortDefect.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BoundedPortDefect.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b5719dea37115916fff7a064e81e204c18dcdbe`.

Source path: `GRWTSK/Analysis/Operator/BoundedPortDefect.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Operator/BoundedPortDefect.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Operator.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [defect](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BoundedPortDefect.lean/declarations/defect.md) | 14 | `declaration-track:6aade85f48595540c27641a568c36479e9b0679d01df1f1abf1b43e51bc08b0b` |
| 2 | `def` | [Intertwines](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BoundedPortDefect.lean/declarations/intertwines.md) | 20 | `declaration-track:5ed4bdf20b2f5840c86cdd2f0a0d44316e6d84d0dbed76f1fa81f02148bce38b` |
| 3 | `theorem` | [intertwines_iff_defect_eq_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BoundedPortDefect.lean/declarations/intertwines-iff-defect-eq-zero.md) | 25 | `result-track:4d5e8879fbf8204858db1f5337393400b37330aba23ce072ba3ed7c0801f9615` |
| 4 | `theorem` | [defect_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BoundedPortDefect.lean/declarations/defect-comp.md) | 31 | `result-track:0758b748442fd08001945ce2cdef32b522de92a10cc8edc6c6153485d514ca74` |
| 5 | `theorem` | [norm_defect_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BoundedPortDefect.lean/declarations/norm-defect-le.md) | 40 | `result-track:60738955620d0633de831426776672d629bd3da9c74fb5abdfb0f37ab27d3da9` |
| 6 | `theorem` | [norm_defect_comp_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BoundedPortDefect.lean/declarations/norm-defect-comp-le.md) | 51 | `result-track:38851cbe334e46f18fdc3ebc965fe200e40fe15fafe05e6968d53f1810fc9328` |
| 7 | `theorem` | [Intertwines.comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BoundedPortDefect.lean/declarations/intertwines-comp.md) | 67 | `result-track:227ae46263210633ce64584d768aedd773f0233d0c3397521c1d1a428a4adcb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d21833201d561bb023d26b3b8bba00d683eec80b40af50b0e31ac2180313608c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Operator/BoundedPortDefect.lean","GRWTSK/_verification/specifications/Analysis/OperatorTheory/BoundedPortDefect.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
