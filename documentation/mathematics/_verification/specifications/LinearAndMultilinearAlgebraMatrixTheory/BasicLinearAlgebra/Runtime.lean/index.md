# Verification target: GRWTSK.InformationTheory.ReedSolomon.Runtime

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ea879891e6adb41df1a372d48bc9eb0f12f99cc",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/InformationTheory/ReedSolomon/Runtime.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Runtime.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Runtime.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ea879891e6adb41df1a372d48bc9eb0f12f99cc`.

Source path: `GRWTSK/InformationTheory/ReedSolomon/Runtime.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/InformationTheory/ReedSolomon/Runtime.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.InformationTheory.ReedSolomon.Profiles`](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Profiles.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Algebra.FiniteField.GF128.InverseCertificates`](../../../../../FieldTheoryAndPolynomials/InverseCertificates.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.Algebra.FiniteField.GF128.Exponentiation`](../../../../../FieldTheoryAndPolynomials/Exponentiation.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nodeWord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Runtime.lean/declarations/nodeword.md) | 14 | `declaration-track:5b38fb65b81a9b021a99562490cc8d6375d7316a6c034a3639bf5f60c0f49451` |
| 2 | `def` | [coordinates](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Runtime.lean/declarations/coordinates.md) | 16 | `declaration-track:e354c4ff64a7e0eefd98bf811b1c7f3d1a806c79562632b60b5520d6519ef886` |
| 3 | `def` | [product3](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Runtime.lean/declarations/product3.md) | 19 | `declaration-track:c10e40cab361dcf12354c538c99d6935a5784f5bbf8fab2aaf7ba30f6b43d2eb` |
| 4 | `def` | [excludedProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Runtime.lean/declarations/excludedproduct.md) | 22 | `declaration-track:d7abbf8a24444d2a06ebe478f8a9c5a717949e1e883d1002c8f22cfe41f99d02` |
| 5 | `def` | [denominator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Runtime.lean/declarations/denominator.md) | 28 | `declaration-track:52afc74ebaea22e5e3eb1178679291b35b42d35b97f1e701de4cece947c7013e` |
| 6 | `def` | [numerator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Runtime.lean/declarations/numerator.md) | 31 | `declaration-track:77b5c61c5f99780a7c406984f2e32acfe860a6fbf1375d4a0152c305e992028e` |
| 7 | `def` | [runtimeCoefficient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Runtime.lean/declarations/runtimecoefficient.md) | 35 | `declaration-track:dfb8acb7cf8e9c9867f5767a84896c09fcf497d3dcd5a216491df7c09c5c8a67` |
| 8 | `def` | [lookupCoefficient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Runtime.lean/declarations/lookupcoefficient.md) | 39 | `declaration-track:9ecdf30dc481bccc6663453439e55a14dde4fb7bd9d4338da30abf6b1809bb9f` |
| 9 | `theorem` | [denominator_profile](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Runtime.lean/declarations/denominator-profile.md) | 43 | `result-track:4dd62a35eb344ab91720ecaa38f222a16a9a58fe63377150ceeecca5272a32db` |
| 10 | `theorem` | [runtimeCoefficient_eq_lookup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Runtime.lean/declarations/runtimecoefficient-eq-lookup.md) | 46 | `result-track:76a5e7bfa836a423696f8728948785f40a5f918315bb0c2fecd5af3769fc20c3` |
| 11 | `theorem` | [lookup_recovery_coefficients](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Runtime.lean/declarations/lookup-recovery-coefficients.md) | 58 | `result-track:1e5b043a8ee0ee36ad02ba8a9629aef18c94511b704248ab74a0a0dde7c70531` |
| 12 | `theorem` | [lookup_encoding_coefficients](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Runtime.lean/declarations/lookup-encoding-coefficients.md) | 64 | `result-track:db7086806fa63b3b40eab05c9703d211d0f2f7af3e3725617393e1b534efefca` |
| 13 | `theorem` | [runtime_recovery_coefficients](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Runtime.lean/declarations/runtime-recovery-coefficients.md) | 68 | `result-track:08296c421e28de979ff3d4881252f3e032d12f0dbc0a30d65604a21d2f006c04` |
| 14 | `theorem` | [runtime_encoding_coefficients](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Runtime.lean/declarations/runtime-encoding-coefficients.md) | 73 | `result-track:299827903127db31cab344f40657ce0461ae3dd343433a0fb80aabb94e93f60a` |
| 15 | `def` | [runtimeEval](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Runtime.lean/declarations/runtimeeval.md) | 81 | `declaration-track:7b06977d040dca8d19c7c002b7345af1445e97e0ed40aab774f638b54db40d5d` |
| 16 | `def` | [runtimeTransform](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Runtime.lean/declarations/runtimetransform.md) | 88 | `declaration-track:b8f9d4361e0de01a45a7009c28f07e08aba44a38566391a025c9f05f2363924d` |
| 17 | `theorem` | [runtimeEval_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Runtime.lean/declarations/runtimeeval-eq.md) | 95 | `result-track:b570801546c47837e94f99d829f060884caf6f827e02b28769eb9f552fb5a27e` |
| 18 | `theorem` | [runtimeTransform_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Runtime.lean/declarations/runtimetransform-eq.md) | 101 | `result-track:dc9dec71b9cebf9faff43f5ddec2472f8e81af49a20788b933922f9345b3fef2` |
| 19 | `def` | [encodeRuntime](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Runtime.lean/declarations/encoderuntime.md) | 111 | `declaration-track:e438360f44230a71e8066ac72bd048448ba0429902a3cc22c669c19218708b74` |
| 20 | `def` | [decodeRuntime](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Runtime.lean/declarations/decoderuntime.md) | 114 | `declaration-track:584817906e810fc72e6daac7bbf089f630f6dabeb1f8c8beba70f1cfab273d93` |
| 21 | `theorem` | [encodeRuntime_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Runtime.lean/declarations/encoderuntime-eq.md) | 117 | `result-track:01e1bed12c56ca5896a82235828ef96ee5a49a40f9a897d58abf18fe14dff503` |
| 22 | `theorem` | [decodeRuntime_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Runtime.lean/declarations/decoderuntime-eq.md) | 121 | `result-track:6d8ab637ce075dccf453ce9e5fb27469d8df03157fd8cd204d2e61f2607b93a7` |
| 23 | `theorem` | [runtime_roundtrip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Runtime.lean/declarations/runtime-roundtrip.md) | 126 | `result-track:1693559fa4dd468babb0e546c862291eca6b67ae389e12f954eab152db34e4a0` |
| 24 | `theorem` | [decode_selected_fullEncode](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Runtime.lean/declarations/decode-selected-fullencode.md) | 131 | `result-track:82d1c76c1044a95d85d21f18dc4e4046d3ca0fefc926c82db60a5b0a54769378` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3b5e44d9338dfc2c05e1b5e87c7f0f736baf174e21bbc5a2881dc0d415b0bd5b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/InformationTheory/ReedSolomon/Runtime.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Runtime.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
