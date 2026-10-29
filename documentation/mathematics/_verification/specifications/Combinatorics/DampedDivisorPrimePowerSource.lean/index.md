# Verification target: Damped Divisor Prime Power Source

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05b9cab31238a50991a2c328d803f68aed3106ee",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DampedDivisorPrimePowerSource/Variantb36d77d7949ebd2bfc5d61170d9885c5cc2fec90c299ada4a397539e31254204.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/DampedDivisorPrimePowerSource.lean/index.md) · [Full source](../../../../Combinatorics/DampedDivisorPrimePowerSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05b9cab31238a50991a2c328d803f68aed3106ee`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DampedDivisorPrimePowerSource/Variantb36d77d7949ebd2bfc5d61170d9885c5cc2fec90c299ada4a397539e31254204.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DampedDivisorPrimePowerSource/Variantb36d77d7949ebd2bfc5d61170d9885c5cc2fec90c299ada4a397539e31254204.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorCoefficient` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.PrimePow` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dampedDivisorCoefficient_prime_pow](../../../../Combinatorics/DampedDivisorPrimePowerSource.lean/declarations/dampeddivisorcoefficient-prime-pow.md) | 12 | `result-track:9b0abce69a2e951da2642a18422a8f3c98ed6cb8fd60790a0b3eb0b809c67b42` |
| 2 | `theorem` | [dampedDivisorCoefficient_le_sq_of_not_prime_pow](../../../../Combinatorics/DampedDivisorPrimePowerSource.lean/declarations/dampeddivisorcoefficient-le-sq-of-not-prime-pow.md) | 19 | `result-track:001f91df7a181a7fcb7f0fc9a2ec9b70b0f12d6f677991cdaaa1c64f430b9f73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5b53ffd361aae43c0fa8bc73c416b14c8655b5d6e505ef86ee38b02058c04e3a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DampedDivisorPrimePowerSource/Variantb36d77d7949ebd2bfc5d61170d9885c5cc2fec90c299ada4a397539e31254204.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/DampedDivisorPrimePowerSource/Variantb36d77d7949ebd2bfc5d61170d9885c5cc2fec90c299ada4a397539e31254204.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
