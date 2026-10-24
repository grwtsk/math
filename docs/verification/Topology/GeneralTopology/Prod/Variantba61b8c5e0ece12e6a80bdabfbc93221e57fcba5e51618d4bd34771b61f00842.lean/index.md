# Verification target: GRWTSK.Topology.GeneralTopology.Prod.Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6eafeef1ab43fa57c3defad6ac2fad549647f3bf",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Prod/Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6eafeef1ab43fa57c3defad6ac2fad549647f3bf`.

Source path: `GRWTSK/Topology/GeneralTopology/Prod/Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Prod/Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.OperatorNorm.Bilinear` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [norm_fst_le](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842.lean/declarations/norm-fst-le--0d3e97cc737e0e0bdc25c334.md) | 31 | `result-track:0d3e97cc737e0e0bdc25c33418fd1647222eecaa101559043d5b3a8186bbeecd` |
| 2 | `lemma` | [norm_snd_le](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842.lean/declarations/norm-snd-le--aebf4be72fc30f47b72ddd29.md) | 36 | `result-track:aebf4be72fc30f47b72ddd2988612a13b5649579c215f68a7df397e2aeb690c1` |
| 3 | `theorem` | [opNorm_prod](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842.lean/declarations/opnorm-prod--34f32128a78dbb3b7a588d8a.md) | 44 | `result-track:34f32128a78dbb3b7a588d8a2fd97ad6b7a1156eb6b34cc9b747f4c28b128d56` |
| 4 | `theorem` | [opNNNorm_prod](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842.lean/declarations/opnnnorm-prod--fb97fa65f6a365c20f5616a6.md) | 57 | `result-track:fb97fa65f6a365c20f5616a68247d5f446bfd82b01e85a7fb5f81096944ed637` |
| 5 | `def` | [prodₗᵢ](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842.lean/declarations/prod--153d219313da87961ea4b074.md) | 62 | `declaration-track:153d219313da87961ea4b07485eb39faf33367e2cf6f988e1b890c107fd637ea` |
| 6 | `def` | [prodMapL](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842.lean/declarations/prodmapl--eb2ccaf1404a993295053976.md) | 81 | `declaration-track:eb2ccaf1404a993295053976983a9182742b05059802d7ade9ccb2394303839f` |
| 7 | `theorem` | [prodMapL_apply](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842.lean/declarations/prodmapl-apply--f02c5aa141a51465d23a13a8.md) | 106 | `result-track:f02c5aa141a51465d23a13a883d4c2d5de4a9621561988e106ea955abfd96cd2` |
| 8 | `theorem` | [_root_.Continuous.prod_mapL](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842.lean/declarations/root-continuous-prod-mapl--c8aacf5d598653c01ded2071.md) | 112 | `result-track:c8aacf5d598653c01ded207161c6747bdd745f8176a530558cdadf98a3878f0c` |
| 9 | `theorem` | [_root_.Continuous.prod_map_equivL](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842.lean/declarations/root-continuous-prod-map-equivl--98a420fe86c89242b246acda.md) | 116 | `result-track:98a420fe86c89242b246acdaaf030a93dad8f289c4ba6e9d075af509608097a1` |
| 10 | `theorem` | [_root_.ContinuousOn.prod_mapL](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842.lean/declarations/root-continuouson-prod-mapl--cba31f81422bee5f0e4e986c.md) | 121 | `result-track:cba31f81422bee5f0e4e986c0e9674cfaefebb82bb062b2d38e3ff01735696b6` |
| 11 | `theorem` | [_root_.ContinuousOn.prod_map_equivL](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842.lean/declarations/root-continuouson-prod-map-equivl--ee3e070f1fc36875565b37ec.md) | 126 | `result-track:ee3e070f1fc36875565b37ec7dbcf5fb3bf92884aeca2596e9295d1054bb9cc0` |
| 12 | `lemma` | [norm_fst](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842.lean/declarations/norm-fst--edb391e93424c502b58717c1.md) | 147 | `result-track:edb391e93424c502b58717c12864878d5c75366b113c0557e112b2ff872650dc` |
| 13 | `lemma` | [norm_snd](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842.lean/declarations/norm-snd--a4b2fe3da23a5d07c1d88e09.md) | 157 | `result-track:a4b2fe3da23a5d07c1d88e097a8f5bd7975e9b68315c5395723ee42a4ee052e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
