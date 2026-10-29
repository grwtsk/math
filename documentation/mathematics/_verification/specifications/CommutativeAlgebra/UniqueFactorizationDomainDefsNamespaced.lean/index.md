# Verification target: Unique Factorization Domain Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da6d38bf4123984039eaf257bdac2a5dbc9d47eb",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Defs/Variant69a9914bc3275887f6cadd9fb6783457ed717aafd177b966d72262e79342735e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefsNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da6d38bf4123984039eaf257bdac2a5dbc9d47eb`.

Source path: `GRWTSK/Algebra/RingTheory/Defs/Variant69a9914bc3275887f6cadd9fb6783457ed717aafd177b966d72262e79342735e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Defs/Variant69a9914bc3275887f6cadd9fb6783457ed717aafd177b966d72262e79342735e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Multiset.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.BigOperators` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Associated` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Submonoid.Primal` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [WfDvdMonoid](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefsNamespaced.lean/declarations/wfdvdmonoid.md) | 40 | `declaration-track:864f7857b031fa101ea08f8bbff10a8f0fd360c83273aeda09abe73a93e6459c` |
| 2 | `theorem` | [wellFounded_dvdNotUnit](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefsNamespaced.lean/declarations/wellfounded-dvdnotunit.md) | 43 | `result-track:a5c30a8818db687ec39355df6f01c4e9087712d47cf9dea088d63096a0b89a27` |
| 3 | `theorem` | [exists_irreducible_factor](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefsNamespaced.lean/declarations/exists-irreducible-factor.md) | 55 | `result-track:a385e9d318ffc76de2344588fb98b5672582e31824885f5e267c44198886fc3a` |
| 4 | `theorem` | [induction_on_irreducible](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefsNamespaced.lean/declarations/induction-on-irreducible.md) | 66 | `result-track:14f321cb1fd4d3ed126f06895a1720d0082c184b29cc7d7ed1d43ddd4b398259` |
| 5 | `theorem` | [exists_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefsNamespaced.lean/declarations/exists-factors.md) | 81 | `result-track:a851ec069d0eaa8210b9862b088887e9ab8229da6f30559e6808a3523ff41622` |
| 6 | `theorem` | [not_unit_iff_exists_factors_eq](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefsNamespaced.lean/declarations/not-unit-iff-exists-factors-eq.md) | 91 | `result-track:f0f2a4b8e9264b0a3de935c6ef01cfcec5146bdb85b3626876165474f6f5760f` |
| 7 | `theorem` | [isRelPrime_of_no_irreducible_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefsNamespaced.lean/declarations/isrelprime-of-no-irreducible-factors.md) | 105 | `result-track:69d64b2117bc86ff5994165ecef998014154e05402225266b5040421faa66c4a` |
| 8 | `class` | [UniqueFactorizationMonoid](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefsNamespaced.lean/declarations/uniquefactorizationmonoid.md) | 134 | `declaration-track:775b028696bde948339e6b809a0520a7cf3b68e52831ad5346d3e83a1547958e` |
| 9 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefsNamespaced.lean/declarations/instance-source-edition-2.md) | 138 | `declaration-track:a18c5df4039d826973bcb64fb8b7e006e27e3fde5ccd5e6fc613d8dfb5064aef` |
| 10 | `theorem` | [exists_prime_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefsNamespaced.lean/declarations/exists-prime-factors.md) | 149 | `result-track:2c32d2ed92aa40c14265107934f1e2b7c02c2470b49614790f6aecd7260b3085` |
| 11 | `lemma` | [exists_prime_iff](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefsNamespaced.lean/declarations/exists-prime-iff.md) | 154 | `result-track:0c32ec92cc531d7fcd9ebed29b3f05a1ac38680321b8e46f93eb19a8e422826e` |
| 12 | `theorem` | [induction_on_prime](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefsNamespaced.lean/declarations/induction-on-prime.md) | 161 | `result-track:57ab53be5b99739492c93ffcf17a76396c592ac709446c71fa4c2fe3945e48aa` |
| 13 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefsNamespaced.lean/declarations/instance.md) | 166 | `declaration-track:4f7e77e6bdd220876b8f8fb0517c9e5cdc93a2f6c11ddd5ed9e4d8d7dcfb64b5` |
| 14 | `def` | [factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefsNamespaced.lean/declarations/factors.md) | 181 | `declaration-track:5f235604b1caa3852f3357b4c53d14b00f940e0c32d44a75fb99ad69841d1c12` |
| 15 | `theorem` | [factors_prod](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefsNamespaced.lean/declarations/factors-prod.md) | 184 | `result-track:0e2641fd830f3df054c400341054d64d0476b0f4590b62d4b8c4c427b2a1b3a9` |
| 16 | `theorem` | [factors_zero](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefsNamespaced.lean/declarations/factors-zero.md) | 189 | `result-track:3710716cb20a9be240a9e3656f7235466963be72ed437272c79123bc30bf863e` |
| 17 | `theorem` | [ne_zero_of_mem_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefsNamespaced.lean/declarations/ne-zero-of-mem-factors.md) | 191 | `result-track:2d4984fd6e8ef16d8e9da5fdadeefd0f337324927a56acc62a8004fd726633d0` |
| 18 | `theorem` | [dvd_of_mem_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefsNamespaced.lean/declarations/dvd-of-mem-factors.md) | 195 | `result-track:812942537989903227c136a22042131c87a2159e8a4f42de3d16b601c80a4b59` |
| 19 | `theorem` | [prime_of_factor](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefsNamespaced.lean/declarations/prime-of-factor.md) | 198 | `result-track:e2606563d15c78b7aa33566c69355ab3c99c6d419ad919a84f71085b46ed9f0b` |
| 20 | `theorem` | [irreducible_of_factor](../../../../CommutativeAlgebra/UniqueFactorizationDomainDefsNamespaced.lean/declarations/irreducible-of-factor.md) | 203 | `result-track:f4cd0b9e90b7e8c08aa80cc441a24f5a9fb0c491476f4d17f693e3169b514b5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f507e09a7abbdd7019e0587d6a9963790f5e78fa55d17fcfb0fa37e9dfce81a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RingTheory/Defs/Variant69a9914bc3275887f6cadd9fb6783457ed717aafd177b966d72262e79342735e.lean","GRWTSK/_verification/specifications/Algebra/RingTheory/Defs/Variant69a9914bc3275887f6cadd9fb6783457ed717aafd177b966d72262e79342735e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
