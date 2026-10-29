# Verification target: Chain Of Divisors Multiplicity Prime Le Multiplicity Image By Factor Order Iso

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce0ff1cd269a361b949443ad25be5c6e6d1d8f23",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant8f19fb39521ebe0372871f496d03beb9c7903e4a73f1ef81de92683da175a87a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ChainOfDivisorsMultiplicityPrimeLeMultiplicityImageByFactorOrderIso.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ChainOfDivisorsMultiplicityPrimeLeMultiplicityImageByFactorOrderIso.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce0ff1cd269a361b949443ad25be5c6e6d1d8f23`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant8f19fb39521ebe0372871f496d03beb9c7903e4a73f1ef81de92683da175a87a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant8f19fb39521ebe0372871f496d03beb9c7903e4a73f1ef81de92683da175a87a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.IsPrimePow` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Squarefree` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Bounded` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Associates.isAtom_iff](../../../../CommutativeAlgebra/ChainOfDivisorsMultiplicityPrimeLeMultiplicityImageByFactorOrderIso.lean/declarations/associates-isatom-iff.md) | 42 | `result-track:26f808fdcd29673373f4563d8d62d6a1abd73c0168e4d6dcefb0060596dd93e2` |
| 2 | `theorem` | [exists_chain_of_prime_pow](../../../../CommutativeAlgebra/ChainOfDivisorsMultiplicityPrimeLeMultiplicityImageByFactorOrderIso.lean/declarations/exists-chain-of-prime-pow.md) | 67 | `result-track:9615fa0207cb7a7964177355963aca3e77478f9aa6f009955c31bf5004a3b20a` |
| 3 | `theorem` | [element_of_chain_not_isUnit_of_index_ne_zero](../../../../CommutativeAlgebra/ChainOfDivisorsMultiplicityPrimeLeMultiplicityImageByFactorOrderIso.lean/declarations/element-of-chain-not-isunit-of-index-ne-zero.md) | 85 | `result-track:38e21b2088a28b41c6ff125ef6ba380451fdbe4cc6c6909a21669072cfd7da52` |
| 4 | `theorem` | [first_of_chain_isUnit](../../../../CommutativeAlgebra/ChainOfDivisorsMultiplicityPrimeLeMultiplicityImageByFactorOrderIso.lean/declarations/first-of-chain-isunit.md) | 92 | `result-track:96132415d5de64e91fa12714a09ca0944d87fff6c3e00ccf4cbffb77b8e45e69` |
| 5 | `theorem` | [second_of_chain_is_irreducible](../../../../CommutativeAlgebra/ChainOfDivisorsMultiplicityPrimeLeMultiplicityImageByFactorOrderIso.lean/declarations/second-of-chain-is-irreducible.md) | 100 | `result-track:92e152024df6c34df9fea13b56b0e80d92aae7c9fbc98fa5a0953eb6a01b230f` |
| 6 | `theorem` | [eq_second_of_chain_of_prime_dvd](../../../../CommutativeAlgebra/ChainOfDivisorsMultiplicityPrimeLeMultiplicityImageByFactorOrderIso.lean/declarations/eq-second-of-chain-of-prime-dvd.md) | 112 | `result-track:95120171a0674debd9cc870ba8e1529d8ece0fc60cd952046b4b7c769814236d` |
| 7 | `theorem` | [card_subset_divisors_le_length_of_chain](../../../../CommutativeAlgebra/ChainOfDivisorsMultiplicityPrimeLeMultiplicityImageByFactorOrderIso.lean/declarations/card-subset-divisors-le-length-of-chain.md) | 136 | `result-track:3f11e72c00c1936ff3c3878a09911964475e2769d2e86e822f5862bac7f02f10` |
| 8 | `theorem` | [element_of_chain_eq_pow_second_of_chain](../../../../CommutativeAlgebra/ChainOfDivisorsMultiplicityPrimeLeMultiplicityImageByFactorOrderIso.lean/declarations/element-of-chain-eq-pow-second-of-chain.md) | 150 | `result-track:808a822fadbf73a005432840e11ea784a73993846093b99bd4b70e1fdd401c9e` |
| 9 | `theorem` | [eq_pow_second_of_chain_of_has_chain](../../../../CommutativeAlgebra/ChainOfDivisorsMultiplicityPrimeLeMultiplicityImageByFactorOrderIso.lean/declarations/eq-pow-second-of-chain-of-has-chain.md) | 187 | `result-track:275d3ec3c5633851cffcac0138b472d3bc604d26e2b9701c2effdef32a82b1a3` |
| 10 | `theorem` | [isPrimePow_of_has_chain](../../../../CommutativeAlgebra/ChainOfDivisorsMultiplicityPrimeLeMultiplicityImageByFactorOrderIso.lean/declarations/isprimepow-of-has-chain.md) | 214 | `result-track:3f7508df92ce268434875fdf454de9335652370182e0dff1e5289aebf213d519` |
| 11 | `theorem` | [factor_orderIso_map_one_eq_bot](../../../../CommutativeAlgebra/ChainOfDivisorsMultiplicityPrimeLeMultiplicityImageByFactorOrderIso.lean/declarations/factor-orderiso-map-one-eq-bot.md) | 225 | `result-track:5ed1df0650057a031dfe3daecbdc9177fad86b3ca272440c86dea98be2a71864` |
| 12 | `theorem` | [coe_factor_orderIso_map_eq_one_iff](../../../../CommutativeAlgebra/ChainOfDivisorsMultiplicityPrimeLeMultiplicityImageByFactorOrderIso.lean/declarations/coe-factor-orderiso-map-eq-one-iff.md) | 235 | `result-track:f229e4ce53abb0344e398ea5fe496065289a55583866e209f8fd1c2392f11231` |
| 13 | `theorem` | [pow_image_of_prime_by_factor_orderIso_dvd](../../../../CommutativeAlgebra/ChainOfDivisorsMultiplicityPrimeLeMultiplicityImageByFactorOrderIso.lean/declarations/pow-image-of-prime-by-factor-orderiso-dvd.md) | 252 | `result-track:48ac2aa8b86ebd2de1a289e22581cdd5ee76ba6b1156b371df8fcec588de8320` |
| 14 | `theorem` | [map_prime_of_factor_orderIso](../../../../CommutativeAlgebra/ChainOfDivisorsMultiplicityPrimeLeMultiplicityImageByFactorOrderIso.lean/declarations/map-prime-of-factor-orderiso.md) | 284 | `result-track:e922eea2f3142929aa27641006106b49b6d60507c9adb989d2c1124aeb8d04b0` |
| 15 | `theorem` | [mem_normalizedFactors_factor_orderIso_of_mem_normalizedFactors](../../../../CommutativeAlgebra/ChainOfDivisorsMultiplicityPrimeLeMultiplicityImageByFactorOrderIso.lean/declarations/mem-normalizedfactors-factor-orderiso-of-mem-normalizedfactors.md) | 311 | `result-track:f7549425d66547ae2b84b17f989043e24622236b002e73f9b8542187c48251dc` |
| 16 | `theorem` | [multiplicity_prime_le_multiplicity_image_by_factor_orderIso](../../../../CommutativeAlgebra/ChainOfDivisorsMultiplicityPrimeLeMultiplicityImageByFactorOrderIso.lean/declarations/multiplicity-prime-le-multiplicity-image-by-factor-orderiso.md) | 324 | `result-track:6f15b828c4457bf6996e03d8d9deae8e91fe2b1202e5d37f9c7f639e97c280e5` |
| 17 | `theorem` | [multiplicity_prime_eq_multiplicity_image_by_factor_orderIso](../../../../CommutativeAlgebra/ChainOfDivisorsMultiplicityPrimeLeMultiplicityImageByFactorOrderIso.lean/declarations/multiplicity-prime-eq-multiplicity-image-by-factor-orderiso.md) | 339 | `result-track:bb5fa5f951bcabd46ffc8cb77410b82ba8f14b6917289efec3fe285e3571e13c` |
| 18 | `def` | [mkFactorOrderIsoOfFactorDvdEquiv](../../../../CommutativeAlgebra/ChainOfDivisorsMultiplicityPrimeLeMultiplicityImageByFactorOrderIso.lean/declarations/mkfactororderisooffactordvdequiv.md) | 361 | `declaration-track:cadfaed77bc6618f5be1ec160c4059a8933138bfd3a6a88add8f30f20a67f5a1` |
| 19 | `theorem` | [mem_normalizedFactors_factor_dvd_iso_of_mem_normalizedFactors](../../../../CommutativeAlgebra/ChainOfDivisorsMultiplicityPrimeLeMultiplicityImageByFactorOrderIso.lean/declarations/mem-normalizedfactors-factor-dvd-iso-of-mem-normalizedfactors.md) | 395 | `result-track:59f33617ef22dcab99e43e5ef0475218a38fa8cbe918919b684f425c91c59c39` |
| 20 | `theorem` | [multiplicity_factor_dvd_iso_eq_multiplicity_of_mem_normalizedFactors](../../../../CommutativeAlgebra/ChainOfDivisorsMultiplicityPrimeLeMultiplicityImageByFactorOrderIso.lean/declarations/multiplicity-factor-dvd-iso-eq-multiplicity-of-mem-normalizedfactors.md) | 431 | `result-track:7951e13f53a58bbb8f5c4df42b98895df8880db301c5b77f05a0b3b398b37e75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5fe7ddfd79845d5accd9273513054048809e7e3347b0e41f45b366580eec3c57 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant8f19fb39521ebe0372871f496d03beb9c7903e4a73f1ef81de92683da175a87a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant8f19fb39521ebe0372871f496d03beb9c7903e4a73f1ef81de92683da175a87a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
