# Verification target: Extend Has Fderiv At Boundary Of Tendsto Fderiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74f1c6202d5f2b334f20b9e6503dd77c1fdef793",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variant1d636f7faa13d00ed33626ddef4c34d178f3b03f07e6a4d152816cad2f8e6bcc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ExtendHasFderivAtBoundaryOfTendstoFderiv.lean/index.md) · [Full source](../../../../RealFunctions/ExtendHasFderivAtBoundaryOfTendstoFderiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74f1c6202d5f2b334f20b9e6503dd77c1fdef793`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variant1d636f7faa13d00ed33626ddef4c34d178f3b03f07e6a4d152816cad2f8e6bcc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variant1d636f7faa13d00ed33626ddef4c34d178f3b03f07e6a4d152816cad2f8e6bcc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.MeanValue` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [has_fderiv_at_boundary_of_tendsto_fderiv](../../../../RealFunctions/ExtendHasFderivAtBoundaryOfTendstoFderiv.lean/declarations/has-fderiv-at-boundary-of-tendsto-fderiv.md) | 37 | `result-track:4e73424885179bc087aa488e721cf3bb719a33ebfa07fa26e669d8917b4ae757` |
| 2 | `theorem` | [has_deriv_at_interval_left_endpoint_of_tendsto_deriv](../../../../RealFunctions/ExtendHasFderivAtBoundaryOfTendstoFderiv.lean/declarations/has-deriv-at-interval-left-endpoint-of-tendsto-deriv.md) | 111 | `result-track:d953bd6355932329a680b11e6ba7954fed9222f8659c1afa88c393a3a645faa5` |
| 3 | `theorem` | [has_deriv_at_interval_right_endpoint_of_tendsto_deriv](../../../../RealFunctions/ExtendHasFderivAtBoundaryOfTendstoFderiv.lean/declarations/has-deriv-at-interval-right-endpoint-of-tendsto-deriv.md) | 145 | `result-track:ccf20767961db3edbceeeb9a311f6af35a52b80450b6aaf8cf13a5e3c253e26e` |
| 4 | `theorem` | [hasDerivAt_of_hasDerivAt_of_ne](../../../../RealFunctions/ExtendHasFderivAtBoundaryOfTendstoFderiv.lean/declarations/hasderivat-of-hasderivat-of-ne.md) | 180 | `result-track:0f8f5cb3d14c6fcffb96de334905051a618e314ced906f3b0692fcd3814caf9a` |
| 5 | `theorem` | [hasDerivAt_of_hasDerivAt_of_ne'](../../../../RealFunctions/ExtendHasFderivAtBoundaryOfTendstoFderiv.lean/declarations/hasderivat-of-hasderivat-of-ne-source-edition-2.md) | 214 | `result-track:36bdaea2bb44c2a4ecca119c53db0ae8263e90ed03fb5bae51df21abc09ecf65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c1081fc97d5d2995c667685d849f9bb64143f3fe8b6605d982d5de1a416f3b80 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variant1d636f7faa13d00ed33626ddef4c34d178f3b03f07e6a4d152816cad2f8e6bcc.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variant1d636f7faa13d00ed33626ddef4c34d178f3b03f07e6a4d152816cad2f8e6bcc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
