# Verification target: FDeriv Restrict Scalars Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e381c43d0f9d3e0df21ce6d9325c3e1c67ce853",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant135261d506d858030d930cb48bfd5de4ac61f34301f216ad3243cdd7aa5da94e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/FDerivRestrictScalarsPublic.lean/index.md) · [Full source](../../../../RealFunctions/FDerivRestrictScalarsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e381c43d0f9d3e0df21ce6d9325c3e1c67ce853`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant135261d506d858030d930cb48bfd5de4ac61f34301f216ad3243cdd7aa5da94e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant135261d506d858030d930cb48bfd5de4ac61f34301f216ad3243cdd7aa5da94e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasFDerivAtFilter.restrictScalars](../../../../RealFunctions/FDerivRestrictScalarsPublic.lean/declarations/hasfderivatfilter-restrictscalars.md) | 46 | `result-track:544aec82dcd951602bc84d30ead7047bda2323ae4a147f346cc82691d465475b` |
| 2 | `theorem` | [HasStrictFDerivAt.restrictScalars](../../../../RealFunctions/FDerivRestrictScalarsPublic.lean/declarations/hasstrictfderivat-restrictscalars.md) | 51 | `result-track:cdccd7986a6c4d91668e75905e20219c4e7ced511622182acb362ec325108ca6` |
| 3 | `theorem` | [HasFDerivAt.restrictScalars](../../../../RealFunctions/FDerivRestrictScalarsPublic.lean/declarations/hasfderivat-restrictscalars.md) | 56 | `result-track:5bb71aa56c0c8a0641d6bb2cf6bf83c02c3b3f60d1b5136ba09ef02e5ca72576` |
| 4 | `theorem` | [HasFDerivWithinAt.restrictScalars](../../../../RealFunctions/FDerivRestrictScalarsPublic.lean/declarations/hasfderivwithinat-restrictscalars.md) | 61 | `result-track:1a75abd07f5d427c7782cf8bac18d8aee2262b07e73f1de2ed456e0dedd56462` |
| 5 | `theorem` | [DifferentiableAt.restrictScalars](../../../../RealFunctions/FDerivRestrictScalarsPublic.lean/declarations/differentiableat-restrictscalars.md) | 66 | `result-track:85035c2a165ccfbfd1e36bc064b8f09d9eb122be37c54fad0faae77fbd84ac63` |
| 6 | `theorem` | [DifferentiableWithinAt.restrictScalars](../../../../RealFunctions/FDerivRestrictScalarsPublic.lean/declarations/differentiablewithinat-restrictscalars.md) | 70 | `result-track:62770c3814b90c435fa130a7225b1a6f98ad78436152216c828a8ff9b71a17d9` |
| 7 | `theorem` | [DifferentiableOn.restrictScalars](../../../../RealFunctions/FDerivRestrictScalarsPublic.lean/declarations/differentiableon-restrictscalars.md) | 75 | `result-track:92c53e7a3e1d7537c8fb528e0f2577c0cf18befab9ed05940c85c68222b5696c` |
| 8 | `theorem` | [Differentiable.restrictScalars](../../../../RealFunctions/FDerivRestrictScalarsPublic.lean/declarations/differentiable-restrictscalars.md) | 79 | `result-track:5ce014a2a6dc2f56f06ab8ed7f9a103322f637b20eefb1e07ce5068174bf1b75` |
| 9 | `theorem` | [HasFDerivWithinAt.of_restrictScalars](../../../../RealFunctions/FDerivRestrictScalarsPublic.lean/declarations/hasfderivwithinat-of-restrictscalars.md) | 83 | `result-track:c095ea55b0c5fe13c955c15d6801cc73c676a2c7850f632ae42650eedbc2209c` |
| 10 | `theorem` | [hasFDerivAt_of_restrictScalars](../../../../RealFunctions/FDerivRestrictScalarsPublic.lean/declarations/hasfderivat-of-restrictscalars.md) | 89 | `result-track:402d64c93f7316cba10c9c5cbddbe8da1c12c5f648bff7edfe860ed113179a97` |
| 11 | `theorem` | [DifferentiableAt.fderiv_restrictScalars](../../../../RealFunctions/FDerivRestrictScalarsPublic.lean/declarations/differentiableat-fderiv-restrictscalars.md) | 94 | `result-track:cb28ee030b1d0220852413a1651e3e250d1236b10e3e833896d3a7eeca8a7061` |
| 12 | `theorem` | [DifferentiableWithinAt.restrictScalars_fderivWithin](../../../../RealFunctions/FDerivRestrictScalarsPublic.lean/declarations/differentiablewithinat-restrictscalars-fderivwithin.md) | 98 | `result-track:c6f95e45850788c2e9474ace2da7358c974437ab3143d340f1c8c5c9adbe60a0` |
| 13 | `theorem` | [differentiableWithinAt_iff_restrictScalars](../../../../RealFunctions/FDerivRestrictScalarsPublic.lean/declarations/differentiablewithinat-iff-restrictscalars.md) | 103 | `result-track:8cd52ddc8f7d20f5e6cd2beea02c789545484bd573fd85caa39e4e85e4b85b4a` |
| 14 | `theorem` | [differentiableAt_iff_restrictScalars](../../../../RealFunctions/FDerivRestrictScalarsPublic.lean/declarations/differentiableat-iff-restrictscalars.md) | 112 | `result-track:cf64984a9a37f18984791d98a4ffc8dfd31c09f7cc200c8ae60b95195ce8ac03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=14e6d3007b454bbeca66f657cc966a2b312107bdc6a6aa6a84a61b5b08d8098a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant135261d506d858030d930cb48bfd5de4ac61f34301f216ad3243cdd7aa5da94e.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant135261d506d858030d930cb48bfd5de4ac61f34301f216ad3243cdd7aa5da94e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
