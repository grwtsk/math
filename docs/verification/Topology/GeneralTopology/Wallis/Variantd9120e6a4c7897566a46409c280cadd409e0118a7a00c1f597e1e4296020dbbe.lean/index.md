# Verification target: GRWTSK.Topology.GeneralTopology.Wallis.Variantd9120e6a4c7897566a46409c280cadd409e0118a7a00c1f597e1e4296020dbbe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72c1ced1777b3a8a1326d0cb71c1f960453d9d5c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Wallis/Variantd9120e6a4c7897566a46409c280cadd409e0118a7a00c1f597e1e4296020dbbe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variantd9120e6a4c7897566a46409c280cadd409e0118a7a00c1f597e1e4296020dbbe.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variantd9120e6a4c7897566a46409c280cadd409e0118a7a00c1f597e1e4296020dbbe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72c1ced1777b3a8a1326d0cb71c1f960453d9d5c`.

Source path: `GRWTSK/Topology/GeneralTopology/Wallis/Variantd9120e6a4c7897566a46409c280cadd409e0118a7a00c1f597e1e4296020dbbe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Wallis/Variantd9120e6a4c7897566a46409c280cadd409e0118a7a00c1f597e1e4296020dbbe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variantd9120e6a4c7897566a46409c280cadd409e0118a7a00c1f597e1e4296020dbbe.lean/declarations/macro-rules--d3de597fc36b42e446f25b8f.md) | 43 | `declaration-track:d3de597fc36b42e446f25b8f214f2771e61d25420624a1dc99bef9950a1a2e8a` |
| 2 | `def` | [W](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variantd9120e6a4c7897566a46409c280cadd409e0118a7a00c1f597e1e4296020dbbe.lean/declarations/w--e8b3d782889879cc7960022c.md) | 48 | `declaration-track:e8b3d782889879cc7960022cf046f5be095f4499573188b714e37c1081923651` |
| 3 | `theorem` | [W_succ](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variantd9120e6a4c7897566a46409c280cadd409e0118a7a00c1f597e1e4296020dbbe.lean/declarations/w-succ--d8dddb72d96745460e3be2ee.md) | 52 | `result-track:d8dddb72d96745460e3be2ee7e5eb742d81f172d4b246c86ceb8a0cb66cf7945` |
| 4 | `theorem` | [W_pos](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variantd9120e6a4c7897566a46409c280cadd409e0118a7a00c1f597e1e4296020dbbe.lean/declarations/w-pos--9f47657b99a2e024ce49b140.md) | 57 | `result-track:9f47657b99a2e024ce49b140778a1c752f0d122ea76885dd09e297e8d56fa976` |
| 5 | `theorem` | [W_eq_factorial_ratio](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variantd9120e6a4c7897566a46409c280cadd409e0118a7a00c1f597e1e4296020dbbe.lean/declarations/w-eq-factorial-ratio--9acfc83ec40bdbe2790121f8.md) | 64 | `result-track:9acfc83ec40bdbe2790121f876ec70da79b822cd25a2ad557df331559df28c46` |
| 6 | `theorem` | [W_eq_integral_sin_pow_div_integral_sin_pow](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variantd9120e6a4c7897566a46409c280cadd409e0118a7a00c1f597e1e4296020dbbe.lean/declarations/w-eq-integral-sin-pow-div-integral-sin-pow--a3b1b651e63fbff01bac73e3.md) | 80 | `result-track:a3b1b651e63fbff01bac73e3cfa0982291394728776348ff8176a8f7d93a0859` |
| 7 | `theorem` | [W_le](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variantd9120e6a4c7897566a46409c280cadd409e0118a7a00c1f597e1e4296020dbbe.lean/declarations/w-le--69495f50ba000008298cf9c0.md) | 87 | `result-track:69495f50ba000008298cf9c08f04e62d68f2b4c4566a1c6d7a79619398bf5c34` |
| 8 | `theorem` | [le_W](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variantd9120e6a4c7897566a46409c280cadd409e0118a7a00c1f597e1e4296020dbbe.lean/declarations/le-w--ddeca159b4e5543e4be0f70b.md) | 93 | `result-track:ddeca159b4e5543e4be0f70bca32d07b70049e023f4d99ebb149d912e04790f2` |
| 9 | `theorem` | [tendsto_W_nhds_pi_div_two](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variantd9120e6a4c7897566a46409c280cadd409e0118a7a00c1f597e1e4296020dbbe.lean/declarations/tendsto-w-nhds-pi-div-two--c3e187bb4d2cc37aaaac9862.md) | 103 | `result-track:c3e187bb4d2cc37aaaac986239860886f66d100b3f9d2e3af747aa5ad9c61700` |
| 10 | `theorem` | [Real.tendsto_prod_pi_div_two](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variantd9120e6a4c7897566a46409c280cadd409e0118a7a00c1f597e1e4296020dbbe.lean/declarations/real-tendsto-prod-pi-div-two--a541398d59210cf6b61104f3.md) | 124 | `result-track:a541398d59210cf6b61104f32ed46232d7297d7f883afff8617f2aefd6bc5ad3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
