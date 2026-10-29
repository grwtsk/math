# Verification target: Attempt02 Source Namespaced Finite Half Harmonic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc1d7689c590c61b64d45540835e226bb5d83359",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02Source/Variant2448a7faf483666dd7183fd0bfd6b9980976a9afff5282dc0d8fdbe1f9ab05df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt02SourceNamespacedFiniteHalfHarmonic.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt02SourceNamespacedFiniteHalfHarmonic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc1d7689c590c61b64d45540835e226bb5d83359`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02Source/Variant2448a7faf483666dd7183fd0bfd6b9980976a9afff5282dc0d8fdbe1f9ab05df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02Source/Variant2448a7faf483666dd7183fd0bfd6b9980976a9afff5282dc0d8fdbe1f9ab05df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualAdjointColumnTrace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Misc` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteHalfHarmonic](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt02SourceNamespacedFiniteHalfHarmonic.lean/declarations/finitehalfharmonic.md) | 29 | `declaration-track:7fa7d0979d2e01753c960b74cd086e94965c531bbd2a63023df2a9ffcf0e9d1e` |
| 2 | `def` | [actualCriticalMoebiusHalf](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt02SourceNamespacedFiniteHalfHarmonic.lean/declarations/actualcriticalmoebiushalf.md) | 33 | `declaration-track:d69b2a933a2070c1793c120cd910ae265f47442ecbf2d333a5b6ac0fe6c92e11` |
| 3 | `def` | [closedCenteredHalfInventory](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt02SourceNamespacedFiniteHalfHarmonic.lean/declarations/closedcenteredhalfinventory.md) | 37 | `declaration-track:c2c86c8aaa822c13a05b556005da86006afcfc87c24a85a1da2e7cbfb12790a8` |
| 4 | `def` | [halfMoebius](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt02SourceNamespacedFiniteHalfHarmonic.lean/declarations/halfmoebius.md) | 40 | `declaration-track:e0037a4f777f08c831df0e65726421c0f6e189f95c91c12d5435aa3309a21b3d` |
| 5 | `def` | [halfOne](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt02SourceNamespacedFiniteHalfHarmonic.lean/declarations/halfone.md) | 43 | `declaration-track:46654394666d195f4c6c0da5bd49bec34805c2d2b873f15551dbe87686a305d2` |
| 6 | `theorem` | [halfMoebius_apply](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt02SourceNamespacedFiniteHalfHarmonic.lean/declarations/halfmoebius-apply.md) | 46 | `result-track:51a711e52f7e3bde5fc123724cd6b48f56e2ec16c952497bcbaf778c4e93008a` |
| 7 | `theorem` | [halfOne_apply](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt02SourceNamespacedFiniteHalfHarmonic.lean/declarations/halfone-apply.md) | 49 | `result-track:6e7961beb714dcbb4332eb58325ff522c446d19d1647e4415d29acdc7208d476` |
| 8 | `theorem` | [weighted_short_convolution](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt02SourceNamespacedFiniteHalfHarmonic.lean/declarations/weighted-short-convolution.md) | 51 | `result-track:97f03353ac5dc4e9b1ca04669044eb85dbbbafc4f296343b339306508f7590ed` |
| 9 | `theorem` | [weighted_short_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt02SourceNamespacedFiniteHalfHarmonic.lean/declarations/weighted-short-sum.md) | 71 | `result-track:6023c4d87a9aacd3ae06172658eb6f7e633517914f35a309e66d6f726a87caff` |
| 10 | `theorem` | [closedCenteredHalfInventory_eq_finite_harmonics](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt02SourceNamespacedFiniteHalfHarmonic.lean/declarations/closedcenteredhalfinventory-eq-finite-harmonics.md) | 103 | `result-track:8a9cc90177367a18761b675f83f49cf868ac4b77cac7bae5106dfeb19116789c` |
| 11 | `theorem` | [actualCenteredColumnHalfInventory_eq_finite_harmonics](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt02SourceNamespacedFiniteHalfHarmonic.lean/declarations/actualcenteredcolumnhalfinventory-eq-finite-harmonics.md) | 149 | `result-track:f40b8cec944aec19bbf176170518bec12bfddfedb27f080af92d8516769029df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=572fc66a052bc2cca446cb059c5bfac3dfa4a68375d3b8d39a012d831964bdf6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02Source/Variant2448a7faf483666dd7183fd0bfd6b9980976a9afff5282dc0d8fdbe1f9ab05df.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02Source/Variant2448a7faf483666dd7183fd0bfd6b9980976a9afff5282dc0d8fdbe1f9ab05df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
