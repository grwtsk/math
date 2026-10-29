# Verification target: Mangoldt Reflection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d916341e5b4a0cfbf75ae1de1064cdfd06d4a97",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MangoldtReflection/Variant9b807719963d004cfbd34ec8c0a52a9d53fa56a962bec114cd9a394589896110.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtReflection.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtReflection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d916341e5b4a0cfbf75ae1de1064cdfd06d4a97`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MangoldtReflection/Variant9b807719963d004cfbd34ec8c0a52a9d53fa56a962bec114cd9a394589896110.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MangoldtReflection/Variant9b807719963d004cfbd34ec8c0a52a9d53fa56a962bec114cd9a394589896110.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.UpperObservation` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSign` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mangoldtObservation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtReflection.lean/declarations/mangoldtobservation.md) | 15 | `declaration-track:bf013afbdecf31f0aff460f06a0b49a99725e2d6488270e5a25a5da1e06bf1b0` |
| 2 | `theorem` | [mangoldtObservation_continuous](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtReflection.lean/declarations/mangoldtobservation-continuous.md) | 20 | `result-track:5cd650b64fff2a31df0234081d6bcf2d0f6a0fc968d28cc42cc777c79f5c109d` |
| 3 | `theorem` | [mangoldtObservation_hasCompactSupport](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtReflection.lean/declarations/mangoldtobservation-hascompactsupport.md) | 28 | `result-track:282b180c700375960bb56b69af1c22e4387909edb7e00c8cd0ece94196015c84` |
| 4 | `theorem` | [mangoldtObservation_square_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtReflection.lean/declarations/mangoldtobservation-square-integrable.md) | 44 | `result-track:fe7b7d7c3000937fdd570540e945b0e0e78ca5cff8584c1ebffab34774d3a371` |
| 5 | `theorem` | [mangoldtObservation_reflection_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtReflection.lean/declarations/mangoldtobservation-reflection-integrable.md) | 53 | `result-track:cd1916c6be6e98643044443ddc9614c547cb0934db3e0085705c5ab0c3adf77a` |
| 6 | `theorem` | [mangoldtObservation_reflection_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtReflection.lean/declarations/mangoldtobservation-reflection-eq.md) | 62 | `result-track:193010ceb14021d3a5b31c67417759b6db02dddf614ced8e24665aecdb5851db` |
| 7 | `theorem` | [reflection_eq_even_square_sub_odd_square](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtReflection.lean/declarations/reflection-eq-even-square-sub-odd-square.md) | 100 | `result-track:b141048d4f68cd020b2af42a112aa49cac897d6bc9fec966ce0e8ab80d3c609b` |
| 8 | `theorem` | [actual_shifted_reflection_negative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtReflection.lean/declarations/actual-shifted-reflection-negative.md) | 125 | `result-track:d9a34d7414de4755d1f38279c6040656b433edcfcd0fae0fb7c81fd00bd72549` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=91bc5f1c0716a0a14d95ec5432b86e004339731d88b1410668700842f7abc809 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/MangoldtReflection/Variant9b807719963d004cfbd34ec8c0a52a9d53fa56a962bec114cd9a394589896110.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/MangoldtReflection/Variant9b807719963d004cfbd34ec8c0a52a9d53fa56a962bec114cd9a394589896110.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
