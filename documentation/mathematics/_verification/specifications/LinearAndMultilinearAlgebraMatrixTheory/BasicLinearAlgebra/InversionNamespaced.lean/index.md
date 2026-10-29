# Verification target: Inversion Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fb4226d02a6d58354ec00fef919ea400ad9c82c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Inversion/Variant6113ebc44694b5dea3ed290915193ae62c641216fc27689e154a72027aa86fad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InversionNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InversionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fb4226d02a6d58354ec00fef919ea400ad9c82c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Inversion/Variant6113ebc44694b5dea3ed290915193ae62c641216fc27689e154a72027aa86fad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Inversion/Variant6113ebc44694b5dea3ed290915193ae62c641216fc27689e154a72027aa86fad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Contraction` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invertibleιOfInvertible](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InversionNamespaced.lean/declarations/invertible-ofinvertible.md) | 30 | `declaration-track:5838ad41ee9b06c80757fc0108bcce1e5d354982b90835073b11d1501999c8f4` |
| 2 | `theorem` | [invOf_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InversionNamespaced.lean/declarations/invof.md) | 38 | `result-track:c504669e3542ccd5085770709fd3310ceef3034e024f85e416974584ffe436ec` |
| 3 | `theorem` | [isUnit_ι_of_isUnit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InversionNamespaced.lean/declarations/isunit-of-isunit.md) | 43 | `result-track:0697db477af1f8c0876591b55856bd04506cd27e2fffd9c9f2acee23e1b772af` |
| 4 | `theorem` | [ι_mul_ι_mul_invOf_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InversionNamespaced.lean/declarations/mul-mul-invof.md) | 49 | `result-track:793d9a01b7311dcccd22c3aa6b3c097dfe849d80a72dbf874de35808e5f62a60` |
| 5 | `theorem` | [invOf_ι_mul_ι_mul_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InversionNamespaced.lean/declarations/invof-mul-mul.md) | 55 | `result-track:e767e8bcf956948b79d0dd835ad458f41ca54f73d254d667dd8310157f37b3bd` |
| 6 | `def` | [invertibleOfInvertibleι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InversionNamespaced.lean/declarations/invertibleofinvertible.md) | 64 | `declaration-track:9f294bdc626db2142099501c024358b4a34a2692d3ab8ff7a302e36bacf8e4c6` |
| 7 | `theorem` | [isUnit_of_isUnit_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InversionNamespaced.lean/declarations/isunit-of-isunit-source-edition-2.md) | 69 | `result-track:b4751df25a77c95842e92abb75e29039bed34eab35b38d83676aec4690cf6940` |
| 8 | `theorem` | [isUnit_ι_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InversionNamespaced.lean/declarations/isunit-iff.md) | 74 | `result-track:851d13fe5ad3040dd8d479fc879ab22fb5370ff57b77fc1beb4aa0b1e7c7a4e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d0baa88d5c3d5d1d014cf4bba49c03fe6ec31ff85ba9fa7ee9d81a11685ff00 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Inversion/Variant6113ebc44694b5dea3ed290915193ae62c641216fc27689e154a72027aa86fad.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Inversion/Variant6113ebc44694b5dea3ed290915193ae62c641216fc27689e154a72027aa86fad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
