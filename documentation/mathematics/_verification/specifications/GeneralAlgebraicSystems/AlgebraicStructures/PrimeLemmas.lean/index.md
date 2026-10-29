# Verification target: Prime Lemmas

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a50285949df1af9a0ff4f500862fd8cb20f1442",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeLemmas.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeLemmas.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a50285949df1af9a0ff4f500862fd8cb20f1442`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Irreducible.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Equiv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Prime.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Defs` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [comap_prime](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeLemmas.lean/declarations/comap-prime.md) | 43 | `result-track:8b9a06b6f39a27bb5c19ef0e97d7724b62848b524d0436a72e665de074f1d790` |
| 2 | `theorem` | [MulEquiv.prime_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeLemmas.lean/declarations/mulequiv-prime-iff.md) | 53 | `result-track:117d10a68dd733e9ff567208f17099a137b7cee48331d8a34af73058e876d0d3` |
| 3 | `theorem` | [Prime.left_dvd_or_dvd_right_of_dvd_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeLemmas.lean/declarations/prime-left-dvd-or-dvd-right-of-dvd-mul.md) | 63 | `result-track:4cc6b8747da637f002240d16296c899b7d3f3745dac091bda18aeaf577cfb50a` |
| 4 | `theorem` | [Prime.pow_dvd_of_dvd_mul_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeLemmas.lean/declarations/prime-pow-dvd-of-dvd-mul-left.md) | 71 | `result-track:7cc5e13a119e266126939ef1444b4eeb93e4a8f118f7cbbc62ba48128aaa8563` |
| 5 | `theorem` | [Prime.pow_dvd_of_dvd_mul_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeLemmas.lean/declarations/prime-pow-dvd-of-dvd-mul-right.md) | 83 | `result-track:3d5f800c7a1b7cac385b4642c43d165c1e7915cfbddce5d233a754086dcfda41` |
| 6 | `theorem` | [Prime.dvd_of_pow_dvd_pow_mul_pow_of_square_not_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeLemmas.lean/declarations/prime-dvd-of-pow-dvd-pow-mul-pow-of-square-not-dvd.md) | 88 | `result-track:076a29abd9d0373d1a2faa0d7528bd0e09fbb6f1366d7e3503dde771e4a029eb` |
| 7 | `theorem` | [prime_pow_succ_dvd_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeLemmas.lean/declarations/prime-pow-succ-dvd-mul.md) | 106 | `result-track:e6f5c29139097bfb8f7838d9111aef4e918d274009bca1ba0b2f25d82d98693f` |
| 8 | `theorem` | [succ_dvd_or_succ_dvd_of_succ_sum_dvd_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeLemmas.lean/declarations/succ-dvd-or-succ-dvd-of-succ-sum-dvd-mul.md) | 122 | `result-track:f4dea60f206da67992fb57efa315573659309b9b9c6493690ca839630fab0946` |
| 9 | `theorem` | [Prime.not_isSquare](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeLemmas.lean/declarations/prime-not-issquare.md) | 133 | `result-track:aa665f73686762a74a8771fd06a4c16d2934a847de21478f633e2bdaafa88245` |
| 10 | `theorem` | [IsSquare.not_prime](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeLemmas.lean/declarations/issquare-not-prime.md) | 139 | `result-track:b8a0a986cc77f9a1f08b4a2e905a6a911a3565a2ad2298290f1fa0ffb836ce16` |
| 11 | `theorem` | [not_prime_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeLemmas.lean/declarations/not-prime-pow.md) | 141 | `result-track:a96e6a0e0fbd1422bbdf53a23d5051d850fdbbf4ed1ab851b4924ba4a65304b8` |
| 12 | `theorem` | [DvdNotUnit.isUnit_of_irreducible_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeLemmas.lean/declarations/dvdnotunit-isunit-of-irreducible-right.md) | 148 | `result-track:3d233c1b1f8a94642004b442d087c6bbe0770394eaf325bb3a82109ef70ee7ba` |
| 13 | `theorem` | [not_irreducible_of_not_unit_dvdNotUnit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeLemmas.lean/declarations/not-irreducible-of-not-unit-dvdnotunit.md) | 153 | `result-track:ade7d89639ebff1369ab08eb93a0affc9602406b8d6f9e5cd09ad6ebe7bd9c05` |
| 14 | `theorem` | [DvdNotUnit.not_unit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeLemmas.lean/declarations/dvdnotunit-not-unit.md) | 157 | `result-track:74465ab666fd153fb92fe1123b028d59f5f5b60345eaf4a22afed779414c5272` |
| 15 | `theorem` | [DvdNotUnit.ne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeLemmas.lean/declarations/dvdnotunit-ne.md) | 165 | `result-track:380f7d5dffe97d84c027b58a7154ba11c3d4f4b5f095bc9d0c05989873ef4cbf` |
| 16 | `theorem` | [pow_injective_of_not_isUnit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeLemmas.lean/declarations/pow-injective-of-not-isunit.md) | 172 | `result-track:a3ad7a31f540fd3bae78b61f9432c4856002411e60dd5c75e92309c84d0e4579` |
| 17 | `theorem` | [pow_inj_of_not_isUnit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeLemmas.lean/declarations/pow-inj-of-not-isunit.md) | 178 | `result-track:bab9f5f9e395f1bc3e1ea994f7d569134b8f2a098a3e3f3ae1398992e6c5d332` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0eafff22204a1c85eb488cd627d4854272c5e240c5840475b412badc5ad8c25f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
