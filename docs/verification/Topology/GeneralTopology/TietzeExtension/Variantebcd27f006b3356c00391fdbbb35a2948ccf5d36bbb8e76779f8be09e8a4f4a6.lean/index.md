# Verification target: GRWTSK.Topology.GeneralTopology.TietzeExtension.Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d6a245ba8d83c8009f6122661fa19c696a89a22",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d6a245ba8d83c8009f6122661fa19c696a89a22`.

Source path: `GRWTSK/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Set.IsoIoo` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Normed` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UrysohnsBounded` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [TietzeExtension](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/declarations/tietzeextension--08bd1296d37f160a7e8a890c.md) | 59 | `declaration-track:08bd1296d37f160a7e8a890c56626f7d2151964e42f06c0c8b4bbc3cb3257715` |
| 2 | `theorem` | [ContinuousMap.exists_restrict_eq](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/declarations/continuousmap-exists-restrict-eq--299a6faebbb5c518cb9ba58a.md) | 72 | `result-track:299a6faebbb5c518cb9ba58a8265bd6dfcda1c8b1d5eb0e7f096e22037a4518e` |
| 3 | `theorem` | [ContinuousMap.exists_extension](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/declarations/continuousmap-exists-extension--e7143b08367b828c5d9cb26f.md) | 80 | `result-track:e7143b08367b828c5d9cb26fc56a5a57e63c7b41835bc3c6dffde99553f8a432` |
| 4 | `theorem` | [ContinuousMap.exists_extension'](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/declarations/continuousmap-exists-extension--fb5c7062697d6381764032a4.md) | 93 | `result-track:fb5c7062697d6381764032a4f72c55a4a02eb7333086a353a2ede9ce4e82079d` |
| 5 | `theorem` | [ContinuousMap.exists_forall_mem_restrict_eq](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/declarations/continuousmap-exists-forall-mem-restrict-eq--ceb83a4afd42be7d6d0d1397.md) | 103 | `result-track:ceb83a4afd42be7d6d0d139771b15b9dd37115a9090078d978afa8c502c85f24` |
| 6 | `theorem` | [ContinuousMap.exists_extension_forall_mem](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/declarations/continuousmap-exists-extension-forall-mem--8d8dbfd75b04cadf5a60b630.md) | 116 | `result-track:8d8dbfd75b04cadf5a60b6301931f076dc888a3c8c613e5792f3d5ca80e0b559` |
| 7 | `instance` | [Pi.instTietzeExtension](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/declarations/pi-insttietzeextension--a855ea7917689350fcf13759.md) | 123 | `declaration-track:a855ea7917689350fcf13759fc70a8f71fd61c9a00daf50190b712abbd5243d6` |
| 8 | `instance` | [Prod.instTietzeExtension](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/declarations/prod-insttietzeextension--dde38786954dfe7f8d99e830.md) | 130 | `declaration-track:dde38786954dfe7f8d99e830254035669154043df0dd76e5b5d7cebe2672b357` |
| 9 | `instance` | [Unique.instTietzeExtension](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/declarations/unique-insttietzeextension--5f7cf557494276f77f97edb3.md) | 138 | `declaration-track:5f7cf557494276f77f97edb3075868d06107a0ead79888d7672b913b1fd89a51` |
| 10 | `theorem` | [TietzeExtension.of_retract](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/declarations/tietzeextension-of-retract--dcb8cf81c58f3fddd319589a.md) | 143 | `result-track:dcb8cf81c58f3fddd319589a718cd2c8faff3560a32faf77cdce179f92b03e99` |
| 11 | `theorem` | [TietzeExtension.of_homeo](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/declarations/tietzeextension-of-homeo--c575341d3919019aff4a29df.md) | 155 | `result-track:c575341d3919019aff4a29df182ca05b4a5863277f98c82734469a620395cfb7` |
| 12 | `theorem` | [tietze_extension_step](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/declarations/tietze-extension-step--73d762f42ba916c5d1b89a87.md) | 178 | `result-track:73d762f42ba916c5d1b89a876e4c4eb0c6cf476f299eb8b494c8ff3fe73d3de4` |
| 13 | `theorem` | [exists_extension_norm_eq_of_isClosedEmbedding'](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/declarations/exists-extension-norm-eq-of-isclosedembedding--4269174c21e93c0664ebadfb.md) | 228 | `result-track:4269174c21e93c0664ebadfb776b37b998d202c3041119eb02a33ea6f12400e4` |
| 14 | `theorem` | [exists_extension_norm_eq_of_isClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/declarations/exists-extension-norm-eq-of-isclosedembedding--de7722ce141b7cce2a0faa8d.md) | 277 | `result-track:de7722ce141b7cce2a0faa8de5b0290d4544dfc1b559abddf51639ae2b75db87` |
| 15 | `theorem` | [exists_norm_eq_restrict_eq_of_closed](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/declarations/exists-norm-eq-restrict-eq-of-closed--a33f7501218a11f4f865d0d0.md) | 286 | `result-track:a33f7501218a11f4f865d0d09c71c26bb1b46776b926559ce2eb3f14ddb43742` |
| 16 | `theorem` | [exists_extension_forall_mem_Icc_of_isClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/declarations/exists-extension-forall-mem-icc-of-isclosedembedding--dd7082758b70f10071b8999f.md) | 299 | `result-track:dd7082758b70f10071b8999f14d75c78a9456e8e02b3466529c70c2ecca8dcac` |
| 17 | `theorem` | [exists_extension_forall_exists_le_ge_of_isClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/declarations/exists-extension-forall-exists-le-ge-of-isclosedembedding--54db814958cc6d7220a098ab.md) | 319 | `result-track:54db814958cc6d7220a098ab0fc7095203a60148e9f49d36e993edc490e34ef5` |
| 18 | `theorem` | [exists_extension_forall_mem_of_isClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/declarations/exists-extension-forall-mem-of-isclosedembedding--f8ddc40eb6072b982629bd44.md) | 431 | `result-track:f8ddc40eb6072b982629bd44118150c6261f3eff031275f44d9f1a6ab7e814c5` |
| 19 | `theorem` | [exists_forall_mem_restrict_eq_of_closed](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/declarations/exists-forall-mem-restrict-eq-of-closed--bde285b789266fccee3ed6eb.md) | 448 | `result-track:bde285b789266fccee3ed6eb8c2f3a1da51506e9c5bef3152ae19a860f7daacd` |
| 20 | `theorem` | [exists_extension_forall_mem_of_isClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/declarations/exists-extension-forall-mem-of-isclosedembedding--6c1a263e66bd66f0a79cf4ce.md) | 465 | `result-track:6c1a263e66bd66f0a79cf4ceed523dd1f8a421549fec95ba39d4b66d19142473` |
| 21 | `theorem` | [exists_restrict_eq_forall_mem_of_closed](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/declarations/exists-restrict-eq-forall-mem-of-closed--954ac078369c9b5cf3c8dcb9.md) | 504 | `result-track:954ac078369c9b5cf3c8dcb9e593014efc251f0be4b8eaf3ccbacc37b1c5a9a3` |
| 22 | `instance` | [Real.instTietzeExtension](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/declarations/real-insttietzeextension--15e8017ebb09eeb43f86abc0.md) | 515 | `declaration-track:15e8017ebb09eeb43f86abc09403d87760fccbf030e749532874206d65201bfd` |
| 23 | `instance` | [NNReal.instTietzeExtension](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/declarations/nnreal-insttietzeextension--671a27443bbbac8dc5eb3389.md) | 523 | `declaration-track:671a27443bbbac8dc5eb3389adde2a96901472924879a5256ce924f9a5bc4adc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
