# Verification target: PID

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44f700c6a30abaa3f68b461753f86cd8a17cda18",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PID/Variant14c6c22672f5742af907df1b430c8c8f3101a98cacd5a357f9e3675956c152f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PID.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PID.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44f700c6a30abaa3f68b461753f86cd8a17cda18`.

Source path: `GRWTSK/Algebra/PID/Variant14c6c22672f5742af907df1b430c8c8f3101a98cacd5a357f9e3675956c152f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PID/Variant14c6c22672f5742af907df1b430c8c8f3101a98cacd5a357f9e3675956c152f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.Dvr` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Ideal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ideal.eq_span_singleton_of_mem_of_notMem_sq_of_notMem_prime_ne](../../../../CommutativeAlgebra/PID.lean/declarations/ideal-eq-span-singleton-of-mem-of-notmem-sq-of-notmem-prime-ne.md) | 36 | `result-track:74806b169281e7be19580db0be1834328fa6508238e40c2fd375bd819e48e5d6` |
| 2 | `theorem` | [FractionalIdeal.isPrincipal_of_unit_of_comap_mul_span_singleton_eq_top](../../../../CommutativeAlgebra/PID.lean/declarations/fractionalideal-isprincipal-of-unit-of-comap-mul-span-singleton-eq-top.md) | 78 | `result-track:3fd28af49a641d18f35fbc219cc74cb3eccb924d6db472a8684849a91bfe8247` |
| 3 | `theorem` | [FractionalIdeal.isPrincipal.of_finite_maximals_of_inv](../../../../CommutativeAlgebra/PID.lean/declarations/fractionalideal-isprincipal-of-finite-maximals-of-inv.md) | 108 | `result-track:7901938a6f83b1ebd33b529f7f9e15f0404b2a8425e7f8b517353069b770cc5a` |
| 4 | `theorem` | [Ideal.IsPrincipal.of_finite_maximals_of_isUnit](../../../../CommutativeAlgebra/PID.lean/declarations/ideal-isprincipal-of-finite-maximals-of-isunit.md) | 172 | `result-track:230ac71426ba0f3e9d5541103a1e0b408674f70b2fb28a3b604e06c6b2af7032` |
| 5 | `theorem` | [IsPrincipalIdealRing.of_finite_primes](../../../../CommutativeAlgebra/PID.lean/declarations/isprincipalidealring-of-finite-primes.md) | 179 | `result-track:c118bb36152a12133ccd6b220f701fe67a3a7b04dcea714e2a03748e3387b23e` |
| 6 | `theorem` | [IsLocalization.OverPrime.mem_normalizedFactors_of_isPrime](../../../../CommutativeAlgebra/PID.lean/declarations/islocalization-overprime-mem-normalizedfactors-of-isprime.md) | 203 | `result-track:c91c6fa8ee4d22fef0da5a6ca239220f7f42e3d3d1fd6c87c6020b96bd2bcd20` |
| 7 | `theorem` | [IsDedekindDomain.isPrincipalIdealRing_localization_over_prime](../../../../CommutativeAlgebra/PID.lean/declarations/isdedekinddomain-isprincipalidealring-localization-over-prime.md) | 243 | `result-track:f03f836915628beafd95daa8c16594e2885e5393123fb1dbad67811862413105` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d3eb684ae78e1a113b64b9fb34b9dfa49af7db398fd7319b07d3b60bd22507fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/PID/Variant14c6c22672f5742af907df1b430c8c8f3101a98cacd5a357f9e3675956c152f5.lean","GRWTSK/_verification/specifications/Algebra/PID/Variant14c6c22672f5742af907df1b430c8c8f3101a98cacd5a357f9e3675956c152f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
