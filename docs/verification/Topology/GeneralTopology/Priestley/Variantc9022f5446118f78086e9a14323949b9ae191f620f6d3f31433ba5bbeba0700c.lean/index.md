# Verification target: GRWTSK.Topology.GeneralTopology.Priestley.Variantc9022f5446118f78086e9a14323949b9ae191f620f6d3f31433ba5bbeba0700c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e20e89838f85af0db8be84bb30cfde6db31f646c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Priestley/Variantc9022f5446118f78086e9a14323949b9ae191f620f6d3f31433ba5bbeba0700c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Priestley/Variantc9022f5446118f78086e9a14323949b9ae191f620f6d3f31433ba5bbeba0700c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Priestley/Variantc9022f5446118f78086e9a14323949b9ae191f620f6d3f31433ba5bbeba0700c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e20e89838f85af0db8be84bb30cfde6db31f646c`.

Source path: `GRWTSK/Topology/GeneralTopology/Priestley/Variantc9022f5446118f78086e9a14323949b9ae191f620f6d3f31433ba5bbeba0700c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Priestley/Variantc9022f5446118f78086e9a14323949b9ae191f620f6d3f31433ba5bbeba0700c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Separation.Hausdorff` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Clopen` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PriestleySpace](../../../../../mathematics/Topology/GeneralTopology/Priestley/Variantc9022f5446118f78086e9a14323949b9ae191f620f6d3f31433ba5bbeba0700c.lean/declarations/priestleyspace--9486c7e9fdf98aa4042a75f4.md) | 38 | `declaration-track:9486c7e9fdf98aa4042a75f498e2d695159a11655e44d0cbf8d0ccf9c8b9b177` |
| 2 | `theorem` | [exists_isClopen_upper_of_not_le](../../../../../mathematics/Topology/GeneralTopology/Priestley/Variantc9022f5446118f78086e9a14323949b9ae191f620f6d3f31433ba5bbeba0700c.lean/declarations/exists-isclopen-upper-of-not-le--3cecc2f22c080f571c3e88c0.md) | 47 | `result-track:3cecc2f22c080f571c3e88c0f3804198e0707e1bccb9041dc382339ae6955a54` |
| 3 | `theorem` | [exists_isClopen_lower_of_not_le](../../../../../mathematics/Topology/GeneralTopology/Priestley/Variantc9022f5446118f78086e9a14323949b9ae191f620f6d3f31433ba5bbeba0700c.lean/declarations/exists-isclopen-lower-of-not-le--2c0fab796c7f2ffeea54fe19.md) | 51 | `result-track:2c0fab796c7f2ffeea54fe195961c534405e3eddacabd6f6c711d16709e2f036` |
| 4 | `theorem` | [exists_isClopen_upper_or_lower_of_ne](../../../../../mathematics/Topology/GeneralTopology/Priestley/Variantc9022f5446118f78086e9a14323949b9ae191f620f6d3f31433ba5bbeba0700c.lean/declarations/exists-isclopen-upper-or-lower-of-ne--7942475709c42243941f4a0c.md) | 62 | `result-track:7942475709c42243941f4a0c192fa98624ae44a3c4fa3292de13fcec0487e3b5` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Priestley/Variantc9022f5446118f78086e9a14323949b9ae191f620f6d3f31433ba5bbeba0700c.lean/declarations/instance--ded3200961a1c4bbd2a26188.md) | 70 | `declaration-track:ded3200961a1c4bbd2a261887ae71c1ba51f6b024ac203b0bffa9ffd4b9c68e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
