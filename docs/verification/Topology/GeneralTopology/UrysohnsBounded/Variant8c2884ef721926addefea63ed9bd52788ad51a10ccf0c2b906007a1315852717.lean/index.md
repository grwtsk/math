# Verification target: GRWTSK.Topology.GeneralTopology.UrysohnsBounded.Variant8c2884ef721926addefea63ed9bd52788ad51a10ccf0c2b906007a1315852717

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5be5913ea53188697c6013142f9d6a33cbbb0db5",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UrysohnsBounded/Variant8c2884ef721926addefea63ed9bd52788ad51a10ccf0c2b906007a1315852717.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UrysohnsBounded/Variant8c2884ef721926addefea63ed9bd52788ad51a10ccf0c2b906007a1315852717.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UrysohnsBounded/Variant8c2884ef721926addefea63ed9bd52788ad51a10ccf0c2b906007a1315852717.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5be5913ea53188697c6013142f9d6a33cbbb0db5`.

Source path: `GRWTSK/Topology/GeneralTopology/UrysohnsBounded/Variant8c2884ef721926addefea63ed9bd52788ad51a10ccf0c2b906007a1315852717.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UrysohnsBounded/Variant8c2884ef721926addefea63ed9bd52788ad51a10ccf0c2b906007a1315852717.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UrysohnsLemma` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_bounded_zero_one_of_closed](../../../../../mathematics/Topology/GeneralTopology/UrysohnsBounded/Variant8c2884ef721926addefea63ed9bd52788ad51a10ccf0c2b906007a1315852717.lean/declarations/exists-bounded-zero-one-of-closed--2d67db2b2ca74840d2bae404.md) | 33 | `result-track:2d67db2b2ca74840d2bae4046d8f2def224a5622fd6ca6a1586d127681073183` |
| 2 | `theorem` | [exists_bounded_mem_Icc_of_closed_of_le](../../../../../mathematics/Topology/GeneralTopology/UrysohnsBounded/Variant8c2884ef721926addefea63ed9bd52788ad51a10ccf0c2b906007a1315852717.lean/declarations/exists-bounded-mem-icc-of-closed-of-le--2f84fff102179a0f0489e86b.md) | 46 | `result-track:2f84fff102179a0f0489e86b756793f246f6d041d66943b5ba7d61bb1135365c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
