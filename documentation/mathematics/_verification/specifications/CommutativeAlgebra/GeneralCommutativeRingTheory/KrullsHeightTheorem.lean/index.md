# Verification target: Krulls Height Theorem

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7224db578768f05f3dcd1859c50a2b7dabb63cf3",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/KrullsHeightTheorem/Variant6c8aa75b22dfcf49d00568a09636719816c0d904d6b0be6752be17aa5439a63e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheorem.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheorem.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7224db578768f05f3dcd1859c50a2b7dabb63cf3`.

Source path: `GRWTSK/Algebra/KrullsHeightTheorem/Variant6c8aa75b22dfcf49d00568a09636719816c0d904d6b0be6752be17aa5439a63e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/KrullsHeightTheorem/Variant6c8aa75b22dfcf49d00568a09636719816c0d904d6b0be6752be17aa5439a63e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.HopkinsLevitzki` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Height` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Submodule` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nakayama` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsLocalRing.quotient_artinian_of_mem_minimalPrimes_of_isLocalRing](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheorem.lean/declarations/islocalring-quotient-artinian-of-mem-minimalprimes-of-islocalring.md) | 42 | `result-track:80d6532d26c38b623812682b2d55ca8ecf638a5788ed176e6dd0414bd1201878` |
| 2 | `lemma` | [Ideal.height_le_one_of_isPrincipal_of_mem_minimalPrimes_of_isLocalRing](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheorem.lean/declarations/ideal-height-le-one-of-isprincipal-of-mem-minimalprimes-of-islocalring.md) | 53 | `result-track:4588ae17e1347cd2fa4841e3cdd57183ce09863e1d11b89092e8458946ab62e1` |
| 3 | `lemma` | [Ideal.height_le_one_of_isPrincipal_of_mem_minimalPrimes](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheorem.lean/declarations/ideal-height-le-one-of-isprincipal-of-mem-minimalprimes.md) | 101 | `result-track:73be1d6bf085c56ea28205af9c2eb36e9e073756d08d58ce411967c8ce02ecf1` |
| 4 | `theorem` | [Ideal.mem_minimalPrimes_span_of_mem_minimalPrimes_span_insert](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheorem.lean/declarations/ideal-mem-minimalprimes-span-of-mem-minimalprimes-span-insert.md) | 114 | `result-track:cc38a47e502ff1710f4a43e8b7b501fbc071d7fb2f6625d99405d13c776284b5` |
| 5 | `lemma` | [Ideal.height_le_spanRank_toENat_of_mem_minimal_primes](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheorem.lean/declarations/ideal-height-le-spanrank-toenat-of-mem-minimal-primes.md) | 152 | `result-track:6275f93ac97bd3e8ecfb2cbbe0a7867246e350698676c61a826dafdb8f1e5337` |
| 6 | `lemma` | [Ideal.height_le_spanRank_toENat](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheorem.lean/declarations/ideal-height-le-spanrank-toenat.md) | 206 | `result-track:399a0fce1d601d63bd2166c95cf03def0ab0d93bca28cfb42c949bfe94151c6b` |
| 7 | `lemma` | [Ideal.height_le_spanFinrank](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheorem.lean/declarations/ideal-height-le-spanfinrank.md) | 213 | `result-track:8278e7afb3279016f0f4ce7f5553310a7aa7587511a8d2326de4da6b0d4f3142` |
| 8 | `lemma` | [Ideal.height_le_spanRank](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheorem.lean/declarations/ideal-height-le-spanrank.md) | 219 | `result-track:4f165bfe693f3e1a0e44d1d7828b5f63312d1456c3518e63444ffa6ff65818ad` |
| 9 | `instance` | [Ideal.finiteHeight_of_isNoetherianRing](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheorem.lean/declarations/ideal-finiteheight-of-isnoetherianring.md) | 225 | `declaration-track:dcaf959250df67fc7234c927db6a397d187db749499472fd612e272c9748ce62` |
| 10 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheorem.lean/declarations/instance.md) | 229 | `declaration-track:80878e25bf3c2fbe7cfb98e2c46158e829a0a533e8714f53b4b5f9afc1f3c3f6` |
| 11 | `lemma` | [Ideal.exists_spanRank_eq_and_height_eq](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheorem.lean/declarations/ideal-exists-spanrank-eq-and-height-eq.md) | 239 | `result-track:83045456580c01f6965801dd87517e4673ec84acf8c33ab7fc48394e8a350411` |
| 12 | `lemma` | [Ideal.height_le_iff_exists_minimalPrimes](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheorem.lean/declarations/ideal-height-le-iff-exists-minimalprimes.md) | 254 | `result-track:1b9f72b5b3503ca3e7577d9776e43494b7760dc924a6e8586e5325a630fb0357` |
| 13 | `lemma` | [Ideal.exists_finset_card_eq_height_of_isNoetherianRing](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheorem.lean/declarations/ideal-exists-finset-card-eq-height-of-isnoetherianring.md) | 268 | `result-track:6a0dc633783912ff16b0d168dae6be0366c6fb5bd99f3185c8270b1397490387` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d481cee083a3a9fdf1d755c876519171395eed91d11e5927849ad3431b8843f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/KrullsHeightTheorem/Variant6c8aa75b22dfcf49d00568a09636719816c0d904d6b0be6752be17aa5439a63e.lean","GRWTSK/_verification/specifications/Algebra/KrullsHeightTheorem/Variant6c8aa75b22dfcf49d00568a09636719816c0d904d6b0be6752be17aa5439a63e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
