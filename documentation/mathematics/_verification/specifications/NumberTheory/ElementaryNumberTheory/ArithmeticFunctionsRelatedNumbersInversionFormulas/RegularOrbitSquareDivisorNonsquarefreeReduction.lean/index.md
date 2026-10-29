# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitSquareDivisorNonsquarefreeReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4dd8e0cab9ae4cdf73829195340781881cab63c8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitSquareDivisorNonsquarefreeReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitSquareDivisorNonsquarefreeReduction.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitSquareDivisorNonsquarefreeReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4dd8e0cab9ae4cdf73829195340781881cab63c8`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitSquareDivisorNonsquarefreeReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitSquareDivisorNonsquarefreeReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitMobiusSquareIndicatorBinding`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitMobiusSquareIndicatorBinding.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [squareDivisor_eq_one_of_squarefree](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitSquareDivisorNonsquarefreeReduction.lean/declarations/squaredivisor-eq-one-of-squarefree.md) | 17 | `result-track:1e56a48e1b8369426073d4f80c82374ad3e0cd2689dc73c9b7da3371156c9506` |
| 2 | `theorem` | [squareDivisorSet_eq_singleton_one_of_squarefree](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitSquareDivisorNonsquarefreeReduction.lean/declarations/squaredivisorset-eq-singleton-one-of-squarefree.md) | 26 | `result-track:9038683821e199a070491ce7833f85b89d849de29e6702d65970aa7ba714d3d5` |
| 3 | `theorem` | [squareDivisorMobiusSum_eq_one_of_squarefree](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitSquareDivisorNonsquarefreeReduction.lean/declarations/squaredivisormobiussum-eq-one-of-squarefree.md) | 43 | `result-track:e3c0dc3da39c380eda4e3f855a43d13146a3a2815b1c0600fcd534edd98267fc` |
| 4 | `def` | [NonsquarefreeSquareDivisorMobiusCancellation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitSquareDivisorNonsquarefreeReduction.lean/declarations/nonsquarefreesquaredivisormobiuscancellation.md) | 53 | `declaration-track:8f27ecfdf8b8c856aea77d37a7a7634a23871f5cf5cca4a89d79afc7e0ceeeb3` |
| 5 | `theorem` | [squareDivisorIndicator_of_nonsquarefreeCancellation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitSquareDivisorNonsquarefreeReduction.lean/declarations/squaredivisorindicator-of-nonsquarefreecancellation.md) | 60 | `result-track:52c67c399c5928d7073f41196765c4a72f924afcda8a4e1c98eb41693c46d2e6` |
| 6 | `theorem` | [nonsquarefreeCancellation_of_squareDivisorIndicator](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitSquareDivisorNonsquarefreeReduction.lean/declarations/nonsquarefreecancellation-of-squaredivisorindicator.md) | 72 | `result-track:73d9c64a890cf09e22d2e063b0654532582189110e87bc5ee6b4d86d9c509953` |
| 7 | `theorem` | [squareDivisorIndicator_iff_nonsquarefreeCancellation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitSquareDivisorNonsquarefreeReduction.lean/declarations/squaredivisorindicator-iff-nonsquarefreecancellation.md) | 78 | `result-track:3ca2143a15c1602f14610a0019b7dfc3fe9010ee0c9b2ad0d2357c60b07cbf51` |
| 8 | `structure` | [SquareDivisorNonsquarefreeReductionSourceData](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitSquareDivisorNonsquarefreeReduction.lean/declarations/squaredivisornonsquarefreereductionsourcedata.md) | 85 | `declaration-track:0eb06f9196025dda122237c727fa0f116b120e1dc72efa579b12a06b53619a37` |
| 9 | `def` | [SquareDivisorNonsquarefreeReductionSource](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitSquareDivisorNonsquarefreeReduction.lean/declarations/squaredivisornonsquarefreereductionsource.md) | 95 | `declaration-track:f878a8c664aec7213d2cde10a1bdcbcfe8bf8b0f45383e373153d13f9ccb2ec1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=064346ee64afca36de4aeb87215ea13dfe20602f2d503e92956b3ed3c1d3ab28 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/RegularOrbitSquareDivisorNonsquarefreeReduction.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/RegularOrbitSquareDivisorNonsquarefreeReduction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
