# Ring Theory Principal Ideal Domain Principal Ideal Domain Source Edition1

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**52 observed declarations and anonymous commands**, 41 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/PrincipalIdealDomain/Variant34fe13418b83f781cde1f7f71d1a6307d79bdf2eb674a59836472efc794b21a8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f053ec7c39d5d746a94d16b7a64bcc79b0bb82db`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [Submodule.IsPrincipal](declarations/submodule-isprincipal.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Submodule.IsPrincipal.principal](declarations/submodule-isprincipal-principal.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [bot_isPrincipal](declarations/bot-isprincipal.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [top_isPrincipal](declarations/top-isprincipal.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `class` | [IsPrincipalIdealRing](declarations/isprincipalidealring.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [generator](declarations/generator.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [span_singleton_generator](declarations/span-singleton-generator.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [_root_.Ideal.span_singleton_generator](declarations/root-ideal-span-singleton-generator.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [generator_mem](declarations/generator-mem.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_iff_eq_smul_generator](declarations/mem-iff-eq-smul-generator.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eq_bot_iff_generator_eq_zero](declarations/eq-bot-iff-generator-eq-zero.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mem_iff_generator_dvd](declarations/mem-iff-generator-dvd.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [prime_generator_of_isPrime](declarations/prime-generator-of-isprime.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [generator_map_dvd_of_mem](declarations/generator-map-dvd-of-mem.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [generator_submoduleImage_dvd_of_mem](declarations/generator-submoduleimage-dvd-of-mem.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [to_maximal_ideal](declarations/to-maximal-ideal.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mod_mem_iff](declarations/mod-mem-iff.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [IsField.isPrincipalIdealRing](declarations/isfield-isprincipalidealring.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isMaximal_of_irreducible](declarations/ismaximal-of-irreducible.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [irreducible_iff_prime](declarations/irreducible-iff-prime.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [associates_irreducible_iff_prime](declarations/associates-irreducible-iff-prime.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [factors](declarations/factors.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [factors_spec](declarations/factors-spec.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [ne_zero_of_mem_factors](declarations/ne-zero-of-mem-factors.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_submonoid_of_factors_subset_of_units_subset](declarations/mem-submonoid-of-factors-subset-of-units-subset.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ringHom_mem_submonoid_of_factors_subset_of_units_subset](declarations/ringhom-mem-submonoid-of-factors-subset-of-units-subset.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Submodule.IsPrincipal.of_comap](declarations/submodule-isprincipal-of-comap.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Ideal.IsPrincipal.of_comap](declarations/ideal-isprincipal-of-comap.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [IsPrincipalIdealRing.of_surjective](declarations/isprincipalidealring-of-surjective.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [span_gcd](declarations/span-gcd.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [gcd_dvd_iff_exists](declarations/gcd-dvd-iff-exists.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [exists_gcd_eq_mul_add_mul](declarations/exists-gcd-eq-mul-add-mul.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [gcd_isUnit_iff](declarations/gcd-isunit-iff.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [isCoprime_of_dvd](declarations/iscoprime-of-dvd.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [dvd_or_coprime](declarations/dvd-or-coprime.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [isCoprime_of_irreducible_dvd](declarations/iscoprime-of-irreducible-dvd.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [isCoprime_of_prime_dvd](declarations/iscoprime-of-prime-dvd.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Irreducible.coprime_iff_not_dvd](declarations/irreducible-coprime-iff-not-dvd.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Prime.coprime_iff_not_dvd](declarations/prime-coprime-iff-not-dvd.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Irreducible.dvd_iff_not_coprime](declarations/irreducible-dvd-iff-not-coprime.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [Irreducible.coprime_pow_of_not_dvd](declarations/irreducible-coprime-pow-of-not-dvd.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Irreducible.coprime_or_dvd](declarations/irreducible-coprime-or-dvd.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [exists_associated_pow_of_mul_eq_pow'](declarations/exists-associated-pow-of-mul-eq-pow.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [nonPrincipals](declarations/nonprincipals.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [nonPrincipals_def](declarations/nonprincipals-def.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [nonPrincipals_eq_empty_iff](declarations/nonprincipals-eq-empty-iff.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [nonPrincipals_zorn](declarations/nonprincipals-zorn.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [IsPrincipalIdealRing.of_prime](declarations/isprincipalidealring-of-prime.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=872f07837b40a5afbe144a0c4e0794c626d432c74bf3e4eb953e83baa02ce005 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PrincipalIdealDomain/Variant34fe13418b83f781cde1f7f71d1a6307d79bdf2eb674a59836472efc794b21a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
