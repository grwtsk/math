# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonCriticalLine

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f269992d7586cbe05ee0a6018e1a3685f3f706bb",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonCriticalLine.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ConcreteNewtonCriticalLine.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ConcreteNewtonCriticalLine.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f269992d7586cbe05ee0a6018e1a3685f3f706bb`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonCriticalLine.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonCriticalLine.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonPacket`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ConcreteNewtonPacket.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalReflectionIsolation`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalReflectionIsolation.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zeroPoint_on_line_of_centered_unique](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ConcreteNewtonCriticalLine.lean/declarations/zeropoint-on-line-of-centered-unique.md) | 45 | `result-track:6fb57d8d2736d957d12b2d49becb1442c51eee097540d832e8d241d03f2f1130` |
| 2 | `theorem` | [concrete_center_on_line](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ConcreteNewtonCriticalLine.lean/declarations/concrete-center-on-line.md) | 59 | `result-track:923e0e6664859f0bee3d880a31a374b39c67915517e28fd0fecd4492994d5c57` |
| 3 | `theorem` | [local_zero_on_line_of_source_acceptance](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ConcreteNewtonCriticalLine.lean/declarations/local-zero-on-line-of-source-acceptance.md) | 65 | `result-track:0a47f371c2cedc1cc9b4a3a7bae27dd8fe71bdd884cf8cc9a4ab451cbd7b91fb` |
| 4 | `theorem` | [every_local_zero_on_line_of_source_acceptance](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ConcreteNewtonCriticalLine.lean/declarations/every-local-zero-on-line-of-source-acceptance.md) | 83 | `result-track:0f365e4e00f1624aadf2129dc47bfcb5d92ed76fb95b1aba6399dfb0fb293457` |
| 5 | `theorem` | [no_off_line_zero_in_concrete_disk](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ConcreteNewtonCriticalLine.lean/declarations/no-off-line-zero-in-concrete-disk.md) | 91 | `result-track:84c2511a2b6b3bb4ac9a42fa4aaf18e55d18793a9108fb4517089312be49ace1` |
| 6 | `theorem` | [imaginary_interval_of_location](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ConcreteNewtonCriticalLine.lean/declarations/imaginary-interval-of-location.md) | 100 | `result-track:f516ffa318ddd3fe3acf0d1b5ef2f1817f6bc21fc0322f680cfb8b9f88361804` |
| 7 | `theorem` | [local_zero_with_exact_geometry_of_source_acceptance](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ConcreteNewtonCriticalLine.lean/declarations/local-zero-with-exact-geometry-of-source-acceptance.md) | 116 | `result-track:9c1dedb1b5c06be9fc0a403d64c4e02e3eae1dd9ba1afec6418bcafaf292746d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e1d9d0ad7469be3f513d039a0b7852d2c23fe095d109acf9e2cc440be267d91 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonCriticalLine.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/ConcreteNewtonCriticalLine.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
