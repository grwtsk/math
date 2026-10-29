# Verification target: Half Cutoff Tail Statements Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edb11cfd0c25c299e2dbd035471798fa5982c2bd",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HalfCutoffTailStatements/Variant2b1a3eaf7d6db5c794f875e3f724361946f3bea898ba37ed56619bf4288b453b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalfCutoffTailStatementsNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalfCutoffTailStatementsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edb11cfd0c25c299e2dbd035471798fa5982c2bd`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HalfCutoffTailStatements/Variant2b1a3eaf7d6db5c794f875e3f724361946f3bea898ba37ed56619bf4288b453b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HalfCutoffTailStatements/Variant2b1a3eaf7d6db5c794f875e3f724361946f3bea898ba37ed56619bf4288b453b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelEstimate` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [reciprocal_half_cutoff_tail_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalfCutoffTailStatementsNamespaced.lean/declarations/reciprocal-half-cutoff-tail-le.md) | 20 | `result-track:63de6a5b02ec51cdea054d82b7f52751c4295f428baf48ac56b21c8d91b4ec89` |
| 2 | `theorem` | [sqrt_square_scale](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalfCutoffTailStatementsNamespaced.lean/declarations/sqrt-square-scale.md) | 37 | `result-track:285c51e4baca255a5747d5c3d0e5bffecb74527167879e5a3ae42ab3190e14c5` |
| 3 | `theorem` | [thetaRemainder_half_cutoff_tail_abs_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalfCutoffTailStatementsNamespaced.lean/declarations/thetaremainder-half-cutoff-tail-abs-le.md) | 42 | `result-track:50983e782764f19548b350a9ab49a413483161805c9070e4e6b7aa8d83dee9db` |
| 4 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalfCutoffTailStatementsNamespaced.lean/declarations/example-source-edition-3.md) | 75 | `declaration-track:984b5922ebf4fdb2a6657e161c9ef448cca9ea76e87533c11e5c62524a27ebc4` |
| 5 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalfCutoffTailStatementsNamespaced.lean/declarations/example-source-edition-2.md) | 79 | `declaration-track:44d41201067c76a30c7356b86029fa370ae043194bc86b1afa30e5e01dd3c768` |
| 6 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalfCutoffTailStatementsNamespaced.lean/declarations/example.md) | 83 | `declaration-track:174fc9b982eb53895ef164fd8a93827015146c3a264a1fc9a044b5e7ccd01f1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3b3c293f08f0c455a739feb6098811c9ad3b29df4fcb89841cdaacac5814a90c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HalfCutoffTailStatements/Variant2b1a3eaf7d6db5c794f875e3f724361946f3bea898ba37ed56619bf4288b453b.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HalfCutoffTailStatements/Variant2b1a3eaf7d6db5c794f875e3f724361946f3bea898ba37ed56619bf4288b453b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
