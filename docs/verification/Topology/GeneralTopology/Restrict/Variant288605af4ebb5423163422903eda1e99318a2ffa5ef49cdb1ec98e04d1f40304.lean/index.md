# Verification target: GRWTSK.Topology.GeneralTopology.Restrict.Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9da2ee207a860fff030dbfcbd2dcfb4c4d13a4aa",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9da2ee207a860fff030dbfcbd2dcfb4c4d13a4aa`.

Source path: `GRWTSK/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [homeomorph](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/declarations/homeomorph--4da6593854aefeedb8080701.md) | 43 | `declaration-track:4da6593854aefeedb8080701a744dfccf85788e8681136ab015ae7e9a9b2a364` |
| 2 | `lemma` | [compactSpace](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/declarations/compactspace--5e390257fc8d9dfbc3435eb9.md) | 52 | `result-track:5e390257fc8d9dfbc3435eb9685401914704bae0ae6f1794dd0d05b58e79c791` |
| 3 | `def` | [starAlgHom](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/declarations/staralghom--34fda3fe807f2a737c3d9851.md) | 65 | `declaration-track:34fda3fe807f2a737c3d9851c58ad09448f769a178334b3e8f8241d8fea150b4` |
| 4 | `lemma` | [starAlgHom_id](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/declarations/staralghom-id--c6a4ed351461e1d66579de63.md) | 84 | `result-track:c6a4ed351461e1d66579de631db0e92a462d0efb6c8043b47143f19f722197e5` |
| 5 | `lemma` | [starAlgHom_injective](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/declarations/staralghom-injective--bb703471690fa8d11f7cff8f.md) | 93 | `result-track:bb703471690fa8d11f7cff8f168c0ce6f30d7dae03809d7144ba68cc07141614` |
| 6 | `lemma` | [continuous_starAlgHom](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/declarations/continuous-staralghom--3049c3860cd210a14dd78f10.md) | 107 | `result-track:3049c3860cd210a14dd78f10f7c6397dd3162fa83d751513cf30fc9984ddac5f` |
| 7 | `lemma` | [isClosedEmbedding_starAlgHom](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/declarations/isclosedembedding-staralghom--d422a6798505c71d9a847048.md) | 113 | `result-track:d422a6798505c71d9a847048502e08780a55ca5c6b3b624f4a6a635c84879897` |
| 8 | `theorem` | [cfc](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/declarations/cfc--98438a42613d8bf2ad115727.md) | 126 | `result-track:98438a42613d8bf2ad11572750813761bf3ffafdc6a06dc0511705e9f5a5b897` |
| 9 | `lemma` | [cfcHom_eq_restrict](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/declarations/cfchom-eq-restrict--6a043b7dc2d8d10fd4fca181.md) | 160 | `result-track:6a043b7dc2d8d10fd4fca181e1ffda4f038126b8b452f652ee737aff6d302358` |
| 10 | `lemma` | [cfc_eq_restrict](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/declarations/cfc-eq-restrict--ce93294c44892567ff51e4bf.md) | 167 | `result-track:ce93294c44892567ff51e4bf6bec007543a0c570b631937b07a70a4dc2d0c917` |
| 11 | `theorem` | [closedEmbeddingCFC](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/declarations/closedembeddingcfc--df858ebbbf2afb031a3f833d.md) | 193 | `result-track:df858ebbbf2afb031a3f833de980001fda7590eb893ec6cfe3f1fd8b354d1e18` |
| 12 | `def` | [homeomorph](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/declarations/homeomorph--e980062ee613d0889afcb21d.md) | 213 | `declaration-track:e980062ee613d0889afcb21dcc3f5fb3171444f802cebaedbb6329e2f40ff88f` |
| 13 | `def` | [nonUnitalStarAlgHom](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/declarations/nonunitalstaralghom--8b1d54bb4a76df7cb9cac9c5.md) | 230 | `declaration-track:8b1d54bb4a76df7cb9cac9c5ff6ad1ff54f03b7f028c9d18bbca36f2cf6fdb35` |
| 14 | `lemma` | [nonUnitalStarAlgHom_id](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/declarations/nonunitalstaralghom-id--cc0cc0caa68de8e07f33ad41.md) | 251 | `result-track:cc0cc0caa68de8e07f33ad417abc048a9f0211a3091ec2c44313126f7da514d0` |
| 15 | `lemma` | [nonUnitalStarAlgHom_injective](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/declarations/nonunitalstaralghom-injective--00a86ae6d1a82abc5c9e9e1f.md) | 260 | `result-track:00a86ae6d1a82abc5c9e9e1fca1691b5069c124735735e86c19e20d593234396` |
| 16 | `lemma` | [continuous_nonUnitalStarAlgHom](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/declarations/continuous-nonunitalstaralghom--12084d9657165884304b9268.md) | 276 | `result-track:12084d9657165884304b9268fee0f346695da3d29e6dcb0c18adf8cf4744fa41` |
| 17 | `lemma` | [isClosedEmbedding_nonUnitalStarAlgHom](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/declarations/isclosedembedding-nonunitalstaralghom--93c2a577c6057bdbe3e5b6b5.md) | 282 | `result-track:93c2a577c6057bdbe3e5b6b5785910520ecafebec5c4a049e7bff21e92282455` |
| 18 | `theorem` | [cfc](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/declarations/cfc--4d14beaa2fa1d04612cb8a27.md) | 298 | `result-track:4d14beaa2fa1d04612cb8a272ce03d006211d4422786e6b403b92f15af5ac059` |
| 19 | `lemma` | [cfcₙHom_eq_restrict](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/declarations/cfc-hom-eq-restrict--64bf3587f817a761147d6172.md) | 330 | `result-track:64bf3587f817a761147d61725d0fc98ccd676efb7dab0fdb1dc14ef194a1754e` |
| 20 | `lemma` | [cfcₙ_eq_restrict](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/declarations/cfc-eq-restrict--0e89b3d864e056d51a5dd338.md) | 338 | `result-track:0e89b3d864e056d51a5dd338906ff1e6075cb74eb644ece49cbdd4f7d0ba91c9` |
| 21 | `theorem` | [nonUnitalClosedEmbeddingCFC](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/declarations/nonunitalclosedembeddingcfc--b4e0550713f323893c31294a.md) | 370 | `result-track:b4e0550713f323893c31294ae089d58ec035e750f10c0d0d8151da8dd6f1643a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
