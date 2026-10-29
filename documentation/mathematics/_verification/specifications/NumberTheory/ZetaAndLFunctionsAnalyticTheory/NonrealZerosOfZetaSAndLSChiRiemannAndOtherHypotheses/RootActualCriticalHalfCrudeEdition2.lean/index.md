# Verification target: Root Actual Critical Half Crude Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a960fd791754a653c844e977a01b5bcbcb549f3f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant9046dc451db6e12fe16039d3f1682c958b5ac4257b8c07679544b1d2a9180571.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RootActualCriticalHalfCrudeEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RootActualCriticalHalfCrudeEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a960fd791754a653c844e977a01b5bcbcb549f3f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant9046dc451db6e12fe16039d3f1682c958b5ac4257b8c07679544b1d2a9180571.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant9046dc451db6e12fe16039d3f1682c958b5ac4257b8c07679544b1d2a9180571.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualCenteredHalfZetaReduction` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualCriticalHalfCrudeConstant](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RootActualCriticalHalfCrudeEdition2.lean/declarations/actualcriticalhalfcrudeconstant.md) | 19 | `declaration-track:4142b8929f47c0057d7a56ecc63d8bce4e89272a7109846b91ea19d8a7b94bbf` |
| 2 | `theorem` | [actualCriticalMoebiusHalf_abs_le_harmonic](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RootActualCriticalHalfCrudeEdition2.lean/declarations/actualcriticalmoebiushalf-abs-le-harmonic.md) | 23 | `result-track:58803dab077701ff8154dd0c0321e2a3ed016b6b864b3282c775c27c74643da0` |
| 3 | `theorem` | [half_harmonic_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RootActualCriticalHalfCrudeEdition2.lean/declarations/half-harmonic-nonneg.md) | 33 | `result-track:bfd0bf9f789503f6bc3610625535052bd980526567a79fb194669985902a02fa` |
| 4 | `theorem` | [finiteHalfHarmonic_le_calibrated_sqrt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RootActualCriticalHalfCrudeEdition2.lean/declarations/finitehalfharmonic-le-calibrated-sqrt.md) | 38 | `result-track:d753f4ba50564ba88346a53c0182d24d13e06ef824e1536b1e4ed132d2bcce8d` |
| 5 | `theorem` | [actualCenteredHalfZetaMain_abs_le_crude_sqrt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RootActualCriticalHalfCrudeEdition2.lean/declarations/actualcenteredhalfzetamain-abs-le-crude-sqrt.md) | 51 | `result-track:ad1371c3b9b21dc9cc1b844fc121fd14b68cf2c5a3df610d0ef9bb38af502502` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c2602345e83b80e1e67ece46c8c56136665bd05847b193613e098c6da8dbda8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant9046dc451db6e12fe16039d3f1682c958b5ac4257b8c07679544b1d2a9180571.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant9046dc451db6e12fe16039d3f1682c958b5ac4257b8c07679544b1d2a9180571.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
