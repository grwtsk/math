# Verification target: Operator Scout Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8cd797b6b8b5f8e0e78352f56286b7e873bf3705",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/OperatorScoutAudit/Variant97e85ef4b15ad3530993a0efca6c85f09b6b6d617ed8c97a9a69171bdd0bef45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/OperatorScoutAudit.lean/index.md) · [Full source](../../../../MeasureAndIntegration/OperatorScoutAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8cd797b6b8b5f8e0e78352f56286b7e873bf3705`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/OperatorScoutAudit/Variant97e85ef4b15ad3530993a0efca6c85f09b6b6d617ed8c97a9a69171bdd0bef45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/OperatorScoutAudit/Variant97e85ef4b15ad3530993a0efca6c85f09b6b6d617ed8c97a9a69171bdd0bef45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../MeasureAndIntegration/OperatorScoutAudit.lean/declarations/fullh.md) | 12 | `declaration-track:764fcf90cd958eaf8ffca7089631ae395fbd1ba1cb73cb095d42e238db52ef3f` |
| 2 | `def` | [fullShift](../../../../MeasureAndIntegration/OperatorScoutAudit.lean/declarations/fullshift.md) | 14 | `declaration-track:88b18629a129c6f58311ab94f11c7425d55fa8723f6e854b882efec86309a784` |
| 3 | `theorem` | [fullShift_ae](../../../../MeasureAndIntegration/OperatorScoutAudit.lean/declarations/fullshift-ae.md) | 17 | `result-track:243454377f09bdb751d00283de2acb80fea4f377aa5e992721f63c632e2b9617` |
| 4 | `theorem` | [fullShift_continuous](../../../../MeasureAndIntegration/OperatorScoutAudit.lean/declarations/fullshift-continuous.md) | 21 | `result-track:26102296be787ded6c6eb1d0e1da29f11429a13fb7dcdfd4c473c333aa0d936e` |
| 5 | `theorem` | [halfLine_zeroExtension_memLp](../../../../MeasureAndIntegration/OperatorScoutAudit.lean/declarations/halfline-zeroextension-memlp.md) | 29 | `result-track:d78d123a9d42fbbfee11e6dbbee909555374bd4e1fb3e283d510e86930e2bd26` |
| 6 | `theorem` | [weighted_shift_integrable](../../../../MeasureAndIntegration/OperatorScoutAudit.lean/declarations/weighted-shift-integrable.md) | 34 | `result-track:9ff67ddb73a4015acd663b93f4833780db03e9621baf67a942be1989b909031d` |
| 7 | `def` | [bochnerVector](../../../../MeasureAndIntegration/OperatorScoutAudit.lean/declarations/bochnervector.md) | 44 | `declaration-track:7644627e6d18767c5958bd1f0afd9edae2ab40cd684cb0a147398c7807c13e72` |
| 8 | `theorem` | [bochnerVector_norm_le](../../../../MeasureAndIntegration/OperatorScoutAudit.lean/declarations/bochnervector-norm-le.md) | 46 | `result-track:db3e32e3de1831ab687fe1dd4ce31445faaf10feefd7693ddb8c87290ddb2840` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=624ff6e118d1eda97e972e8ecb44a10129d5320d0d00621f9b5298c51ba67f5c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/OperatorScoutAudit/Variant97e85ef4b15ad3530993a0efca6c85f09b6b6d617ed8c97a9a69171bdd0bef45.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/OperatorScoutAudit/Variant97e85ef4b15ad3530993a0efca6c85f09b6b6d617ed8c97a9a69171bdd0bef45.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
