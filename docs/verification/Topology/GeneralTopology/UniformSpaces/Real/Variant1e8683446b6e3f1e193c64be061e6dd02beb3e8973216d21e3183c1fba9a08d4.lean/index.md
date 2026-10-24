# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.Real.Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47b0664cc2c86c2ef699f8a5b65056c4cfe4ae20",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47b0664cc2c86c2ef699f8a5b65056c4cfe4ae20`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.EReal.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Field` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bornology.Real` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Int` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.MonotoneContinuity` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Real` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Real` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean/declarations/instance--82a9f18a626822043e79e020.md) | 42 | `declaration-track:82a9f18a626822043e79e02017794a16e65fda9e6146fb82778ff37eabaf8401` |
| 2 | `theorem` | [Real.uniformContinuous_add](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean/declarations/real-uniformcontinuous-add--913da0ebea165f831a01b401.md) | 44 | `result-track:913da0ebea165f831a01b401ba19a9f5aa6d61f4f2dc8e11cf8ec8d43faffd35` |
| 3 | `theorem` | [Real.uniformContinuous_neg](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean/declarations/real-uniformcontinuous-neg--c709057e8a965dc6897f7ca2.md) | 51 | `result-track:c709057e8a965dc6897f7ca20d9b178856c4185e7a7af2ce6c83f4cc6b1fb16d` |
| 4 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean/declarations/instance--dcdc122cfcd58b63a7994f8c.md) | 55 | `declaration-track:dcdc122cfcd58b63a7994f8caa1551d2d65464dbaa53c54fc184e59dbe0edca9` |
| 5 | `theorem` | [Real.uniformContinuous_const_mul](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean/declarations/real-uniformcontinuous-const-mul--4507da72f311e247a970cf12.md) | 58 | `result-track:4507da72f311e247a970cf128ff51bf77e99f2ea6a827c4dbe476de6b8d3cba4` |
| 6 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean/declarations/instance--cd26c0bd8e0d7a26b57efc7a.md) | 63 | `declaration-track:cd26c0bd8e0d7a26b57efc7a7da317edccfb0882ad7a96fd45c6ba052332837c` |
| 7 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean/declarations/instance--3678713ff2c325ec2b859690.md) | 64 | `declaration-track:3678713ff2c325ec2b859690d1158aacfae70ad5c1ffea65f3f826e23fb75267` |
| 8 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean/declarations/instance--ad6d3c62b558eb2333725ce3.md) | 65 | `declaration-track:ad6d3c62b558eb2333725ce3fcc3c19c2536a75501829301503b70326367bf53` |
| 9 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean/declarations/instance--aaf6328fd4973feb7ecf6384.md) | 69 | `declaration-track:aaf6328fd4973feb7ecf63840efa03a7dfde1b3ce9b3893b9f8dcddc7bea2bee` |
| 10 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean/declarations/instance--13b14d23f4c252e880bf11a9.md) | 86 | `declaration-track:13b14d23f4c252e880bf11a97eaacc7dde68e3570244402f4c64f54d7aba8719` |
| 11 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean/declarations/instance--41b1a8968a1ec1dfdc69bcb1.md) | 90 | `declaration-track:41b1a8968a1ec1dfdc69bcb14ed1fcd808537f6d520bcebbf9a8debb635af40c` |
| 12 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean/declarations/instance--2030903f19be0396d70fd0a3.md) | 93 | `declaration-track:2030903f19be0396d70fd0a34ca8adb5abb1f0c0c4ce185996a64b77e7879acc` |
| 13 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean/declarations/instance--1d759ddaa702e38fc9153d97.md) | 97 | `declaration-track:1d759ddaa702e38fc9153d97bfa8165e8bc29ae29260b5eebd50b09d40dabe06` |
| 14 | `theorem` | [isEmbedding_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean/declarations/isembedding-coe--e303a2959510c97fd3bea195.md) | 107 | `result-track:e303a2959510c97fd3bea195d8eac2c8e1ed68e2965be2a9aa1e85ebca3b19cb` |
| 15 | `theorem` | [tendsto_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean/declarations/tendsto-coe--5a18611e47fef354d157244f.md) | 111 | `result-track:5a18611e47fef354d157244f84a3d9d96aca5252662dc8ecca8b671714fb6e3f` |
| 16 | `theorem` | [isOpenEmbedding_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean/declarations/isopenembedding-coe--c8682ad641c6eaa1747354bb.md) | 115 | `result-track:c8682ad641c6eaa1747354bbfbac4448878cce2f910ffe7cf4daa0aaca9648dd` |
| 17 | `theorem` | [nhds_coe_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean/declarations/nhds-coe-coe--dd543cc6d47f9677f050e50d.md) | 118 | `result-track:dd543cc6d47f9677f050e50d683547c1dfe447e12cf5884affbe50c9a4107605` |
| 18 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean/declarations/instance--a39be4c61f835fb7b1f3d1e9.md) | 122 | `declaration-track:a39be4c61f835fb7b1f3d1e9a8c8b17dd2587814a5b00188a32e1294ff2168ce` |
| 19 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean/declarations/instance--af78e2e5ca9b1d2e934d9286.md) | 131 | `declaration-track:af78e2e5ca9b1d2e934d92861c9c5785beb3ca03bd5c8e8b1287e54998215230` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
