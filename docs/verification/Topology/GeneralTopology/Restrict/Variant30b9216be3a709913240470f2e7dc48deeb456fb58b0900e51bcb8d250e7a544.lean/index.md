# Verification target: GRWTSK.Topology.GeneralTopology.Restrict.Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d7eb2a460f8a8377a0910c0cd9de199ea269891",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d7eb2a460f8a8377a0910c0cd9de199ea269891`.

Source path: `GRWTSK/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Algebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.NonUnital` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [homeomorph](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean/declarations/homeomorph--f2498683470fc6104ef53e18.md) | 39 | `declaration-track:f2498683470fc6104ef53e1857b83f5e4674e571a96c7af25f93d7408bee11b0` |
| 2 | `lemma` | [compactSpace](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean/declarations/compactspace--dcfb110629a9412d53071b2c.md) | 51 | `result-track:dcfb110629a9412d53071b2c4452827d7c7cded9e1937e9b0f6afe59f308e309` |
| 3 | `def` | [starAlgHom](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean/declarations/staralghom--2623c5a54e1b055042094f86.md) | 63 | `declaration-track:2623c5a54e1b055042094f8662228a051588ed138ceb9ba2e15f69df5f284b4f` |
| 4 | `lemma` | [starAlgHom_id](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean/declarations/staralghom-id--3390908d5dd5952e887444ae.md) | 82 | `result-track:3390908d5dd5952e887444ae4da62cf3532a9d670116f6a059dda2a0cc017958` |
| 5 | `lemma` | [isClosedEmbedding_starAlgHom](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean/declarations/isclosedembedding-staralghom--f61abf33f7b79eff4dc4fd78.md) | 93 | `result-track:f61abf33f7b79eff4dc4fd789263cd969a8d4d63038215d7a1692e2036220e9f` |
| 6 | `theorem` | [cfc](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean/declarations/cfc--eefb80e57f8b620687c0ba4a.md) | 105 | `result-track:eefb80e57f8b620687c0ba4a60de6d310b9fb48571f473d180fde0acea8d4b94` |
| 7 | `lemma` | [cfcHom_eq_restrict](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean/declarations/cfchom-eq-restrict--76c507a7cac3f7dc238107ae.md) | 150 | `result-track:76c507a7cac3f7dc238107aee0fc84f2647c34d2e49085f32660d58009d97f6d` |
| 8 | `lemma` | [cfc_eq_restrict](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean/declarations/cfc-eq-restrict--8d3babf3da12e697dafd9a29.md) | 157 | `result-track:8d3babf3da12e697dafd9a29f54f8254fb5501ed082555aabed92a7ff5a61a3d` |
| 9 | `def` | [homeomorph](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean/declarations/homeomorph--10e4ff999fda504cd0eed6b9.md) | 183 | `declaration-track:10e4ff999fda504cd0eed6b9ce1cc6fdc8e1b9a3c161b38fb0a53b3895bfdea2` |
| 10 | `def` | [nonUnitalStarAlgHom](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean/declarations/nonunitalstaralghom--43b293d681163af8e287307f.md) | 202 | `declaration-track:43b293d681163af8e287307f8b9da87f6fbe9a9dec5c57211df662313a591c27` |
| 11 | `lemma` | [nonUnitalStarAlgHom_id](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean/declarations/nonunitalstaralghom-id--997dbfb48e0685a657c77587.md) | 222 | `result-track:997dbfb48e0685a657c775872fdd3e95114d3263f2becccef66b104a31933830` |
| 12 | `lemma` | [isClosedEmbedding_nonUnitalStarAlgHom](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean/declarations/isclosedembedding-nonunitalstaralghom--36425a09851f54fb3a20532b.md) | 233 | `result-track:36425a09851f54fb3a20532bdec1102057cc4f011d367dcbb4abc8abb91ab270` |
| 13 | `theorem` | [cfc](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean/declarations/cfc--1cce677d80c2e0782f5ef803.md) | 248 | `result-track:1cce677d80c2e0782f5ef8032e50ba56d54fff532d07d4c7cc25a577f059e54b` |
| 14 | `lemma` | [cfcₙHom_eq_restrict](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean/declarations/cfc-hom-eq-restrict--df2db9f9259be320c1220034.md) | 296 | `result-track:df2db9f9259be320c1220034ac82f4bae5c16080bbe8ddb3224a6c6079b9808f` |
| 15 | `lemma` | [cfcₙ_eq_restrict](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean/declarations/cfc-eq-restrict--664158dc3dd406bbd2a7462b.md) | 303 | `result-track:664158dc3dd406bbd2a7462bd60e8ce315b5c02dcea08f3f0aad38787bbfd2a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
