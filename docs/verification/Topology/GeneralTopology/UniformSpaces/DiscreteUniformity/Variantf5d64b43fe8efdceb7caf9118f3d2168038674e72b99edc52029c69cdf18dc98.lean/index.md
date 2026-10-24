# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.DiscreteUniformity.Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "817af4dd37a841007345f37a1b782ec660fc8e6a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `817af4dd37a841007345f37a1b782ec660fc8e6a`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.Cauchy` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [DiscreteUniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.lean/declarations/discreteuniformity--94ad46029c9d799f711dd7d2.md) | 24 | `declaration-track:94ad46029c9d799f711dd7d2e6acf3afde27e4252f1cb40e055b4b81715bc462` |
| 2 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.lean/declarations/instance--37c2fd7671dda5058b64722c.md) | 30 | `declaration-track:37c2fd7671dda5058b64722c68bff56297cb8ab0fc0d2c116a2c26c79195196d` |
| 3 | `theorem` | [_root_.discreteUniformity_iff_eq_principal_idRel](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.lean/declarations/root-discreteuniformity-iff-eq-principal-idrel--b9742c896d0d09d8cebad251.md) | 35 | `result-track:b9742c896d0d09d8cebad251e56286ae0a6e63c315410679090ea8770863011e` |
| 4 | `theorem` | [eq_principal_idRel](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.lean/declarations/eq-principal-idrel--3d494cded61bf8c6df49a586.md) | 39 | `result-track:3d494cded61bf8c6df49a5867acbb0fa1875975388997d478dc40df98e3a8411` |
| 5 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.lean/declarations/instance--c95a535404d03b003e761561.md) | 43 | `declaration-track:c95a535404d03b003e761561b38e654916d6c3def311258cbd7fe9cb21ae658e` |
| 6 | `theorem` | [_root_.discreteUniformity_iff_idRel_mem_uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.lean/declarations/root-discreteuniformity-iff-idrel-mem-uniformity--04a6dd0686f23d73c5724e76.md) | 47 | `result-track:04a6dd0686f23d73c5724e76917eaac8ec82823f0b5dc98552846b3d3f81b509` |
| 7 | `theorem` | [idRel_mem_uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.lean/declarations/idrel-mem-uniformity--f01d8614d60288a0879f34be.md) | 51 | `result-track:f01d8614d60288a0879f34be3481c1f9c07d890777aa963127b9f4506ac4afb0` |
| 8 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.lean/declarations/instance--d87e7a98592a0b342e7448ae.md) | 56 | `declaration-track:d87e7a98592a0b342e7448aeb069344fc94d602e34e3e30986283deb06a9772f` |
| 9 | `theorem` | [uniformContinuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.lean/declarations/uniformcontinuous--b6f2a2858a8d747a072725de.md) | 63 | `result-track:b6f2a2858a8d747a072725de43ffcae61f3386366c0c19988f2dacabdd629110` |
| 10 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.lean/declarations/instance--6c13cc84c68bb85c9733617b.md) | 69 | `declaration-track:6c13cc84c68bb85c9733617b19c640140b3fa6c7d4cd875f4442f7ce844ddff6` |
| 11 | `theorem` | [eq_pure_of_cauchy](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.lean/declarations/eq-pure-of-cauchy--71b133e3721fe4c9e92fcdf2.md) | 75 | `result-track:71b133e3721fe4c9e92fcdf20c8c0db48f3a3824aa509f6f8c571c0662921398` |
| 12 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.lean/declarations/instance--2e094494bcf83a40c469ab23.md) | 87 | `declaration-track:2e094494bcf83a40c469ab23895295495d622b60c0c8b8c9d27abb44aba07786` |
| 13 | `def` | [cauchyConst](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.lean/declarations/cauchyconst--32b93df47e7da8865815c708.md) | 95 | `declaration-track:32b93df47e7da8865815c7081abc3ff4509d424de4c4ffc52959979e004048b3` |
| 14 | `theorem` | [eq_pure_cauchyConst](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.lean/declarations/eq-pure-cauchyconst--bc83314688e4011cadf8a62d.md) | 101 | `result-track:bc83314688e4011cadf8a62df24625d53a0163550c1163bd48dc9bc5d5d253fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
