# Verification target: Unique Factorization Domain Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bbf24774a965a3757a742d3099717862a91a12f",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Defs/Variant0209f3a6a04aa170e7225ce9a6e80b87449d23743bad8b37c874e3909c741624.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefs.lean/index.md) · [Full source](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bbf24774a965a3757a742d3099717862a91a12f`.

Source path: `GRWTSK/Algebra/RingTheory/Defs/Variant0209f3a6a04aa170e7225ce9a6e80b87449d23743bad8b37c874e3909c741624.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Defs/Variant0209f3a6a04aa170e7225ce9a6e80b87449d23743bad8b37c874e3909c741624.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Multiset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.BigOperators` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Associated` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Submonoid.Primal` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [WfDvdMonoid](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefs.lean/declarations/wfdvdmonoid.md) | 32 | `declaration-track:3a5437ff45f9b5d4e7232400b076686b4e565459eb3581d2fdb56bd07c072469` |
| 2 | `theorem` | [wellFounded_dvdNotUnit](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefs.lean/declarations/wellfounded-dvdnotunit.md) | 35 | `result-track:0824d3565a23ef31fd6e6dce91845850871a6b4690fc74f8a8c48df04889cb32` |
| 3 | `theorem` | [exists_irreducible_factor](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefs.lean/declarations/exists-irreducible-factor.md) | 47 | `result-track:510e6c77eccdf5769109db51435f73b187a79e7b8df7bbfbbe7ff10344f306fd` |
| 4 | `theorem` | [induction_on_irreducible](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefs.lean/declarations/induction-on-irreducible.md) | 58 | `result-track:459600994ce114be78e0bd11f76e4cb5e19474ab9dbfa4522967c433b398a207` |
| 5 | `theorem` | [exists_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefs.lean/declarations/exists-factors.md) | 73 | `result-track:61916461a722269bef200342ec7ac28d66dc9acae9bd0368e35bffdfcf9dc10d` |
| 6 | `theorem` | [not_unit_iff_exists_factors_eq](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefs.lean/declarations/not-unit-iff-exists-factors-eq.md) | 83 | `result-track:bdaf219649d55c8d62aafce3534ea59841eab1716de61dbaa4c731883cb3c481` |
| 7 | `theorem` | [isRelPrime_of_no_irreducible_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefs.lean/declarations/isrelprime-of-no-irreducible-factors.md) | 97 | `result-track:5954561d5b46879c0892385dcef06b74d88f03bf6d8873840745f5324c4d8026` |
| 8 | `class` | [UniqueFactorizationMonoid](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefs.lean/declarations/uniquefactorizationmonoid.md) | 126 | `declaration-track:3b30ffeb757ad6b5325cb8df33ad6d853d4492f52f7f0eb6ef76c87ca741e5ad` |
| 9 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefs.lean/declarations/instance-source-edition-2.md) | 130 | `declaration-track:b4eceb8ed507dc70a3b221f68d2b6b02b329596a2eeabf3f7ec4917ea67c73ef` |
| 10 | `theorem` | [exists_prime_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefs.lean/declarations/exists-prime-factors.md) | 141 | `result-track:a92083e3476a9738c4db3d8beb2c58f5f3ebac73358d73739cb8961608b94eca` |
| 11 | `lemma` | [exists_prime_iff](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefs.lean/declarations/exists-prime-iff.md) | 146 | `result-track:613432aa47b66f885f07164385eeb581ae95e2e8efcf4e69c616fa903f3e6983` |
| 12 | `theorem` | [induction_on_prime](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefs.lean/declarations/induction-on-prime.md) | 153 | `result-track:64c786cc8e0f7e7b6a11de14be1d555b447f6c3a6ef6a9bceb0e008ef6b4a350` |
| 13 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefs.lean/declarations/instance.md) | 158 | `declaration-track:13f902f9a40f34ae44ef3ea3580ac8986f972b12f34adbe828b4d6f067a1fcbd` |
| 14 | `def` | [factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefs.lean/declarations/factors.md) | 173 | `declaration-track:6acf5318dc8e5d166879e37760edc1e58e3fb6e9e0612fcc738215661922c3e2` |
| 15 | `theorem` | [factors_prod](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefs.lean/declarations/factors-prod.md) | 176 | `result-track:0252474fe7a80e5fcff0f24cc8294f9cf7e1d4fbee1933fd43a4c94fad475316` |
| 16 | `theorem` | [factors_zero](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefs.lean/declarations/factors-zero.md) | 181 | `result-track:a9f1828454ade83e4ce8851ce333a38343e8ccdaeef1bdd1a0524c883939ab2f` |
| 17 | `theorem` | [ne_zero_of_mem_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefs.lean/declarations/ne-zero-of-mem-factors.md) | 183 | `result-track:d534fc0807d9fc0ab9a068869760185da47fae72eb7090129ba61bbbe3153963` |
| 18 | `theorem` | [dvd_of_mem_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefs.lean/declarations/dvd-of-mem-factors.md) | 187 | `result-track:3549007a53f1e0b1e6aad3d8be12c6916abef43a358b1b7ad11f6ecf943d8e10` |
| 19 | `theorem` | [prime_of_factor](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefs.lean/declarations/prime-of-factor.md) | 190 | `result-track:6c3acfd823b7e8ada50315f554ce438c22f4414a7e6e5a829085e0613b0e6e97` |
| 20 | `theorem` | [irreducible_of_factor](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefs.lean/declarations/irreducible-of-factor.md) | 195 | `result-track:e3a61ff46bc11eeee381972f48ae7460e932b4ebd60a287ee4767a4eb7448d2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=45d9f9bdfe98abaf4b42cc39565dadfb7d7f3663d115dbfbe9757c888c4b6e4b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RingTheory/Defs/Variant0209f3a6a04aa170e7225ce9a6e80b87449d23743bad8b37c874e3909c741624.lean","GRWTSK/_verification/specifications/Algebra/RingTheory/Defs/Variant0209f3a6a04aa170e7225ce9a6e80b87449d23743bad8b37c874e3909c741624.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
