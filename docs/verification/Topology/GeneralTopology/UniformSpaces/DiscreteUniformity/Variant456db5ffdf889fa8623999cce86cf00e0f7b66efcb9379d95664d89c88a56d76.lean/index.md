# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.DiscreteUniformity.Variant456db5ffdf889fa8623999cce86cf00e0f7b66efcb9379d95664d89c88a56d76

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "455ca0a63f9068fd7418d0b9dca60e6f5d67a99c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variant456db5ffdf889fa8623999cce86cf00e0f7b66efcb9379d95664d89c88a56d76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variant456db5ffdf889fa8623999cce86cf00e0f7b66efcb9379d95664d89c88a56d76.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variant456db5ffdf889fa8623999cce86cf00e0f7b66efcb9379d95664d89c88a56d76.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `455ca0a63f9068fd7418d0b9dca60e6f5d67a99c`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variant456db5ffdf889fa8623999cce86cf00e0f7b66efcb9379d95664d89c88a56d76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variant456db5ffdf889fa8623999cce86cf00e0f7b66efcb9379d95664d89c88a56d76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.Cauchy` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [DiscreteUniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variant456db5ffdf889fa8623999cce86cf00e0f7b66efcb9379d95664d89c88a56d76.lean/declarations/discreteuniformity--618c8d8479865a939e4e130f.md) | 32 | `declaration-track:618c8d8479865a939e4e130f6a274bdc8d1f2cb7a082146e229ae4163b29c260` |
| 2 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variant456db5ffdf889fa8623999cce86cf00e0f7b66efcb9379d95664d89c88a56d76.lean/declarations/instance--d198b4390a077a2bf5c2c46c.md) | 38 | `declaration-track:d198b4390a077a2bf5c2c46c694affc1448d2e27275622f937d17a6fdf0d57d0` |
| 3 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.UniformSpaces.DiscreteUniformity.Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.discreteUniformity_iff_eq_principal_idRel](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variant456db5ffdf889fa8623999cce86cf00e0f7b66efcb9379d95664d89c88a56d76.lean/declarations/root-grwtsk-topology-generaltopology-uniformspaces-discreteuniformity-va--ae956fbfd9a456a94424206b.md) | 43 | `result-track:ae956fbfd9a456a94424206be852887c9701efdb8c0bd48562a12ceeac1e664f` |
| 4 | `theorem` | [eq_principal_idRel](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variant456db5ffdf889fa8623999cce86cf00e0f7b66efcb9379d95664d89c88a56d76.lean/declarations/eq-principal-idrel--4797e4adb8bfa086211bb578.md) | 47 | `result-track:4797e4adb8bfa086211bb57833354d1a6696dfa8fab36256d0593eb5daa3519c` |
| 5 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variant456db5ffdf889fa8623999cce86cf00e0f7b66efcb9379d95664d89c88a56d76.lean/declarations/instance--413cbd9f5a882f17dc001b0b.md) | 51 | `declaration-track:413cbd9f5a882f17dc001b0b2f1de7d93c13f2ab3f8ab9da0cd806e83057dfcd` |
| 6 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.UniformSpaces.DiscreteUniformity.Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.discreteUniformity_iff_idRel_mem_uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variant456db5ffdf889fa8623999cce86cf00e0f7b66efcb9379d95664d89c88a56d76.lean/declarations/root-grwtsk-topology-generaltopology-uniformspaces-discreteuniformity-va--22e6c9f4be64f7ed9d71d59c.md) | 55 | `result-track:22e6c9f4be64f7ed9d71d59ce416b8a02b956a11db0cdca24c55505dbbbfcefe` |
| 7 | `theorem` | [idRel_mem_uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variant456db5ffdf889fa8623999cce86cf00e0f7b66efcb9379d95664d89c88a56d76.lean/declarations/idrel-mem-uniformity--b7f22dbe4f4a81799c5274fc.md) | 59 | `result-track:b7f22dbe4f4a81799c5274fcf5a6fa0401352a47f17be62f6a21030d86de10bf` |
| 8 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variant456db5ffdf889fa8623999cce86cf00e0f7b66efcb9379d95664d89c88a56d76.lean/declarations/instance--1b12e0a845b198b9c4fa4d59.md) | 64 | `declaration-track:1b12e0a845b198b9c4fa4d597b6268588d6c44b6aa0e7954530af6fb75bdf8ad` |
| 9 | `theorem` | [uniformContinuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variant456db5ffdf889fa8623999cce86cf00e0f7b66efcb9379d95664d89c88a56d76.lean/declarations/uniformcontinuous--62a613c8f365eacd50398ab8.md) | 71 | `result-track:62a613c8f365eacd50398ab897c9979db522c03d60435eae8fd745d9cbfff461` |
| 10 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variant456db5ffdf889fa8623999cce86cf00e0f7b66efcb9379d95664d89c88a56d76.lean/declarations/instance--8ee52617ce27fab5327c669b.md) | 77 | `declaration-track:8ee52617ce27fab5327c669babbd7a15c1e43dcde07e8d8fce10fd2ad8c6c368` |
| 11 | `theorem` | [eq_pure_of_cauchy](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variant456db5ffdf889fa8623999cce86cf00e0f7b66efcb9379d95664d89c88a56d76.lean/declarations/eq-pure-of-cauchy--60945753cf53891adf926de7.md) | 83 | `result-track:60945753cf53891adf926de7b777076c7ebfa876f18366fe9ed9d3129ffa5e34` |
| 12 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variant456db5ffdf889fa8623999cce86cf00e0f7b66efcb9379d95664d89c88a56d76.lean/declarations/instance--c24c59763f246e66599a085d.md) | 95 | `declaration-track:c24c59763f246e66599a085d142ba2b2398b2a535fe43e316a55e31a6d4d7ee3` |
| 13 | `def` | [cauchyConst](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variant456db5ffdf889fa8623999cce86cf00e0f7b66efcb9379d95664d89c88a56d76.lean/declarations/cauchyconst--ad67bc033530647e8bbe61fc.md) | 103 | `declaration-track:ad67bc033530647e8bbe61fc4cab52ee80a7092eefb6e7cf8c7b73782801707c` |
| 14 | `theorem` | [eq_pure_cauchyConst](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variant456db5ffdf889fa8623999cce86cf00e0f7b66efcb9379d95664d89c88a56d76.lean/declarations/eq-pure-cauchyconst--8ed1ef20376cad7bc22e81ee.md) | 109 | `result-track:8ed1ef20376cad7bc22e81ee3813b0e8ee29407f2d50b3276cc98227becd4231` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
