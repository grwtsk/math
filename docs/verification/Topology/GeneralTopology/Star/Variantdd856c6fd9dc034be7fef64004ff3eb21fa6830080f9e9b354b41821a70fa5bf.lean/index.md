# Verification target: GRWTSK.Topology.GeneralTopology.Star.Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93db060648a3419cc805dccda8f52d11a024b60a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93db060648a3419cc805dccda8f52d11a024b60a`.

Source path: `GRWTSK/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Star` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.StarAlgHom` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Algebra` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean/declarations/instance--1e98a538d295c6fbcfccc3a8.md) | 40 | `declaration-track:1e98a538d295c6fbcfccc3a8f7402bf79e8aab97eb65ee041d1efedaf41ad1d5` |
| 2 | `theorem` | [coe_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean/declarations/coe-star--1c1fc7fa9765d33061e95bd9.md) | 43 | `result-track:1c1fc7fa9765d33061e95bd9a908b25706f2a920a146f723cc210eb51ba6289b` |
| 3 | `theorem` | [star_apply](../../../../../mathematics/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean/declarations/star-apply--f989fafa78bc1bef2762e992.md) | 47 | `result-track:f989fafa78bc1bef2762e992ea7a866f92fc240aa4358c63a2d39c87753aa7bb` |
| 4 | `instance` | [instTrivialStar](../../../../../mathematics/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean/declarations/insttrivialstar--c8c1edf343e0278ab414d083.md) | 50 | `declaration-track:c8c1edf343e0278ab414d0831e2d7f0786067064fe2cc2335726cbdd3da9d1da` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean/declarations/instance--01999f9d2c46d1b1391eaffb.md) | 55 | `declaration-track:01999f9d2c46d1b1391eaffb69d65bfe9121c2f8e0edd943a2d818d05157be3d` |
| 6 | `instance` | [starAddMonoid](../../../../../mathematics/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean/declarations/staraddmonoid--e5d1b83420ad11b26844f7c1.md) | 58 | `declaration-track:e5d1b83420ad11b26844f7c1e92f2e60bd8b3a3a667a15789fcfd04df01f43ec` |
| 7 | `instance` | [starMul](../../../../../mathematics/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean/declarations/starmul--edb2830114c11c4374179788.md) | 62 | `declaration-track:edb2830114c11c43741797886250d426f31647aa0790b5e5b9a2a5d3c5fcbab5` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean/declarations/instance--5feed343788585a198d21181.md) | 66 | `declaration-track:5feed343788585a198d211818b5651c0adc40eacd8080451f98d8eae007e5162` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean/declarations/instance--430e3860f87ec59580a7e18d.md) | 70 | `declaration-track:430e3860f87ec59580a7e18d2a24aa963235aa76065a618bb7e8c726ac98c494` |
| 10 | `def` | [compStarAlgHom'](../../../../../mathematics/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean/declarations/compstaralghom--f724240c032369bbca0b851c.md) | 89 | `declaration-track:f724240c032369bbca0b851c7f841090b1be1ab811fb358ed9b14c2fd078cf5b` |
| 11 | `theorem` | [compStarAlgHom'_id](../../../../../mathematics/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean/declarations/compstaralghom-id--cc2abf4b5460a407eb537f95.md) | 100 | `result-track:cc2abf4b5460a407eb537f951617e9909cf048f380688cc30880945097a7c0ff` |
| 12 | `theorem` | [compStarAlgHom'_comp](../../../../../mathematics/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean/declarations/compstaralghom-comp--aa47ef15d3f2464b1911ea2f.md) | 104 | `result-track:aa47ef15d3f2464b1911ea2f72f8144774acdae4fef0ca33c09e5796519e4ec9` |
| 13 | `def` | [compStarAlgHom](../../../../../mathematics/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean/declarations/compstaralghom--ff5b4fb670e8d6f4ad5743ce.md) | 123 | `declaration-track:ff5b4fb670e8d6f4ad5743ce5840bad6f9a8a2b8de061b5441cbb1c45a91fa89` |
| 14 | `lemma` | [compStarAlgHom_id](../../../../../mathematics/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean/declarations/compstaralghom-id--78678d1bbe699b0ce766e6ba.md) | 135 | `result-track:78678d1bbe699b0ce766e6bad46ee8e38eac3aa7a01d1755a56c54c8359575bd` |
| 15 | `lemma` | [compStarAlgHom_comp](../../../../../mathematics/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean/declarations/compstaralghom-comp--a3235a2e0b9328c14dea4ef7.md) | 138 | `result-track:a3235a2e0b9328c14dea4ef705a67fac901867371a76e5ea98b474b50a816a43` |
| 16 | `def` | [compStarAlgEquiv'](../../../../../mathematics/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean/declarations/compstaralgequiv--f7a4378300188f526eccf319.md) | 157 | `declaration-track:f7a4378300188f526eccf319cfe21a81c64c09f4c568ff173ce024d7b58abace` |
| 17 | `def` | [ContinuousMap.evalStarAlgHom](../../../../../mathematics/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean/declarations/continuousmap-evalstaralghom--3df50658a7723842fae1110c.md) | 178 | `declaration-track:3df50658a7723842fae1110c49faab35e11629c63064be154a801b57bf855afb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
