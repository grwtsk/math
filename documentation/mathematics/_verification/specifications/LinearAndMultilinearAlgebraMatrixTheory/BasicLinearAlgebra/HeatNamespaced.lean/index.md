# Verification target: Heat Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc53ab99a884e3d8b5a072a5879eb5235041bdd0",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Heat/Variant9d2d0d541fbbb4edff000192a38245d6c34dc5d3b9f4fb6e04c170bdc975dfe2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeatNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeatNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc53ab99a884e3d8b5a072a5879eb5235041bdd0`.

Source path: `GRWTSK/Analysis/Heat/Variant9d2d0d541fbbb4edff000192a38245d6c34dc5d3b9f4fb6e04c170bdc975dfe2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Heat/Variant9d2d0d541fbbb4edff000192a38245d6c34dc5d3b9f4fb6e04c170bdc975dfe2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Hilbert.HodgeDirac` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Algebra.MatrixExponential` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [heatDiffuser](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeatNamespaced.lean/declarations/heatdiffuser.md) | 31 | `declaration-track:361b7c315901ee01facb3ca90ee60d894e9279d50a2e8992b6e1d83c1334f4bb` |
| 2 | `theorem` | [diracSquare_isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeatNamespaced.lean/declarations/diracsquare-ishermitian.md) | 36 | `result-track:22d8002e32ad42523e1f31944202a18046935d2034545bf97ab5ee18141d536b` |
| 3 | `theorem` | [heatGenerator_isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeatNamespaced.lean/declarations/heatgenerator-ishermitian.md) | 44 | `result-track:43c866bbde2108afa3b9e10378f6b633c55de8c7cd9cf2acb30518147b682630` |
| 4 | `theorem` | [heatDiffuser_selfAdjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeatNamespaced.lean/declarations/heatdiffuser-selfadjoint.md) | 53 | `result-track:c007bf4e9934bfda6103f360d34a6673bc6d828fcbe9ce42a26787f06e79a509` |
| 5 | `theorem` | [heatDiffuser_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeatNamespaced.lean/declarations/heatdiffuser-add.md) | 61 | `result-track:c83e690d85e25b7a9090d3be1d96eff13b0fd0ff6d7039e6b96ca149e668eee8` |
| 6 | `structure` | [HeatContractionCertificate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeatNamespaced.lean/declarations/heatcontractioncertificate.md) | 78 | `declaration-track:e524fb31d1bfdd1f695a07dcfeb2fb330e3487c768fcee981df0cfbfb284ff60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea14830ba59df41debbe94292a300d9e05a26dbd6b75a2099ba2b0b04382e37f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Heat/Variant9d2d0d541fbbb4edff000192a38245d6c34dc5d3b9f4fb6e04c170bdc975dfe2.lean","GRWTSK/_verification/specifications/Analysis/Heat/Variant9d2d0d541fbbb4edff000192a38245d6c34dc5d3b9f4fb6e04c170bdc975dfe2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
