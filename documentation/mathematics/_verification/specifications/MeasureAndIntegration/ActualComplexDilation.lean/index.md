# Verification target: Actual Complex Dilation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75484560b8993e87096a300ea5e67d8e0920ed4e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant386d2fb7985c41d927a2b059c01c3da27c5b38734fef82c380a96e4560685cac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ActualComplexDilation.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ActualComplexDilation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75484560b8993e87096a300ea5e67d8e0920ed4e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant386d2fb7985c41d927a2b059c01c3da27c5b38734fef82c380a96e4560685cac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant386d2fb7985c41d927a2b059c01c3da27c5b38734fef82c380a96e4560685cac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `PositiveDilation` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualComplexOperator](../../../../MeasureAndIntegration/ActualComplexDilation.lean/declarations/actualcomplexoperator.md) | 13 | `declaration-track:c9511c22929166188108cb5bb06aeceb5adb99d67fa9a8790d68e8b85764f7c6` |
| 2 | `theorem` | [actualComplexOperator_memLp](../../../../MeasureAndIntegration/ActualComplexDilation.lean/declarations/actualcomplexoperator-memlp.md) | 15 | `result-track:9c8317531b53117de589ad56b126078673379952b2bfb3450b8c10f6feac09ed` |
| 3 | `def` | [actualComplexL2](../../../../MeasureAndIntegration/ActualComplexDilation.lean/declarations/actualcomplexl2.md) | 19 | `declaration-track:5290a994cd64b2095e51f01755892952c877bfc65c36ac129870244aab145576` |
| 4 | `theorem` | [actualComplexL2_ae](../../../../MeasureAndIntegration/ActualComplexDilation.lean/declarations/actualcomplexl2-ae.md) | 22 | `result-track:5ceac2c822042dcb1f0869c20ffeead63ae2d6655fa5b4be5cd3fa44c4ba5898` |
| 5 | `theorem` | [actualComplexL2_norm_sq](../../../../MeasureAndIntegration/ActualComplexDilation.lean/declarations/actualcomplexl2-norm-sq.md) | 26 | `result-track:e9d773b0c763204f93616e38588549e2b265f515666b6b8b28222f70faa9970b` |
| 6 | `theorem` | [dilate_actual_ae](../../../../MeasureAndIntegration/ActualComplexDilation.lean/declarations/dilate-actual-ae.md) | 33 | `result-track:659864c30c9bc4d442b8ea3fbb0758c7ca98d9de84411d42893354117007a601` |
| 7 | `theorem` | [dilate_actual_norm](../../../../MeasureAndIntegration/ActualComplexDilation.lean/declarations/dilate-actual-norm.md) | 41 | `result-track:edd9af7cf0c191742076d6bcd9834131bb3f6f0a28154bbd436e0ecfd644f4c9` |
| 8 | `def` | [integerOrbit](../../../../MeasureAndIntegration/ActualComplexDilation.lean/declarations/integerorbit.md) | 46 | `declaration-track:dcf939faa229c4a4d7fb042acfebbf52365740f79cd57063c9abb909472648a6` |
| 9 | `theorem` | [integerOrbit_ae](../../../../MeasureAndIntegration/ActualComplexDilation.lean/declarations/integerorbit-ae.md) | 49 | `result-track:3d0f89636cabb372891d64d0938d2a53448038095f966c721a2f77f15993181d` |
| 10 | `theorem` | [integerOrbit_norm](../../../../MeasureAndIntegration/ActualComplexDilation.lean/declarations/integerorbit-norm.md) | 54 | `result-track:7b3992423d7abad1bb8058eef8c3dca0c4cdef9d285b20dbc0c6ae613d0b5b49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=941ebedd8792021cd0ae8185654ec789299698e2af918b74e6fbd8b9c553c7ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant386d2fb7985c41d927a2b059c01c3da27c5b38734fef82c380a96e4560685cac.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant386d2fb7985c41d927a2b059c01c3da27c5b38734fef82c380a96e4560685cac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
