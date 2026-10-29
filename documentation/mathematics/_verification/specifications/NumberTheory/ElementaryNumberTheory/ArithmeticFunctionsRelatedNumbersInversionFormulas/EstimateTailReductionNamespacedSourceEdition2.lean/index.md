# Verification target: Estimate Tail Reduction Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "637d21ca985d650a4a10da5c5b6edf49ee737048",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variant283c4f7f5bd70e097c5aee1b75c1f1db8944f994a9a9d16dbc8474516db73575.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `637d21ca985d650a4a10da5c5b6edf49ee737048`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variant283c4f7f5bd70e097c5aee1b75c1f1db8944f994a9a9d16dbc8474516db73575.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variant283c4f7f5bd70e097c5aee1b75c1f1db8944f994a9a9d16dbc8474516db73575.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateReduction` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeIndices](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition2.lean/declarations/primeindices.md) | 39 | `declaration-track:377c52a1d027970a7c17e165e501a36818f67790daf714bad080d2218d52c16d` |
| 2 | `theorem` | [mem_primeIndices_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition2.lean/declarations/mem-primeindices-iff.md) | 43 | `result-track:e76484fbad7cd61862814035b82c3431ddd0a47cc5283e989df93c827a0182f7` |
| 3 | `theorem` | [primeIndices_mono](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition2.lean/declarations/primeindices-mono.md) | 54 | `result-track:6cb0df0880d781e8bd6d0cd5296d2b9a95becc4e2075beee3974c8e9611a809a` |
| 4 | `theorem` | [prime_contribution_le_finite_budget](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition2.lean/declarations/prime-contribution-le-finite-budget.md) | 64 | `result-track:7ddefcabf0af35b800fc9cc1cd0d19c74f70571da99e4bb708b7bdc19ee06fcd` |
| 5 | `theorem` | [bounded_radius_lower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition2.lean/declarations/bounded-radius-lower.md) | 106 | `result-track:6a5f8aa846433dad4225845b4eb33232761134bab63d3606cea1355ca6a07ee2` |
| 6 | `def` | [QuadraticTailLowerBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition2.lean/declarations/quadratictaillowerbound.md) | 128 | `declaration-track:cfd450dd655d7a984bd9130fa52960ff55d0b34a55f4d9f0d504701e8f5bebf3` |
| 7 | `def` | [SignedPairingTailLowerBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition2.lean/declarations/signedpairingtaillowerbound.md) | 137 | `declaration-track:156f866e214d9d068fa2794a7c10d8538c74c30ce0bb2ad26b656b58e57dcef2` |
| 8 | `theorem` | [quadratic_tail_of_signed_pairing_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition2.lean/declarations/quadratic-tail-of-signed-pairing-tail.md) | 145 | `result-track:65585dc8a8face2b782e0fe18127236a944ad51099f94a2052d657cffd5bdca0` |
| 9 | `theorem` | [estimate_of_quadratic_tail_lower_bound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition2.lean/declarations/estimate-of-quadratic-tail-lower-bound.md) | 161 | `result-track:31b76101ad9c1cfd3de0d50397616aedee7173d7489c478f71a886e4c69d0232` |
| 10 | `theorem` | [estimate_of_signed_pairing_tail_lower_bound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition2.lean/declarations/estimate-of-signed-pairing-tail-lower-bound.md) | 175 | `result-track:a3523cbcea60acfc7189280a2d85b8ec817ac0a5e26d8db3eef8dbd322318c3f` |
| 11 | `theorem` | [estimate_obligation_iff_quadratic_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition2.lean/declarations/estimate-obligation-iff-quadratic-tail.md) | 181 | `result-track:1150f4806ef386f13fe74c10e12b887a7c85feb0861ff3f8df28b265b1c52ffa` |
| 12 | `theorem` | [signed_pairing_uniform_implies_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition2.lean/declarations/signed-pairing-uniform-implies-tail.md) | 188 | `result-track:00b729bf3076a1b82ddbc25f107a71c3a205e1cd506834577758aed3ac3485ee` |
| 13 | `def` | [TailReductionCheckpoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition2.lean/declarations/tailreductioncheckpoint.md) | 196 | `declaration-track:74f6b1e228014833210724ead4d62ed1d9039ebf38b0651abbab988c6d9c9cf2` |
| 14 | `theorem` | [tail_reduction_checkpoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition2.lean/declarations/tail-reduction-checkpoint.md) | 206 | `result-track:14facf18ba5238a655ffd2a1f815109d990ecf75df83f6230ac10d4892d96b5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=af92b1854f9db116bd124af0e14b4fbfc9934f17b3a564abb379a95875e7dcd4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variant283c4f7f5bd70e097c5aee1b75c1f1db8944f994a9a9d16dbc8474516db73575.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variant283c4f7f5bd70e097c5aee1b75c1f1db8944f994a9a9d16dbc8474516db73575.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
