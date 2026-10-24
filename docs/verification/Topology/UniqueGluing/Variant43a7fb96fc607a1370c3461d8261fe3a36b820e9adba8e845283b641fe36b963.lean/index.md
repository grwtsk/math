# Verification target: GRWTSK.Topology.UniqueGluing.Variant43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97ff2f8331715070b51a755d3318a7252ace5cd8",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/UniqueGluing/Variant43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/UniqueGluing/Variant43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963.lean/index.md) · [Full source](../../../../mathematics/Topology/UniqueGluing/Variant43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97ff2f8331715070b51a755d3318a7252ace5cd8`.

Source path: `GRWTSK/Topology/UniqueGluing/Variant43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/UniqueGluing/Variant43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.Forget` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.SheafCondition.PairwiseIntersections` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Shapes` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsCompatible](../../../../mathematics/Topology/UniqueGluing/Variant43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963.lean/declarations/iscompatible--273f8b82d6b589892b513d96.md) | 57 | `declaration-track:273f8b82d6b589892b513d965283992655f0989269e4096deb0c8449bf5ee2c9` |
| 2 | `def` | [IsGluing](../../../../mathematics/Topology/UniqueGluing/Variant43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963.lean/declarations/isgluing--43e17d61ddfd58aa094b27db.md) | 63 | `declaration-track:43e17d61ddfd58aa094b27db4a79b1dcad26dd43d706b27f591bef50e0e4dd25` |
| 3 | `def` | [IsSheafUniqueGluing](../../../../mathematics/Topology/UniqueGluing/Variant43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963.lean/declarations/issheafuniquegluing--334c5858743d53996a87c973.md) | 74 | `declaration-track:334c5858743d53996a87c973329717d1ec957bc7620f134b61598e9c9c2764e7` |
| 4 | `def` | [objPairwiseOfFamily](../../../../mathematics/Topology/UniqueGluing/Variant43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963.lean/declarations/objpairwiseoffamily--f192d6b5f5c7505c268b7707.md) | 86 | `declaration-track:f192d6b5f5c7505c268b7707300716f9f03d6433721bb83ce121977c879d902d` |
| 5 | `def` | [IsCompatible.sectionPairwise](../../../../mathematics/Topology/UniqueGluing/Variant43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963.lean/declarations/iscompatible-sectionpairwise--f40b24a9b46688b2181217cf.md) | 95 | `declaration-track:f40b24a9b46688b2181217cf4cb7c87e1b8b606cf8fc16c7fc7d0c472af9099c` |
| 6 | `theorem` | [isGluing_iff_pairwise](../../../../mathematics/Topology/UniqueGluing/Variant43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963.lean/declarations/isgluing-iff-pairwise--e4931e0e4df8688a0d1bd09d.md) | 105 | `result-track:e4931e0e4df8688a0d1bd09dae626f0b79d62de9bb980eb74d1d22e92eeedb34` |
| 7 | `theorem` | [IsSheaf.isSheafUniqueGluing_types](../../../../mathematics/Topology/UniqueGluing/Variant43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963.lean/declarations/issheaf-issheafuniquegluing-types--ff67851df46d7c0782f79b5c.md) | 113 | `result-track:ff67851df46d7c0782f79b5c501d56bfa8a13049ef1fc48762a9d417699304f0` |
| 8 | `theorem` | [isSheaf_iff_isSheafUniqueGluing_types](../../../../mathematics/Topology/UniqueGluing/Variant43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963.lean/declarations/issheaf-iff-issheafuniquegluing-types--92d24d88ea1936f332b60b36.md) | 123 | `result-track:92d24d88ea1936f332b60b36b2de2dac6616bc0d4f499aeda9ef908a2db87c2e` |
| 9 | `theorem` | [isSheaf_of_isSheafUniqueGluing_types](../../../../mathematics/Topology/UniqueGluing/Variant43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963.lean/declarations/issheaf-of-issheafuniquegluing-types--d8e7c412ca4ea5b58822f638.md) | 137 | `result-track:d8e7c412ca4ea5b58822f63842f14f61c792b7ddf9c238c3f88a94cb04104a8e` |
| 10 | `theorem` | [IsSheaf.isSheafUniqueGluing](../../../../mathematics/Topology/UniqueGluing/Variant43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963.lean/declarations/issheaf-issheafuniquegluing--b2db01f9d31c25527e450efd.md) | 148 | `result-track:b2db01f9d31c25527e450efd81dbebd729bd478b5b5c039d9cac691df9ba86f6` |
| 11 | `theorem` | [isSheaf_iff_isSheafUniqueGluing](../../../../mathematics/Topology/UniqueGluing/Variant43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963.lean/declarations/issheaf-iff-issheafuniquegluing--32aa1098b5f6b82410d60c48.md) | 158 | `result-track:32aa1098b5f6b82410d60c48b38e384b805838bf434251322dd86bddc16e1df0` |
| 12 | `theorem` | [existsUnique_gluing](../../../../mathematics/Topology/UniqueGluing/Variant43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963.lean/declarations/existsunique-gluing--cdb9d287c901181376947058.md) | 178 | `result-track:cdb9d287c9011813769470584d9153fd791909516db955c4c9b4e7ce2b12a2c4` |
| 13 | `theorem` | [existsUnique_gluing'](../../../../mathematics/Topology/UniqueGluing/Variant43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963.lean/declarations/existsunique-gluing--00739a6c928139ceb93e08b0.md) | 186 | `result-track:00739a6c928139ceb93e08b05c6d6825465c89b708551fa50671357f3e0f6564` |
| 14 | `theorem` | [eq_of_locally_eq](../../../../mathematics/Topology/UniqueGluing/Variant43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963.lean/declarations/eq-of-locally-eq--02a6a7c22471f65fd12315b3.md) | 203 | `result-track:02a6a7c22471f65fd12315b33f8355eaf736337a90b9c19abe30d749584bbbff` |
| 15 | `theorem` | [eq_of_locally_eq'](../../../../mathematics/Topology/UniqueGluing/Variant43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963.lean/declarations/eq-of-locally-eq--bb310b09c2b029d3d92b5e7f.md) | 223 | `result-track:bb310b09c2b029d3d92b5e7fecf8602a978460a17cc6d7b25d11226aa32f3145` |
| 16 | `theorem` | [eq_of_locally_eq₂](../../../../mathematics/Topology/UniqueGluing/Variant43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963.lean/declarations/eq-of-locally-eq--e0b8592f4392d03a31bc70b2.md) | 236 | `result-track:e0b8592f4392d03a31bc70b23d0b120afe15687fcb335381df92ce53d9e8795d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
