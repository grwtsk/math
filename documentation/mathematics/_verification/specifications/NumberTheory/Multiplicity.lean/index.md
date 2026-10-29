# Verification target: Multiplicity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e157f1c4438e8eff6c30d5108cb9103ebecd4db2",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variantc212cc759bff3f794c499d30afa9c93738dbdeb65aa14d7f3c13c947704e3c9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/Multiplicity.lean/index.md) · [Full source](../../../../NumberTheory/Multiplicity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e157f1c4438e8eff6c30d5108cb9103ebecd4db2`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variantc212cc759bff3f794c499d30afa9c93738dbdeb65aa14d7f3c13c947704e3c9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variantc212cc759bff3f794c499d30afa9c93738dbdeb65aa14d7f3c13c947704e3c9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Parity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicVal` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.QuotientOperations` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Meta.WellFoundedTactics` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dvd_geom_sum₂_iff_of_dvd_sub](../../../../NumberTheory/Multiplicity.lean/declarations/dvd-geom-sum-iff-of-dvd-sub.md) | 42 | `result-track:342f47df173924867c3889eb9c7c4c74b90daaf3f1f5d810f250b5dcaea6ebba` |
| 2 | `theorem` | [dvd_geom_sum₂_iff_of_dvd_sub'](../../../../NumberTheory/Multiplicity.lean/declarations/dvd-geom-sum-iff-of-dvd-sub-source-edition-2.md) | 49 | `result-track:a4f9625c7096e4c710ab371675d6523341927e50ca9acee611c7bd477f91dbbc` |
| 3 | `theorem` | [dvd_geom_sum₂_self](../../../../NumberTheory/Multiplicity.lean/declarations/dvd-geom-sum-self.md) | 54 | `result-track:9e80d6d9bc222c429188ea2865a6b021714f52072f203095268a389ef91bc391` |
| 4 | `theorem` | [sq_dvd_add_pow_sub_sub](../../../../NumberTheory/Multiplicity.lean/declarations/sq-dvd-add-pow-sub-sub.md) | 59 | `result-track:840737f8e61f22c3b8267e54354d208743c76c1f230c0c0e7df0ddb77637a406` |
| 5 | `theorem` | [not_dvd_geom_sum₂](../../../../NumberTheory/Multiplicity.lean/declarations/not-dvd-geom-sum.md) | 77 | `result-track:df209f168968cc6ff0a98d22139b23dbc39b9c1f8fcf41611c63c5b823ab95db` |
| 6 | `theorem` | [odd_sq_dvd_geom_sum₂_sub](../../../../NumberTheory/Multiplicity.lean/declarations/odd-sq-dvd-geom-sum-sub.md) | 85 | `result-track:ece78533a47bf55215da5be613fc8101925c240fc2035c7790ce8366e4b52416` |
| 7 | `theorem` | [pow_sub_pow_of_prime](../../../../NumberTheory/Multiplicity.lean/declarations/pow-sub-pow-of-prime.md) | 158 | `result-track:5575e13a8c7e02db9a5d656ff9c894ff9bfa9ddf5a52f7d306ff3128ef0070ac` |
| 8 | `theorem` | [geom_sum₂_eq_one](../../../../NumberTheory/Multiplicity.lean/declarations/geom-sum-eq-one.md) | 166 | `result-track:d364d6f026ac45e02d20cddb95e58191f1e333d7cf03b6df5fca0eec9764c19e` |
| 9 | `theorem` | [pow_prime_sub_pow_prime](../../../../NumberTheory/Multiplicity.lean/declarations/pow-prime-sub-pow-prime.md) | 179 | `result-track:f1e3b7ecb6c4b2619f55f8582548d0ee2141346e492e6601a842eadd16ef9b28` |
| 10 | `theorem` | [pow_prime_pow_sub_pow_prime_pow](../../../../NumberTheory/Multiplicity.lean/declarations/pow-prime-pow-sub-pow-prime-pow.md) | 184 | `result-track:1a05a52f018a36ccc9d2bd3a494e8e29a9d27e4a10e1f5503690fb3893375330` |
| 11 | `theorem` | [Int.pow_sub_pow](../../../../NumberTheory/Multiplicity.lean/declarations/int-pow-sub-pow.md) | 202 | `result-track:0add4666f81a8647b10268558d0421e3e2b2b2536af319ab08daa1f2292a32f2` |
| 12 | `theorem` | [Int.pow_add_pow](../../../../NumberTheory/Multiplicity.lean/declarations/int-pow-add-pow.md) | 220 | `result-track:7fda0007a48c545bae330ec1606e056764f0ad43169c66d6c8f0a551919cba8e` |
| 13 | `theorem` | [Nat.pow_sub_pow](../../../../NumberTheory/Multiplicity.lean/declarations/nat-pow-sub-pow.md) | 227 | `result-track:646d65042940e145c8f79930f4e133caaa617d48fdea17a471cdea234de6f806` |
| 14 | `theorem` | [Nat.pow_add_pow](../../../../NumberTheory/Multiplicity.lean/declarations/nat-pow-add-pow.md) | 241 | `result-track:73020b5e4dfd033f997b8d58c7efb76b4d676a8b3d71bb395afe447ca1c5b88b` |
| 15 | `theorem` | [pow_two_pow_sub_pow_two_pow](../../../../NumberTheory/Multiplicity.lean/declarations/pow-two-pow-sub-pow-two-pow.md) | 255 | `result-track:ccade03fb1f7f15d7ec82660a2fd86514ef063fe29a1928eac3b1aed835c9f3f` |
| 16 | `theorem` | [Int.sq_mod_four_eq_one_of_odd](../../../../NumberTheory/Multiplicity.lean/declarations/int-sq-mod-four-eq-one-of-odd.md) | 266 | `result-track:80800041787d7fbf73767614b0698958518242c2a941c277660e49009f4a2af0` |
| 17 | `theorem` | [Int.two_pow_two_pow_add_two_pow_two_pow](../../../../NumberTheory/Multiplicity.lean/declarations/int-two-pow-two-pow-add-two-pow-two-pow.md) | 275 | `result-track:e1cb47fc59b0bee68a28b20485e7989a798deb05f13b6a8b5f0f0b656e868be1` |
| 18 | `theorem` | [Int.two_pow_two_pow_sub_pow_two_pow](../../../../NumberTheory/Multiplicity.lean/declarations/int-two-pow-two-pow-sub-pow-two-pow.md) | 300 | `result-track:88c80f1c064987b348bb553ab12aa7c5c41a31e61d4689fe78262057514b6acd` |
| 19 | `theorem` | [Int.two_pow_sub_pow'](../../../../NumberTheory/Multiplicity.lean/declarations/int-two-pow-sub-pow-source-edition-2.md) | 307 | `result-track:b6988c8d1249b9d70c9f92a518efbe973400ebac04df156b7b205cc8edbbebe9` |
| 20 | `theorem` | [Int.two_pow_sub_pow](../../../../NumberTheory/Multiplicity.lean/declarations/int-two-pow-sub-pow.md) | 331 | `result-track:9f08c1ee21b35d1662e0152a17a07850174e1b3907d9f82c16e2ae6b1a54217b` |
| 21 | `theorem` | [Nat.two_pow_sub_pow](../../../../NumberTheory/Multiplicity.lean/declarations/nat-two-pow-sub-pow.md) | 360 | `result-track:8c53336d53c26ee1788e4e31a7bd86105bfb255e64abbf2d7db049564edcdcc8` |
| 22 | `theorem` | [pow_two_sub_pow](../../../../NumberTheory/Multiplicity.lean/declarations/pow-two-sub-pow.md) | 381 | `result-track:c107bd4e3c10a90a0a084d64894d78cbd8b7c4283ef91c8bfab4d14f109f4c61` |
| 23 | `theorem` | [pow_sub_pow](../../../../NumberTheory/Multiplicity.lean/declarations/pow-sub-pow.md) | 396 | `result-track:d5c15368117cbd1e7314d84b80ad33b2cbb19ee9f80050de8ee3fb7dcc33f371` |
| 24 | `theorem` | [pow_add_pow](../../../../NumberTheory/Multiplicity.lean/declarations/pow-add-pow.md) | 406 | `result-track:937f5a6f9abc257b92345b8a928eb8298f596392eceae67882179e522bcdf2c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b48bda089b3ca1bd32accefbd49a2cb9188638c5c7902ddc26c8741192c3b023 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variantc212cc759bff3f794c499d30afa9c93738dbdeb65aa14d7f3c13c947704e3c9b.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variantc212cc759bff3f794c499d30afa9c93738dbdeb65aa14d7f3c13c947704e3c9b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
