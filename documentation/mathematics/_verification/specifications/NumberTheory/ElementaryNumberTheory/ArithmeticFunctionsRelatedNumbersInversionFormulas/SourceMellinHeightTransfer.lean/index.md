# Verification target: Source Mellin Height Transfer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f287211c3a4ae798dd4ddd92b13c71e6ba07e98a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMellinHeightTransfer/Variant242eed3bc38a10ce9c6b8262ef1e17034aa4c549f471d45bca58d1be96e0d174.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMellinHeightTransfer.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMellinHeightTransfer.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f287211c3a4ae798dd4ddd92b13c71e6ba07e98a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMellinHeightTransfer/Variant242eed3bc38a10ce9c6b8262ef1e17034aa4c549f471d45bca58d1be96e0d174.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMellinHeightTransfer/Variant242eed3bc38a10ce9c6b8262ef1e17034aa4c549f471d45bca58d1be96e0d174.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rightLineMajorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMellinHeightTransfer.lean/declarations/rightlinemajorant.md) | 20 | `declaration-track:cd70141cb4765472c561d6c58b2a59d498c9dea7dc9be6311b1439bd261eaea2` |
| 2 | `def` | [sourceNormalizationFloor](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMellinHeightTransfer.lean/declarations/sourcenormalizationfloor.md) | 24 | `declaration-track:feb7d38a1d7a496c168ec0f1cf2402f131f3fda4b83448290d4cce2159ace3c3` |
| 3 | `def` | [rightLineTailConstant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMellinHeightTransfer.lean/declarations/rightlinetailconstant.md) | 27 | `declaration-track:a27f67294ad57cb0a090a8ac594d60283677bbcb9205d9b8eecd502811fd5674` |
| 4 | `def` | [movingHeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMellinHeightTransfer.lean/declarations/movingheight.md) | 32 | `declaration-track:0ac1c57171c010fdeb2f53e703e89f052f22b078a3506bfa39c804bc1cf5e382` |
| 5 | `theorem` | [movingHeight_ge_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMellinHeightTransfer.lean/declarations/movingheight-ge-one.md) | 35 | `result-track:0543abacbcbe3ef665e48b8ffd02ae5c4fa664193d9bd6db8e81d236cc5cf576` |
| 6 | `theorem` | [movingHeight_tail_factor_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMellinHeightTransfer.lean/declarations/movingheight-tail-factor-eq.md) | 43 | `result-track:6997e87c0fcf63ef19c364ca43537e32af25ba3437ea16405d006bfec4710ad8` |
| 7 | `theorem` | [tail_at_movingHeight_of_rightLine_contract](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMellinHeightTransfer.lean/declarations/tail-at-movingheight-of-rightline-contract.md) | 55 | `result-track:b0a36d5dacfef5ea832f43529fb15f0af2bc06ed1ca0d0689d6688ef21d6001e` |
| 8 | `theorem` | [full_readout_upper_of_head_and_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMellinHeightTransfer.lean/declarations/full-readout-upper-of-head-and-tail.md) | 67 | `result-track:04ff3b8763e95a7e1b6d0aa5f9be409cb5c1ef355c1c2144a1d4ba8a42824f1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f51f0e59cd2b72ff830b327521e0349239c580c40cb3c5ce1c4ae666052f3ceb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMellinHeightTransfer/Variant242eed3bc38a10ce9c6b8262ef1e17034aa4c549f471d45bca58d1be96e0d174.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMellinHeightTransfer/Variant242eed3bc38a10ce9c6b8262ef1e17034aa4c549f471d45bca58d1be96e0d174.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
