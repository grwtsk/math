# Verification target: GRWTSK.Topology.GeneralTopology.Ring.Variant6fcfd20e03128b4a6c6de0fe593f1209ef217fc1ffebfce2a0802addb6740329

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd2905f82d3ccf7f154e498ec7fada879ea2172c",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Ring/Variant6fcfd20e03128b4a6c6de0fe593f1209ef217fc1ffebfce2a0802addb6740329.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant6fcfd20e03128b4a6c6de0fe593f1209ef217fc1ffebfce2a0802addb6740329.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant6fcfd20e03128b4a6c6de0fe593f1209ef217fc1ffebfce2a0802addb6740329.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd2905f82d3ccf7f154e498ec7fada879ea2172c`.

Source path: `GRWTSK/Topology/GeneralTopology/Ring/Variant6fcfd20e03128b4a6c6de0fe593f1209ef217fc1ffebfce2a0802addb6740329.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Ring/Variant6fcfd20e03128b4a6c6de0fe593f1209ef217fc1ffebfce2a0802addb6740329.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Group` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Tendsto.atTop_mul_atTop₀](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant6fcfd20e03128b4a6c6de0fe593f1209ef217fc1ffebfce2a0802addb6740329.lean/declarations/tendsto-attop-mul-attop--fc48e1051944a9e066e4de69.md) | 29 | `result-track:fc48e1051944a9e066e4de690f76ff6fd8ea770869cd537beff782649948f263` |
| 2 | `theorem` | [tendsto_mul_self_atTop](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant6fcfd20e03128b4a6c6de0fe593f1209ef217fc1ffebfce2a0802addb6740329.lean/declarations/tendsto-mul-self-attop--3b92066ec39e58e577277ef6.md) | 35 | `result-track:3b92066ec39e58e577277ef6790fc3fdba0ea30967b70cb780080ee6c94a35c5` |
| 3 | `theorem` | [tendsto_pow_atTop](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant6fcfd20e03128b4a6c6de0fe593f1209ef217fc1ffebfce2a0802addb6740329.lean/declarations/tendsto-pow-attop--ce4e6288c8bb4ea0b84a1643.md) | 40 | `result-track:ce4e6288c8bb4ea0b84a164323387983b45dc3c5c3d5a3acf0c608c6d97fef4b` |
| 4 | `theorem` | [zero_pow_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant6fcfd20e03128b4a6c6de0fe593f1209ef217fc1ffebfce2a0802addb6740329.lean/declarations/zero-pow-eventuallyeq--4510aab1aa5b768ce8117b78.md) | 45 | `result-track:4510aab1aa5b768ce8117b78978450586c29ee24dae5e5e31b8723536bc398bb` |
| 5 | `theorem` | [Tendsto.atTop_mul_atBot₀](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant6fcfd20e03128b4a6c6de0fe593f1209ef217fc1ffebfce2a0802addb6740329.lean/declarations/tendsto-attop-mul-atbot--3ad8bde96852da27575278e0.md) | 53 | `result-track:3ad8bde96852da27575278e0875805e702cc089dc536cc584955dae1ebcbbd97` |
| 6 | `theorem` | [Tendsto.atBot_mul_atTop₀](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant6fcfd20e03128b4a6c6de0fe593f1209ef217fc1ffebfce2a0802addb6740329.lean/declarations/tendsto-atbot-mul-attop--a33782ce12d2e416c2636dc2.md) | 62 | `result-track:a33782ce12d2e416c2636dc259b9e3c9b7f34d86dec6dfde2fbfcf610c76757d` |
| 7 | `theorem` | [Tendsto.atBot_mul_atBot₀](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant6fcfd20e03128b4a6c6de0fe593f1209ef217fc1ffebfce2a0802addb6740329.lean/declarations/tendsto-atbot-mul-atbot--962fac020bf118c2a2803a59.md) | 72 | `result-track:962fac020bf118c2a2803a5981bb2ab339cf449ce9c02f14f9315e19f00470ca` |
| 8 | `theorem` | [Tendsto.atTop_of_const_mul₀](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant6fcfd20e03128b4a6c6de0fe593f1209ef217fc1ffebfce2a0802addb6740329.lean/declarations/tendsto-attop-of-const-mul--85e97d0313c75fad5614ac50.md) | 84 | `result-track:85e97d0313c75fad5614ac5010623b0a0db01f6c85632d0a6e39b79d0c60787a` |
| 9 | `theorem` | [Tendsto.atTop_of_mul_const₀](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant6fcfd20e03128b4a6c6de0fe593f1209ef217fc1ffebfce2a0802addb6740329.lean/declarations/tendsto-attop-of-mul-const--b1ed1367755fe9d5a0f05a78.md) | 89 | `result-track:b1ed1367755fe9d5a0f05a7861e342f5f207c2e7f50853344f412b648d526e90` |
| 10 | `theorem` | [tendsto_pow_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant6fcfd20e03128b4a6c6de0fe593f1209ef217fc1ffebfce2a0802addb6740329.lean/declarations/tendsto-pow-attop-iff--759379d13c02f420198e0086.md) | 95 | `result-track:759379d13c02f420198e0086477668e0f2208572558f1586b1f00a19542eac22` |
| 11 | `theorem` | [not_tendsto_pow_atTop_atBot](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant6fcfd20e03128b4a6c6de0fe593f1209ef217fc1ffebfce2a0802addb6740329.lean/declarations/not-tendsto-pow-attop-atbot--05ca3ae77973d7dd7591180e.md) | 100 | `result-track:05ca3ae77973d7dd7591180ed6f9719048880fbee4e98ff2eadad22048b7528b` |
| 12 | `theorem` | [exists_lt_mul_self](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant6fcfd20e03128b4a6c6de0fe593f1209ef217fc1ffebfce2a0802addb6740329.lean/declarations/exists-lt-mul-self--a2f96b931ebe553bd55af82b.md) | 111 | `result-track:a2f96b931ebe553bd55af82b8560224557bdec5f354847993a9518ea5bfc88a1` |
| 13 | `theorem` | [exists_le_mul_self](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant6fcfd20e03128b4a6c6de0fe593f1209ef217fc1ffebfce2a0802addb6740329.lean/declarations/exists-le-mul-self--4319cc89d24c97df0522339e.md) | 114 | `result-track:4319cc89d24c97df0522339e83eeb4126140a473b7dc8fcc28fdb74d69a21c8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
