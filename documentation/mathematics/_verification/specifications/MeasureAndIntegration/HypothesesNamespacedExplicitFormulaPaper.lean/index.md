# Verification target: Hypotheses Namespaced Explicit Formula Paper

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d81d0ae15629e3345e6a1d9235fc21ac491425a9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant1e604b4f29fb39971a7d8f28e4371bc6950752e37174d261527c19336d70ff2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/HypothesesNamespacedExplicitFormulaPaper.lean/index.md) · [Full source](../../../../MeasureAndIntegration/HypothesesNamespacedExplicitFormulaPaper.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d81d0ae15629e3345e6a1d9235fc21ac491425a9`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant1e604b4f29fb39971a7d8f28e4371bc6950752e37174d261527c19336d70ff2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant1e604b4f29fb39971a7d8f28e4371bc6950752e37174d261527c19336d70ff2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Defs` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Defs` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 29; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ExplicitFormulaPaper](../../../../MeasureAndIntegration/HypothesesNamespacedExplicitFormulaPaper.lean/declarations/explicitformulapaper.md) | 56 | `declaration-track:fb6c4998163f4f1aaa3c0a0b5aae6d060be8d12eeb9203019dc1243382712e35` |
| 2 | `structure` | [RiemannVonMangoldt](../../../../MeasureAndIntegration/HypothesesNamespacedExplicitFormulaPaper.lean/declarations/riemannvonmangoldt.md) | 75 | `declaration-track:90a084935c37b83efe1e0e270e42fed4b2a1f17ce66e3eb359fb0e582345cd60` |
| 3 | `structure` | [ChebyshevMertens](../../../../MeasureAndIntegration/HypothesesNamespacedExplicitFormulaPaper.lean/declarations/chebyshevmertens.md) | 91 | `declaration-track:ec7d6b0789a29e4b312863337091c15afa46744e09decde64af32cc2e11acaf0` |
| 4 | `def` | [MVHilbert](../../../../MeasureAndIntegration/HypothesesNamespacedExplicitFormulaPaper.lean/declarations/mvhilbert.md) | 115 | `declaration-track:dd3406f48914efc8151f845cf43bdadec8a03439e427761c72f2f35db99b0367` |
| 5 | `structure` | [GammaFacts](../../../../MeasureAndIntegration/HypothesesNamespacedExplicitFormulaPaper.lean/declarations/gammafacts.md) | 133 | `declaration-track:01170215e95e64b6217fd848c30d18fead12d47ebabc120fb21795d28800c2ed` |
| 6 | `structure` | [PaperInputs](../../../../MeasureAndIntegration/HypothesesNamespacedExplicitFormulaPaper.lean/declarations/paperinputs.md) | 155 | `declaration-track:ce09b63bcd1ed0447860c7917696a4c9c3a9504d1987775475ed3237729943b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4fc02ee01963a185c4bd1934f51136348430f76bcf719921864c22dad80f8f89 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant1e604b4f29fb39971a7d8f28e4371bc6950752e37174d261527c19336d70ff2c.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant1e604b4f29fb39971a7d8f28e4371bc6950752e37174d261527c19336d70ff2c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
