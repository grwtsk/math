# Verification target: Estimate Tail Reduction Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89a5ecfd186f5bdf5b34b6cbe0b602d0c88acacc",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/98797a981684141184dfe7b9787882db034f65b2b87c9b5201a4087bdb38bc55EstimateTailRedu/Variant5434334bc8c2b58670461c594158825f1f0ca6272be00541efd247e91e6bbc3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89a5ecfd186f5bdf5b34b6cbe0b602d0c88acacc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/98797a981684141184dfe7b9787882db034f65b2b87c9b5201a4087bdb38bc55EstimateTailRedu/Variant5434334bc8c2b58670461c594158825f1f0ca6272be00541efd247e91e6bbc3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/98797a981684141184dfe7b9787882db034f65b2b87c9b5201a4087bdb38bc55EstimateTailRedu/Variant5434334bc8c2b58670461c594158825f1f0ca6272be00541efd247e91e6bbc3e.lean.json)

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
| 1 | `def` | [primeIndices](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition1.lean/declarations/primeindices.md) | 37 | `declaration-track:17208be0a7c8ed676955314c85546688929ee7ccd75479dbc0adf5b6baaa24ec` |
| 2 | `theorem` | [mem_primeIndices_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition1.lean/declarations/mem-primeindices-iff.md) | 41 | `result-track:7200522cfecd5f61061f5cd73a2bc8ce390b3ed6cbb724a0005a8ba8f2a198d8` |
| 3 | `theorem` | [primeIndices_mono](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition1.lean/declarations/primeindices-mono.md) | 52 | `result-track:d63835148f4dc82706e036a51f09d5fc094c8f8ef223bb147beca9500e0e68c0` |
| 4 | `theorem` | [prime_contribution_le_finite_budget](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition1.lean/declarations/prime-contribution-le-finite-budget.md) | 62 | `result-track:fb05ab8782a53bd41fc5110805083a301825e42654391ebba0826f50e54ca657` |
| 5 | `theorem` | [bounded_radius_lower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition1.lean/declarations/bounded-radius-lower.md) | 104 | `result-track:de97303c4919f669efb575b2612263904b52417a0aa0b4abad1d356707c891db` |
| 6 | `def` | [QuadraticTailLowerBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition1.lean/declarations/quadratictaillowerbound.md) | 124 | `declaration-track:1c9732e787475a74d0b2d519ade47b2194bac9ab1bef3ed31614042bc3d14150` |
| 7 | `def` | [SignedPairingTailLowerBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition1.lean/declarations/signedpairingtaillowerbound.md) | 131 | `declaration-track:3ae6c829003ca235d00c3e0ca8b97a230ccc785038f76e6ee548fa0b2b3dae94` |
| 8 | `theorem` | [quadratic_tail_of_signed_pairing_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition1.lean/declarations/quadratic-tail-of-signed-pairing-tail.md) | 139 | `result-track:358c62c269f45ee82be4037a0813e8a624831dd967e432ac18eaee1d196d4d08` |
| 9 | `theorem` | [estimate_of_quadratic_tail_lower_bound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition1.lean/declarations/estimate-of-quadratic-tail-lower-bound.md) | 155 | `result-track:7444dbb1b2b74b643b2445a3d8ddfad14d99083bdb00b88ae275656f2ffffb45` |
| 10 | `theorem` | [estimate_of_signed_pairing_tail_lower_bound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition1.lean/declarations/estimate-of-signed-pairing-tail-lower-bound.md) | 169 | `result-track:de67cf0dd3238cd7f36811dfad1882108157297a0c3705a7be8cef7d792c5218` |
| 11 | `theorem` | [estimate_obligation_iff_quadratic_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition1.lean/declarations/estimate-obligation-iff-quadratic-tail.md) | 175 | `result-track:219af2cc733485dfc7dcb968001ab6f64df9a56c7abdb0279242476d081fc729` |
| 12 | `theorem` | [signed_pairing_uniform_implies_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition1.lean/declarations/signed-pairing-uniform-implies-tail.md) | 182 | `result-track:75ea358e312396a8b107289e684b168f9de76d467d71dbe79a4f0f1db1e0887a` |
| 13 | `def` | [TailReductionCheckpoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition1.lean/declarations/tailreductioncheckpoint.md) | 188 | `declaration-track:c44c6328c40d974bce7f18191316062a2a0a58afcc26294a01da52ce9932c8aa` |
| 14 | `theorem` | [tail_reduction_checkpoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionNamespacedSourceEdition1.lean/declarations/tail-reduction-checkpoint.md) | 198 | `result-track:cb7c6ce223e2b5f0ba7093cc8d6860e0ec9e36963f5a01d64cd352728122708c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78fda47183a36ae876ef3cdfb3db03372b5d547d687b3dfc643c7ff0e85cb3ee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/98797a981684141184dfe7b9787882db034f65b2b87c9b5201a4087bdb38bc55EstimateTailRedu/Variant5434334bc8c2b58670461c594158825f1f0ca6272be00541efd247e91e6bbc3e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/98797a981684141184dfe7b9787882db034f65b2b87c9b5201a4087bdb38bc55EstimateTailRedu/Variant5434334bc8c2b58670461c594158825f1f0ca6272be00541efd247e91e6bbc3e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
