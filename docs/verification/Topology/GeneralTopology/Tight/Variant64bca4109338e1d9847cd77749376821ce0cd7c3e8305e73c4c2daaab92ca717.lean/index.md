# Verification target: GRWTSK.Topology.GeneralTopology.Tight.Variant64bca4109338e1d9847cd77749376821ce0cd7c3e8305e73c4c2daaab92ca717

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c2b7b080f73bbde24bb20b043b9145a6f03895c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Tight/Variant64bca4109338e1d9847cd77749376821ce0cd7c3e8305e73c4c2daaab92ca717.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Tight/Variant64bca4109338e1d9847cd77749376821ce0cd7c3e8305e73c4c2daaab92ca717.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Tight/Variant64bca4109338e1d9847cd77749376821ce0cd7c3e8305e73c4c2daaab92ca717.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c2b7b080f73bbde24bb20b043b9145a6f03895c`.

Source path: `GRWTSK/Topology/GeneralTopology/Tight/Variant64bca4109338e1d9847cd77749376821ce0cd7c3e8305e73c4c2daaab92ca717.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Tight/Variant64bca4109338e1d9847cd77749376821ce0cd7c3e8305e73c4c2daaab92ca717.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.RegularityCompacts` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTightMeasureSet](../../../../../mathematics/Topology/GeneralTopology/Tight/Variant64bca4109338e1d9847cd77749376821ce0cd7c3e8305e73c4c2daaab92ca717.lean/declarations/istightmeasureset--fcbc28081f50d28090de2f33.md) | 50 | `declaration-track:fcbc28081f50d28090de2f337df559f9911ff9e7c8ca37a70974b1b00fae74d8` |
| 2 | `lemma` | [IsTightMeasureSet_iff_exists_isCompact_measure_compl_le](../../../../../mathematics/Topology/GeneralTopology/Tight/Variant64bca4109338e1d9847cd77749376821ce0cd7c3e8305e73c4c2daaab92ca717.lean/declarations/istightmeasureset-iff-exists-iscompact-measure-compl-le--54e7467d3caed22ad0042ec9.md) | 55 | `result-track:54e7467d3caed22ad0042ec951a8d207aa8645fee0cdecc5d54d16e7c82be608` |
| 3 | `theorem` | [isTightMeasureSet_singleton_of_innerRegularWRT](../../../../../mathematics/Topology/GeneralTopology/Tight/Variant64bca4109338e1d9847cd77749376821ce0cd7c3e8305e73c4c2daaab92ca717.lean/declarations/istightmeasureset-singleton-of-innerregularwrt--cc4de28c3d1e2e5d220ca212.md) | 67 | `result-track:cc4de28c3d1e2e5d220ca212f8f9049c3f3e71455bb733fc1f46730c1c7eafb3` |
| 4 | `lemma` | [isTightMeasureSet_singleton_of_innerRegular](../../../../../mathematics/Topology/GeneralTopology/Tight/Variant64bca4109338e1d9847cd77749376821ce0cd7c3e8305e73c4c2daaab92ca717.lean/declarations/istightmeasureset-singleton-of-innerregular--3e061780fb1a2626f5bcd26d.md) | 86 | `result-track:3e061780fb1a2626f5bcd26da87cd8361f7170383ff79d5987514a2cade1a760` |
| 5 | `theorem` | [isTightMeasureSet_singleton](../../../../../mathematics/Topology/GeneralTopology/Tight/Variant64bca4109338e1d9847cd77749376821ce0cd7c3e8305e73c4c2daaab92ca717.lean/declarations/istightmeasureset-singleton--cb9c78abe86d5841941517f8.md) | 95 | `result-track:cb9c78abe86d5841941517f8f7a83c65f89f72f54e63c31a4adf3ecb773c6b89` |
| 6 | `lemma` | [of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Tight/Variant64bca4109338e1d9847cd77749376821ce0cd7c3e8305e73c4c2daaab92ca717.lean/declarations/of-compactspace--911a48e4982d790a873d6839.md) | 105 | `result-track:911a48e4982d790a873d6839c326a0bd4f372ddc2e0b81414f0c1c66a31c98c8` |
| 7 | `lemma` | [subset](../../../../../mathematics/Topology/GeneralTopology/Tight/Variant64bca4109338e1d9847cd77749376821ce0cd7c3e8305e73c4c2daaab92ca717.lean/declarations/subset--adb1584ddd89676098080cdc.md) | 110 | `result-track:adb1584ddd89676098080cdc0baba4004ec888a755e4c8d35f735e48b14dc708` |
| 8 | `lemma` | [union](../../../../../mathematics/Topology/GeneralTopology/Tight/Variant64bca4109338e1d9847cd77749376821ce0cd7c3e8305e73c4c2daaab92ca717.lean/declarations/union--52adad97f1d5f0ea26954f46.md) | 115 | `result-track:52adad97f1d5f0ea26954f46c1786a5941876244e93fc2c48f1d835453a54900` |
| 9 | `lemma` | [inter](../../../../../mathematics/Topology/GeneralTopology/Tight/Variant64bca4109338e1d9847cd77749376821ce0cd7c3e8305e73c4c2daaab92ca717.lean/declarations/inter--7bc3b3807b70ec25d3583315.md) | 121 | `result-track:7bc3b3807b70ec25d358331504ef2d13b238c2230bcc868516f951dc71d115ca` |
| 10 | `lemma` | [map](../../../../../mathematics/Topology/GeneralTopology/Tight/Variant64bca4109338e1d9847cd77749376821ce0cd7c3e8305e73c4c2daaab92ca717.lean/declarations/map--7de904d170a4151703d80266.md) | 125 | `result-track:7de904d170a4151703d80266e052bff458965d5d7b87055ed9992bf40a19d138` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
