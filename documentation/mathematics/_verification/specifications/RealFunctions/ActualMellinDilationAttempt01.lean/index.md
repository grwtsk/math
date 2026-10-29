# Verification target: Actual Mellin Dilation Attempt01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87d6376142bbad14b66b14485d9ed4a8b50b6330",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt01/Variant0b3e16cf3be5bf249278c01672cbf66b1f8edc913cf76266a3ff8d943fa3e585.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ActualMellinDilationAttempt01.lean/index.md) · [Full source](../../../../RealFunctions/ActualMellinDilationAttempt01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87d6376142bbad14b66b14485d9ed4a8b50b6330`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt01/Variant0b3e16cf3be5bf249278c01672cbf66b1f8edc913cf76266a3ff8d943fa3e585.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt01/Variant0b3e16cf3be5bf249278c01672cbf66b1f8edc913cf76266a3ff8d943fa3e585.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `UnnormalizedDilation` — import line 1; external provider; requires a separately pinned dependency.
- `ActualMuntzMellinDomain` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mellinConvergent_unnormalized](../../../../RealFunctions/ActualMellinDilationAttempt01.lean/declarations/mellinconvergent-unnormalized.md) | 14 | `result-track:dc9f679a768b20f37303c4f016b5f7f93902477c2af55eafb74bb6b315366337` |
| 2 | `theorem` | [mellinConvergent_normalized](../../../../RealFunctions/ActualMellinDilationAttempt01.lean/declarations/mellinconvergent-normalized.md) | 29 | `result-track:8408dfd5712773e48fe15c5e160fe52080a7205e8ad5eb3576200ad08c407ad3` |
| 3 | `theorem` | [sqrt_cpow](../../../../RealFunctions/ActualMellinDilationAttempt01.lean/declarations/sqrt-cpow.md) | 34 | `result-track:2d347d93d679e761102e7045d5d292fe0bc03b62d61a9cb4c59767a1579e88db` |
| 4 | `theorem` | [mellin_normalized_func](../../../../RealFunctions/ActualMellinDilationAttempt01.lean/declarations/mellin-normalized-func.md) | 39 | `result-track:64f3039afa492c72e89c027aba312952941267564e60b14b914a2f3456dfafa3` |
| 5 | `theorem` | [actual_unnormalized_mellinConvergent](../../../../RealFunctions/ActualMellinDilationAttempt01.lean/declarations/actual-unnormalized-mellinconvergent.md) | 47 | `result-track:ef3d8928fd29e13f517aa586feb88c755fe09dc9a9551e6e8ac6573161ef2cf8` |
| 6 | `theorem` | [actual_normalized_mellinConvergent](../../../../RealFunctions/ActualMellinDilationAttempt01.lean/declarations/actual-normalized-mellinconvergent.md) | 52 | `result-track:808ea2f29c30d1038aebac2a414e52b694af410722bf157168e9b683778592ad` |
| 7 | `theorem` | [actual_unnormalized_mellin](../../../../RealFunctions/ActualMellinDilationAttempt01.lean/declarations/actual-unnormalized-mellin.md) | 57 | `result-track:f1c2ff7142bf0c053cab859c35bb005b64cb13c90a7640590eb7864b351ad529` |
| 8 | `theorem` | [actual_normalized_mellin](../../../../RealFunctions/ActualMellinDilationAttempt01.lean/declarations/actual-normalized-mellin.md) | 62 | `result-track:05220171959d603c3a9459541a10381e2211828c4831ab7600e6a842862a12fd` |
| 9 | `theorem` | [actual_dilated_class_mellinConvergent](../../../../RealFunctions/ActualMellinDilationAttempt01.lean/declarations/actual-dilated-class-mellinconvergent.md) | 67 | `result-track:d50caae45ae20a2a0cfeb06a686b8cb9d68093909ba01dcd658d5d9858694f5e` |
| 10 | `theorem` | [actual_dilated_class_mellin](../../../../RealFunctions/ActualMellinDilationAttempt01.lean/declarations/actual-dilated-class-mellin.md) | 74 | `result-track:5de800a2b77e618be5c03395bd29483d5a8a94058a012f88c352a7e66aeea5b0` |
| 11 | `theorem` | [actual_integer_class_mellin](../../../../RealFunctions/ActualMellinDilationAttempt01.lean/declarations/actual-integer-class-mellin.md) | 83 | `result-track:ae75e57f5007b553a47a253d7dbfaefbc67e394889968c4020e217b9c2040f9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b238e9fe1c06aafbac07b6ea2ef4b580aa827f9f1726c6f47d97182d8a294927 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt01/Variant0b3e16cf3be5bf249278c01672cbf66b1f8edc913cf76266a3ff8d943fa3e585.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt01/Variant0b3e16cf3be5bf249278c01672cbf66b1f8edc913cf76266a3ff8d943fa3e585.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
