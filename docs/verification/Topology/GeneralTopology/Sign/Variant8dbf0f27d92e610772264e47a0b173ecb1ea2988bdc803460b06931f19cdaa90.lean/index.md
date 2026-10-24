# Verification target: GRWTSK.Topology.GeneralTopology.Sign.Variant8dbf0f27d92e610772264e47a0b173ecb1ea2988bdc803460b06931f19cdaa90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e015a3e8da2b2c2d5737dfe157df17085d5968db",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sign/Variant8dbf0f27d92e610772264e47a0b173ecb1ea2988bdc803460b06931f19cdaa90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sign/Variant8dbf0f27d92e610772264e47a0b173ecb1ea2988bdc803460b06931f19cdaa90.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sign/Variant8dbf0f27d92e610772264e47a0b173ecb1ea2988bdc803460b06931f19cdaa90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e015a3e8da2b2c2d5737dfe157df17085d5968db`.

Source path: `GRWTSK/Topology/GeneralTopology/Sign/Variant8dbf0f27d92e610772264e47a0b173ecb1ea2988bdc803460b06931f19cdaa90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sign/Variant8dbf0f27d92e610772264e47a0b173ecb1ea2988bdc803460b06931f19cdaa90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sign` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sign/Variant8dbf0f27d92e610772264e47a0b173ecb1ea2988bdc803460b06931f19cdaa90.lean/declarations/instance--01295e78982318b121b9f5ba.md) | 26 | `declaration-track:01295e78982318b121b9f5bad705452aead5b97483adb7032aad43e8f49cfc9a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sign/Variant8dbf0f27d92e610772264e47a0b173ecb1ea2988bdc803460b06931f19cdaa90.lean/declarations/instance--95bf5a32d1f31036386dce89.md) | 29 | `declaration-track:95bf5a32d1f31036386dce89e011a70110d27a9889cc58656e42bf3b6baa3b7c` |
| 3 | `theorem` | [continuousAt_sign_of_pos](../../../../../mathematics/Topology/GeneralTopology/Sign/Variant8dbf0f27d92e610772264e47a0b173ecb1ea2988bdc803460b06931f19cdaa90.lean/declarations/continuousat-sign-of-pos--365f0a4a2f9baaac734e4387.md) | 38 | `result-track:365f0a4a2f9baaac734e43875d3559efb64ba219e0464fc839816a647255d947` |
| 4 | `theorem` | [continuousAt_sign_of_neg](../../../../../mathematics/Topology/GeneralTopology/Sign/Variant8dbf0f27d92e610772264e47a0b173ecb1ea2988bdc803460b06931f19cdaa90.lean/declarations/continuousat-sign-of-neg--a0c1c1d27482ce29b5cbdfe9.md) | 43 | `result-track:a0c1c1d27482ce29b5cbdfe94bd6b3d4dd621d5353d40ae6cc264735d18eb73f` |
| 5 | `theorem` | [continuousAt_sign_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Sign/Variant8dbf0f27d92e610772264e47a0b173ecb1ea2988bdc803460b06931f19cdaa90.lean/declarations/continuousat-sign-of-ne-zero--f2cb97ed7d86467a4167475a.md) | 54 | `result-track:f2cb97ed7d86467a4167475afe8e9389aead0521f58f42dc11d179c8a650a4de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
