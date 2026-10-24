# Verification target: GRWTSK.Topology.Konig.Variant736dad22d4bbdaa74b981c206a5d91d84967e5dc304756edd5b0ee11020cae1f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a7493df0c2cfa5c8b11d650b44b0bf08610e728",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Konig/Variant736dad22d4bbdaa74b981c206a5d91d84967e5dc304756edd5b0ee11020cae1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Konig/Variant736dad22d4bbdaa74b981c206a5d91d84967e5dc304756edd5b0ee11020cae1f.lean/index.md) · [Full source](../../../../mathematics/Topology/Konig/Variant736dad22d4bbdaa74b981c206a5d91d84967e5dc304756edd5b0ee11020cae1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a7493df0c2cfa5c8b11d650b44b0bf08610e728`.

Source path: `GRWTSK/Topology/Konig/Variant736dad22d4bbdaa74b981c206a5d91d84967e5dc304756edd5b0ee11020cae1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Konig/Variant736dad22d4bbdaa74b981c206a5d91d84967e5dc304756edd5b0ee11020cae1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Filtered.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FiniteDiagramArrow](../../../../mathematics/Topology/Konig/Variant736dad22d4bbdaa74b981c206a5d91d84967e5dc304756edd5b0ee11020cae1f.lean/declarations/finitediagramarrow--fc19ec5e4ca99ef7f2bf8d2f.md) | 56 | `declaration-track:fc19ec5e4ca99ef7f2bf8d2fc6c9b16c4bc3ab9c88cdb796763de8992af0f965` |
| 2 | `abbrev` | [FiniteDiagram](../../../../mathematics/Topology/Konig/Variant736dad22d4bbdaa74b981c206a5d91d84967e5dc304756edd5b0ee11020cae1f.lean/declarations/finitediagram--cfc288b74d3a22f90a13da2c.md) | 59 | `declaration-track:cfc288b74d3a22f90a13da2caa5de38325dc2242d3d4c773142ef7a4fa890c5d` |
| 3 | `def` | [partialSections](../../../../mathematics/Topology/Konig/Variant736dad22d4bbdaa74b981c206a5d91d84967e5dc304756edd5b0ee11020cae1f.lean/declarations/partialsections--b5e3ddb3428ebcba76ca17fc.md) | 65 | `declaration-track:b5e3ddb3428ebcba76ca17fcbdf619b2dec2f2fc4e6e89c63b5719e0aadc94d9` |
| 4 | `theorem` | [partialSections.nonempty](../../../../mathematics/Topology/Konig/Variant736dad22d4bbdaa74b981c206a5d91d84967e5dc304756edd5b0ee11020cae1f.lean/declarations/partialsections-nonempty--6881daa79f1577da71829e44.md) | 69 | `result-track:6881daa79f1577da71829e44efe2f4f6da95b220a56082cc75cf4f75142b9cd1` |
| 5 | `theorem` | [partialSections.directed](../../../../mathematics/Topology/Konig/Variant736dad22d4bbdaa74b981c206a5d91d84967e5dc304756edd5b0ee11020cae1f.lean/declarations/partialsections-directed--748f2fc9458ea94691405324.md) | 82 | `result-track:748f2fc9458ea9469140532478b38ca16f1481a1c379be12f306b4e0feaed9b4` |
| 6 | `theorem` | [partialSections.closed](../../../../mathematics/Topology/Konig/Variant736dad22d4bbdaa74b981c206a5d91d84967e5dc304756edd5b0ee11020cae1f.lean/declarations/partialsections-closed--3555e3824483cfe7569de604.md) | 104 | `result-track:3555e3824483cfe7569de604ea981b2fad3181044967d1487d664957f7fbfef5` |
| 7 | `theorem` | [nonempty_limitCone_of_compact_t2_cofiltered_system](../../../../mathematics/Topology/Konig/Variant736dad22d4bbdaa74b981c206a5d91d84967e5dc304756edd5b0ee11020cae1f.lean/declarations/nonempty-limitcone-of-compact-t2-cofiltered-system--f5fbdcf2ed10966acca50f73.md) | 119 | `result-track:f5fbdcf2ed10966acca50f7395c1e057eb48c20b237ede526d34f10ee17d7495` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
