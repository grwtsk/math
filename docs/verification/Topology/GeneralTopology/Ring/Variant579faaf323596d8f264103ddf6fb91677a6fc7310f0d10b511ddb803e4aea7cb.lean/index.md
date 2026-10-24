# Verification target: GRWTSK.Topology.GeneralTopology.Ring.Variant579faaf323596d8f264103ddf6fb91677a6fc7310f0d10b511ddb803e4aea7cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6cb48c36b5a31625d333d91321569626d0dc1a3",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Ring/Variant579faaf323596d8f264103ddf6fb91677a6fc7310f0d10b511ddb803e4aea7cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant579faaf323596d8f264103ddf6fb91677a6fc7310f0d10b511ddb803e4aea7cb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant579faaf323596d8f264103ddf6fb91677a6fc7310f0d10b511ddb803e4aea7cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6cb48c36b5a31625d333d91321569626d0dc1a3`.

Source path: `GRWTSK/Topology/GeneralTopology/Ring/Variant579faaf323596d8f264103ddf6fb91677a6fc7310f0d10b511ddb803e4aea7cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Ring/Variant579faaf323596d8f264103ddf6fb91677a6fc7310f0d10b511ddb803e4aea7cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Group` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Tendsto.atTop_mul_atTop₀](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant579faaf323596d8f264103ddf6fb91677a6fc7310f0d10b511ddb803e4aea7cb.lean/declarations/tendsto-attop-mul-attop--c6e3389c60a04f10a62a3c6d.md) | 21 | `result-track:c6e3389c60a04f10a62a3c6d08c5661edd36f571e4d0300928936f85a452f33c` |
| 2 | `theorem` | [tendsto_mul_self_atTop](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant579faaf323596d8f264103ddf6fb91677a6fc7310f0d10b511ddb803e4aea7cb.lean/declarations/tendsto-mul-self-attop--e4f1fa1e38ef4406b07f6640.md) | 27 | `result-track:e4f1fa1e38ef4406b07f66400523d280ac0f0e3f2ae5dcb0236d41cfeddbf656` |
| 3 | `theorem` | [tendsto_pow_atTop](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant579faaf323596d8f264103ddf6fb91677a6fc7310f0d10b511ddb803e4aea7cb.lean/declarations/tendsto-pow-attop--90e2a5c93304ff93b05810d0.md) | 32 | `result-track:90e2a5c93304ff93b05810d0f6a16d5dd9c9373f839add9caa6c16693edcceb9` |
| 4 | `theorem` | [zero_pow_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant579faaf323596d8f264103ddf6fb91677a6fc7310f0d10b511ddb803e4aea7cb.lean/declarations/zero-pow-eventuallyeq--264ed44b21f900c9fb1bb34f.md) | 37 | `result-track:264ed44b21f900c9fb1bb34f3a1b8cb746636218d356ba18b6c840d580ba907e` |
| 5 | `theorem` | [Tendsto.atTop_mul_atBot₀](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant579faaf323596d8f264103ddf6fb91677a6fc7310f0d10b511ddb803e4aea7cb.lean/declarations/tendsto-attop-mul-atbot--f2e09a6518978906486288e1.md) | 45 | `result-track:f2e09a6518978906486288e10199b06e57fd6b4e69312e9ca6fdea54a108058d` |
| 6 | `theorem` | [Tendsto.atBot_mul_atTop₀](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant579faaf323596d8f264103ddf6fb91677a6fc7310f0d10b511ddb803e4aea7cb.lean/declarations/tendsto-atbot-mul-attop--e60c33a5d698b831808a146a.md) | 54 | `result-track:e60c33a5d698b831808a146a454b3d4d6ba25455a2c4e4784686a562105073f7` |
| 7 | `theorem` | [Tendsto.atBot_mul_atBot₀](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant579faaf323596d8f264103ddf6fb91677a6fc7310f0d10b511ddb803e4aea7cb.lean/declarations/tendsto-atbot-mul-atbot--d8ce71a6b1cec6d1e2c8be19.md) | 64 | `result-track:d8ce71a6b1cec6d1e2c8be195ff6e47184bed5c63d4b5d43dbadeeab6eb0b3e7` |
| 8 | `theorem` | [Tendsto.atTop_of_const_mul₀](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant579faaf323596d8f264103ddf6fb91677a6fc7310f0d10b511ddb803e4aea7cb.lean/declarations/tendsto-attop-of-const-mul--6f24e9d96889de440459642a.md) | 76 | `result-track:6f24e9d96889de440459642a96bbf9625b0e54e98da76086df79280e6314fff6` |
| 9 | `theorem` | [Tendsto.atTop_of_mul_const₀](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant579faaf323596d8f264103ddf6fb91677a6fc7310f0d10b511ddb803e4aea7cb.lean/declarations/tendsto-attop-of-mul-const--309ca8c6058b4589273ae5ba.md) | 81 | `result-track:309ca8c6058b4589273ae5baf5f0bcc64b69bd6a62c8cf61d9e66d41206c033f` |
| 10 | `theorem` | [tendsto_pow_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant579faaf323596d8f264103ddf6fb91677a6fc7310f0d10b511ddb803e4aea7cb.lean/declarations/tendsto-pow-attop-iff--1b34890bb933772d55c993ac.md) | 87 | `result-track:1b34890bb933772d55c993ac0964f35f14de2e1617b0f8ca3de60aee72fdd94b` |
| 11 | `theorem` | [not_tendsto_pow_atTop_atBot](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant579faaf323596d8f264103ddf6fb91677a6fc7310f0d10b511ddb803e4aea7cb.lean/declarations/not-tendsto-pow-attop-atbot--7329d2d552bbb7623fd636d7.md) | 92 | `result-track:7329d2d552bbb7623fd636d7a64a11f8b82ec39200a92dd2a21db2984c4fd0ed` |
| 12 | `theorem` | [exists_lt_mul_self](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant579faaf323596d8f264103ddf6fb91677a6fc7310f0d10b511ddb803e4aea7cb.lean/declarations/exists-lt-mul-self--7945534252849c5adf022b95.md) | 103 | `result-track:7945534252849c5adf022b95d48996c3a1a24300b0dccd157c235fb25c19029b` |
| 13 | `theorem` | [exists_le_mul_self](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant579faaf323596d8f264103ddf6fb91677a6fc7310f0d10b511ddb803e4aea7cb.lean/declarations/exists-le-mul-self--1e1b7b5f089e44a2fda80732.md) | 106 | `result-track:1e1b7b5f089e44a2fda8073283a063a10f1720f469aa75745a95628d46f338ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
