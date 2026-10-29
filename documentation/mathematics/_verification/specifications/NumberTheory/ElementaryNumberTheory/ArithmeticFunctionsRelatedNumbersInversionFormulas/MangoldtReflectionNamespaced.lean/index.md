# Verification target: Mangoldt Reflection Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a0c417c76931c62c4b83801784017f4eb924395",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MangoldtReflection/Variantc85046af638cafa906145576516f45140571d960d9c68d1a366031533ffecd45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtReflectionNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtReflectionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a0c417c76931c62c4b83801784017f4eb924395`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MangoldtReflection/Variantc85046af638cafa906145576516f45140571d960d9c68d1a366031533ffecd45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MangoldtReflection/Variantc85046af638cafa906145576516f45140571d960d9c68d1a366031533ffecd45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.UpperObservation` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSign` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mangoldtObservation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtReflectionNamespaced.lean/declarations/mangoldtobservation.md) | 23 | `declaration-track:baf5903fc5f6729c0f824403e05d6014a6516de2dbe96dcc0448bcce3814b903` |
| 2 | `theorem` | [mangoldtObservation_continuous](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtReflectionNamespaced.lean/declarations/mangoldtobservation-continuous.md) | 28 | `result-track:ea57c556bceb427cfa8299ce9f8e9a2b1e1c3b99aead9d1b0c3b3db31e3b21e5` |
| 3 | `theorem` | [mangoldtObservation_hasCompactSupport](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtReflectionNamespaced.lean/declarations/mangoldtobservation-hascompactsupport.md) | 36 | `result-track:957780161594d9793827b7c7206f15f54e42c1dfd9ace64bf5af06c210d3b3a9` |
| 4 | `theorem` | [mangoldtObservation_square_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtReflectionNamespaced.lean/declarations/mangoldtobservation-square-integrable.md) | 52 | `result-track:55b1ca9d584a322ebd7c378b50b4e3fc106bd2703451d45f45ba2149594a3114` |
| 5 | `theorem` | [mangoldtObservation_reflection_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtReflectionNamespaced.lean/declarations/mangoldtobservation-reflection-integrable.md) | 61 | `result-track:53536b050112e0e9029b734a7fc618aac09c607d7b2f0d987355e16ae07a760e` |
| 6 | `theorem` | [mangoldtObservation_reflection_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtReflectionNamespaced.lean/declarations/mangoldtobservation-reflection-eq.md) | 70 | `result-track:8e1a005b7f7842b53ba2fa102d3ffce820b5b6b01b6515f923c9e4804862ebf6` |
| 7 | `theorem` | [reflection_eq_even_square_sub_odd_square](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtReflectionNamespaced.lean/declarations/reflection-eq-even-square-sub-odd-square.md) | 108 | `result-track:bd1a64bdbc4b5687102ddfae26aebb59bf62981d20720e44c5d79dfd4648d326` |
| 8 | `theorem` | [actual_shifted_reflection_negative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtReflectionNamespaced.lean/declarations/actual-shifted-reflection-negative.md) | 133 | `result-track:a54da3e2e7a716765c5b8010db9003c6ccbecefc3c6a3ffea9653b72d8a123d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=312139beedec9ecb2b18f0d4e36e992fbca7ed36ffdf170927401395ce163ee0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/MangoldtReflection/Variantc85046af638cafa906145576516f45140571d960d9c68d1a366031533ffecd45.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/MangoldtReflection/Variantc85046af638cafa906145576516f45140571d960d9c68d1a366031533ffecd45.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
