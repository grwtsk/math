# Verification target: Number Theory Multiplicity Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1d34b5d432cc8b833229cb6a38c06a617480678",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Multiplicity/Variantbfcac4f87f3c2c8c649e5aa006279598ac91dc02cb81de678a434bd0ac8bab9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/NumberTheoryMultiplicityNamespaced.lean/index.md) · [Full source](../../../../NumberTheory/NumberTheoryMultiplicityNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1d34b5d432cc8b833229cb6a38c06a617480678`.

Source path: `GRWTSK/Algebra/Multiplicity/Variantbfcac4f87f3c2c8c649e5aa006279598ac91dc02cb81de678a434bd0ac8bab9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Multiplicity/Variantbfcac4f87f3c2c8c649e5aa006279598ac91dc02cb81de678a434bd0ac8bab9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Parity` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicVal.Defs` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Span` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dvd_geom_sum₂_iff_of_dvd_sub](../../../../NumberTheory/NumberTheoryMultiplicityNamespaced.lean/declarations/dvd-geom-sum-iff-of-dvd-sub.md) | 48 | `result-track:1037753e2bb32eec8c3c858b115e106d5c1e3de9fec9f3947a9330e50517367e` |
| 2 | `theorem` | [dvd_geom_sum₂_iff_of_dvd_sub'](../../../../NumberTheory/NumberTheoryMultiplicityNamespaced.lean/declarations/dvd-geom-sum-iff-of-dvd-sub-source-edition-2.md) | 54 | `result-track:b11eaefd740269e8e8524e2cfefc27d7cf70bf756953be2e3b9e9f8eede1cbbd` |
| 3 | `theorem` | [dvd_geom_sum₂_self](../../../../NumberTheory/NumberTheoryMultiplicityNamespaced.lean/declarations/dvd-geom-sum-self.md) | 58 | `result-track:954b826dc5021240973ed943c0622c1e7de51b76398ade57af9367da6889777c` |
| 4 | `theorem` | [sq_dvd_add_pow_sub_sub](../../../../NumberTheory/NumberTheoryMultiplicityNamespaced.lean/declarations/sq-dvd-add-pow-sub-sub.md) | 62 | `result-track:dde17d73699d46a44cc2d9bfdd7377212f337b3fb970d3d4b62b7a873420b151` |
| 5 | `theorem` | [not_dvd_geom_sum₂](../../../../NumberTheory/NumberTheoryMultiplicityNamespaced.lean/declarations/not-dvd-geom-sum.md) | 79 | `result-track:a56739c1afb333b388600c05863b4c54a8f48c37ed2b3d4e4522c8a6ac324d67` |
| 6 | `theorem` | [odd_sq_dvd_geom_sum₂_sub](../../../../NumberTheory/NumberTheoryMultiplicityNamespaced.lean/declarations/odd-sq-dvd-geom-sum-sub.md) | 86 | `result-track:2fd1fc076fe8b2f69abd286feed21d596f418fe4960b65331fcbc280146a1ea0` |
| 7 | `theorem` | [emultiplicity_pow_sub_pow_of_prime](../../../../NumberTheory/NumberTheoryMultiplicityNamespaced.lean/declarations/emultiplicity-pow-sub-pow-of-prime.md) | 154 | `result-track:d4dcf57cbcfd04f20c19a8699a58cdc1988cda847bc53c9a012c34b032bbf1f8` |
| 8 | `theorem` | [emultiplicity_geom_sum₂_eq_one](../../../../NumberTheory/NumberTheoryMultiplicityNamespaced.lean/declarations/emultiplicity-geom-sum-eq-one.md) | 166 | `result-track:1806131edd8fb780d6b1ad88797cad674684d37e21592648f4c7428da0df03dd` |
| 9 | `theorem` | [emultiplicity_pow_prime_sub_pow_prime](../../../../NumberTheory/NumberTheoryMultiplicityNamespaced.lean/declarations/emultiplicity-pow-prime-sub-pow-prime.md) | 182 | `result-track:cb7e478e4c6552bb827fb53cb1aee0299808bd89984e21bc2a05a953fbd938b2` |
| 10 | `theorem` | [emultiplicity_pow_prime_pow_sub_pow_prime_pow](../../../../NumberTheory/NumberTheoryMultiplicityNamespaced.lean/declarations/emultiplicity-pow-prime-pow-sub-pow-prime-pow.md) | 189 | `result-track:3e8dc54bbb3a5d6afce496bc4ed7149061d5ec5b56702043de9de2ad8d6350e3` |
| 11 | `theorem` | [Int.emultiplicity_pow_sub_pow](../../../../NumberTheory/NumberTheoryMultiplicityNamespaced.lean/declarations/int-emultiplicity-pow-sub-pow.md) | 211 | `result-track:135b4c55579e7c6e3b49997c6284c6254c59553a77f5217afa0b25066fad32c7` |
| 12 | `theorem` | [Int.emultiplicity_pow_add_pow](../../../../NumberTheory/NumberTheoryMultiplicityNamespaced.lean/declarations/int-emultiplicity-pow-add-pow.md) | 233 | `result-track:8bd9600f8b54433e4b167929d5efc9a97e447f0821b715cddbd3097c1aa461e9` |
| 13 | `theorem` | [Nat.emultiplicity_pow_sub_pow](../../../../NumberTheory/NumberTheoryMultiplicityNamespaced.lean/declarations/nat-emultiplicity-pow-sub-pow.md) | 243 | `result-track:40b6cc84a40fe390435703f89520c6bed8f12146829398c42962dd0e8f01ad37` |
| 14 | `theorem` | [Nat.emultiplicity_pow_add_pow](../../../../NumberTheory/NumberTheoryMultiplicityNamespaced.lean/declarations/nat-emultiplicity-pow-add-pow.md) | 258 | `result-track:dd29c138af81eb39931f53229f4b6925085314c3270a893d4f733a953bb915cc` |
| 15 | `theorem` | [pow_two_pow_sub_pow_two_pow](../../../../NumberTheory/NumberTheoryMultiplicityNamespaced.lean/declarations/pow-two-pow-sub-pow-two-pow.md) | 273 | `result-track:6aea8cbc736af5996b858dbee4bbd48531aaef61d59683740218394a60dc68f6` |
| 16 | `theorem` | [Int.sq_mod_four_eq_one_of_odd](../../../../NumberTheory/NumberTheoryMultiplicityNamespaced.lean/declarations/int-sq-mod-four-eq-one-of-odd.md) | 283 | `result-track:dbd630f24c770cbc4b955e2e57e3d0c933a0ece87aaaa3303606c23058c24724` |
| 17 | `theorem` | [Int.two_pow_two_pow_add_two_pow_two_pow](../../../../NumberTheory/NumberTheoryMultiplicityNamespaced.lean/declarations/int-two-pow-two-pow-add-two-pow-two-pow.md) | 291 | `result-track:0641aa200c26193f9ce8cbed6c4f0218e1b2e6c31cb565673b5f1777b5cb8d15` |
| 18 | `theorem` | [Int.two_pow_two_pow_sub_pow_two_pow](../../../../NumberTheory/NumberTheoryMultiplicityNamespaced.lean/declarations/int-two-pow-two-pow-sub-pow-two-pow.md) | 315 | `result-track:d833d1027314d0e0f9772c57354427ecbf4a91f91ade745d0e436432aaf5963f` |
| 19 | `theorem` | [Int.two_pow_sub_pow'](../../../../NumberTheory/NumberTheoryMultiplicityNamespaced.lean/declarations/int-two-pow-sub-pow-source-edition-2.md) | 321 | `result-track:cef170dcef24a3576d063c0dc105adfe6a1de0a299c16ff73c717d0a5705ba65` |
| 20 | `theorem` | [Int.two_pow_sub_pow](../../../../NumberTheory/NumberTheoryMultiplicityNamespaced.lean/declarations/int-two-pow-sub-pow.md) | 345 | `result-track:60359cf5f2cff8f6bfd535f4389374f602150dd2e0a16d4fc54fdfd901ab19fd` |
| 21 | `theorem` | [Nat.two_pow_sub_pow](../../../../NumberTheory/NumberTheoryMultiplicityNamespaced.lean/declarations/nat-two-pow-sub-pow.md) | 372 | `result-track:0b1d20daaf387569aaa2c9d76fb2b0dc13626ef095c3cc24aed5aa974e2930e5` |
| 22 | `theorem` | [pow_two_sub_pow](../../../../NumberTheory/NumberTheoryMultiplicityNamespaced.lean/declarations/pow-two-sub-pow.md) | 392 | `result-track:9bc1b848b2e10ed09f466853ebb78e9972b88aae0d639ccca35cd849ed30ed09` |
| 23 | `theorem` | [pow_sub_pow](../../../../NumberTheory/NumberTheoryMultiplicityNamespaced.lean/declarations/pow-sub-pow.md) | 407 | `result-track:ed6798f6b6a3a55dc0539ff3c0e42532f3203b284dc9c1d1da7cb03016548880` |
| 24 | `theorem` | [pow_add_pow](../../../../NumberTheory/NumberTheoryMultiplicityNamespaced.lean/declarations/pow-add-pow.md) | 416 | `result-track:5d7352dc4b2c59a23577602f8b9057b86ea1a234d2cdf5316a923fd313687d4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8cfc18b5e45b5d8fbe0c8de765aaca84fbb4c34a888882f10b22a2426ab9e84e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Multiplicity/Variantbfcac4f87f3c2c8c649e5aa006279598ac91dc02cb81de678a434bd0ac8bab9c.lean","GRWTSK/_verification/specifications/Algebra/Multiplicity/Variantbfcac4f87f3c2c8c649e5aa006279598ac91dc02cb81de678a434bd0ac8bab9c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
