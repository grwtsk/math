# Verification target: Estimate Tail Reduction Results

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eaa39b72d86ae2fedfe0d5ccf33f28a3804e5ac8",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variant8cf41c0854d80589ec4efb4964df324ce599113236b63a0a940bf42b8870c21b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionResults.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionResults.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eaa39b72d86ae2fedfe0d5ccf33f28a3804e5ac8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variant8cf41c0854d80589ec4efb4964df324ce599113236b63a0a940bf42b8870c21b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variant8cf41c0854d80589ec4efb4964df324ce599113236b63a0a940bf42b8870c21b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateReduction` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeIndices](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionResults.lean/declarations/primeindices.md) | 28 | `declaration-track:1df8d8a744249c7e29920f72bc71797a34b75cbd56b06a278a85d3aa57fc9c64` |
| 2 | `theorem` | [mem_primeIndices_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionResults.lean/declarations/mem-primeindices-iff.md) | 32 | `result-track:16f3734a147cc66011af2990def50fdc9ca279780753e378fc0edc5bf1534741` |
| 3 | `theorem` | [primeIndices_mono](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionResults.lean/declarations/primeindices-mono.md) | 43 | `result-track:acd3a009042d28ebc1d3d371d724338536f878b134c017699bb6704d169a713e` |
| 4 | `theorem` | [prime_contribution_le_finite_budget](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionResults.lean/declarations/prime-contribution-le-finite-budget.md) | 53 | `result-track:9594d9dbc945b8bf90dfd5bd15514dac85d75f83b408395ae819c3f7af88a706` |
| 5 | `theorem` | [bounded_radius_lower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionResults.lean/declarations/bounded-radius-lower.md) | 95 | `result-track:fbc7c0e0122eff54ad74935723ca2ba82fbc675e7726d3f293e50d257f5cea9b` |
| 6 | `def` | [QuadraticTailLowerBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionResults.lean/declarations/quadratictaillowerbound.md) | 115 | `declaration-track:a52ec3e23477fd4cfb446da17dc7efe4e6f1f97d90f2b9777108845761effb0e` |
| 7 | `def` | [SignedPairingTailLowerBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionResults.lean/declarations/signedpairingtaillowerbound.md) | 122 | `declaration-track:5488f97410f2d30ded63f8c144f127f53159937daf9a82caf3ca30a02dd7471f` |
| 8 | `theorem` | [quadratic_tail_of_signed_pairing_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionResults.lean/declarations/quadratic-tail-of-signed-pairing-tail.md) | 130 | `result-track:d523e3bf88d246f98d2df8bea85eb25bac478ca709ef793d7ffbba55f59a54f6` |
| 9 | `theorem` | [estimate_of_quadratic_tail_lower_bound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionResults.lean/declarations/estimate-of-quadratic-tail-lower-bound.md) | 146 | `result-track:8307bd7c637145f1267d9964ae8b8576615df6dba9b2ad09bdbb7303f88fcaac` |
| 10 | `theorem` | [estimate_of_signed_pairing_tail_lower_bound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionResults.lean/declarations/estimate-of-signed-pairing-tail-lower-bound.md) | 160 | `result-track:e8255d98ee0f4035f5d038835cbc1ef0cb5ab8159d56d658d5c2a7138d4348e2` |
| 11 | `theorem` | [estimate_obligation_iff_quadratic_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionResults.lean/declarations/estimate-obligation-iff-quadratic-tail.md) | 166 | `result-track:eb89c978209c67d59f70c2bc23ca110f33d62e1c351b5f919cd41064a96b499f` |
| 12 | `theorem` | [signed_pairing_uniform_implies_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionResults.lean/declarations/signed-pairing-uniform-implies-tail.md) | 173 | `result-track:a20b12365cca3340c6930a0b75badaa84b03af414ac33b65cb511bbce6b82954` |
| 13 | `def` | [TailReductionCheckpoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionResults.lean/declarations/tailreductioncheckpoint.md) | 179 | `declaration-track:5cc534e7aa7db5e606831845b026da907a44762ed5503f5e35685a40e4069d7b` |
| 14 | `theorem` | [tail_reduction_checkpoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateTailReductionResults.lean/declarations/tail-reduction-checkpoint.md) | 189 | `result-track:fe4e2bfe5a6cbc305d7836801aee0a928d5ad580fb01b35bb64e8db82a19213a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7f28c8763cbaf680b69217680780ce96a5380add9f138242d5ba5d95d805630 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variant8cf41c0854d80589ec4efb4964df324ce599113236b63a0a940bf42b8870c21b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variant8cf41c0854d80589ec4efb4964df324ce599113236b63a0a940bf42b8870c21b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
