# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Traces.Variant5ca171146a0cf326b11a29ea1a6b7e45fcddbd6728a8749a06b45c8e6b402218

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d3a2c253210a2968cfc7f30f11c43f64b70e7f3",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant5ca171146a0cf326b11a29ea1a6b7e45fcddbd6728a8749a06b45c8e6b402218.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant5ca171146a0cf326b11a29ea1a6b7e45fcddbd6728a8749a06b45c8e6b402218.lean/index.md) · [Full source](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant5ca171146a0cf326b11a29ea1a6b7e45fcddbd6728a8749a06b45c8e6b402218.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d3a2c253210a2968cfc7f30f11c43f64b70e7f3`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant5ca171146a0cf326b11a29ea1a6b7e45fcddbd6728a8749a06b45c8e6b402218.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant5ca171146a0cf326b11a29ea1a6b7e45fcddbd6728a8749a06b45c8e6b402218.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PrimeSideB` — import line 15; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideB.Concrete` — import line 16; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideA` — import line 17; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideB.PP` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.Hypotheses` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [concreteData](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant5ca171146a0cf326b11a29ea1a6b7e45fcddbd6728a8749a06b45c8e6b402218.lean/declarations/concretedata--2e4402802a1d32021e09b512.md) | 56 | `declaration-track:2e4402802a1d32021e09b5121aceb72c36f9ae12e6e0edb56248fe11c9803294` |
| 2 | `lemma` | [rvm_evBound](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant5ca171146a0cf326b11a29ea1a6b7e45fcddbd6728a8749a06b45c8e6b402218.lean/declarations/rvm-evbound--96c49979dcbceca2ecbe9242.md) | 75 | `result-track:96c49979dcbceca2ecbe924240906ce5166b9dc14fa4e09a1b60175d649ef0d6` |
| 3 | `theorem` | [concreteFacts](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant5ca171146a0cf326b11a29ea1a6b7e45fcddbd6728a8749a06b45c8e6b402218.lean/declarations/concretefacts--bce50f40bf04a836c24fafff.md) | 104 | `result-track:bce50f40bf04a836c24fafff442080c984eb80f6aada568fb0b0fadc43b6b53c` |
| 4 | `theorem` | [thm_traces_of_localHyps](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant5ca171146a0cf326b11a29ea1a6b7e45fcddbd6728a8749a06b45c8e6b402218.lean/declarations/thm-traces-of-localhyps--329f4a9e6e89e3ab0e941fcd.md) | 209 | `result-track:329f4a9e6e89e3ab0e941fcdc04c156d9550decf728bb84a52637910dec9c8c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d7a8ec1920ce4d9cf2bb9af250bf7e81da2481ba441b52fe542992f865284c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant5ca171146a0cf326b11a29ea1a6b7e45fcddbd6728a8749a06b45c8e6b402218.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant5ca171146a0cf326b11a29ea1a6b7e45fcddbd6728a8749a06b45c8e6b402218.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
