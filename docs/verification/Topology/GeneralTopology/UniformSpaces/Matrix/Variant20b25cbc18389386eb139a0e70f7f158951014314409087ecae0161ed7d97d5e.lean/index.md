# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.Matrix.Variant20b25cbc18389386eb139a0e70f7f158951014314409087ecae0161ed7d97d5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8d604cc92e1c38b3fcf5b73bfdfca1ffeb5f235",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Matrix/Variant20b25cbc18389386eb139a0e70f7f158951014314409087ecae0161ed7d97d5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Matrix/Variant20b25cbc18389386eb139a0e70f7f158951014314409087ecae0161ed7d97d5e.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Matrix/Variant20b25cbc18389386eb139a0e70f7f158951014314409087ecae0161ed7d97d5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8d604cc92e1c38b3fcf5b73bfdfca1ffeb5f235`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Matrix/Variant20b25cbc18389386eb139a0e70f7f158951014314409087ecae0161ed7d97d5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Matrix/Variant20b25cbc18389386eb139a0e70f7f158951014314409087ecae0161ed7d97d5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Pi` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instUniformSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Matrix/Variant20b25cbc18389386eb139a0e70f7f158951014314409087ecae0161ed7d97d5e.lean/declarations/instuniformspace--c60867ff95d086b865b93db1.md) | 29 | `declaration-track:c60867ff95d086b865b93db1837056b290e435745a462f6714e771e339e2ec41` |
| 2 | `instance` | [instIsUniformAddGroup](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Matrix/Variant20b25cbc18389386eb139a0e70f7f158951014314409087ecae0161ed7d97d5e.lean/declarations/instisuniformaddgroup--1c696f82fa3415c9d86a8045.md) | 32 | `declaration-track:1c696f82fa3415c9d86a8045c607869d51e858cf96864b39a544b3301ff8e115` |
| 3 | `theorem` | [uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Matrix/Variant20b25cbc18389386eb139a0e70f7f158951014314409087ecae0161ed7d97d5e.lean/declarations/uniformity--c570975901eaded99205e94b.md) | 39 | `result-track:c570975901eaded99205e94bc6ee96a7a922a78355ecaaeeffb1ef7e374115f2` |
| 4 | `theorem` | [uniformContinuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Matrix/Variant20b25cbc18389386eb139a0e70f7f158951014314409087ecae0161ed7d97d5e.lean/declarations/uniformcontinuous--e9dd08dcdda77272a3ff119f.md) | 45 | `result-track:e9dd08dcdda77272a3ff119f5c531fab532bc00c6e4ab5ed1f42a8fe31c46824` |
| 5 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Matrix/Variant20b25cbc18389386eb139a0e70f7f158951014314409087ecae0161ed7d97d5e.lean/declarations/instance--9c4e4959b5fe5a33ea13af4f.md) | 50 | `declaration-track:9c4e4959b5fe5a33ea13af4ff057bdc1edba8805bbf1d4763682c57f68bb9436` |
| 6 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Matrix/Variant20b25cbc18389386eb139a0e70f7f158951014314409087ecae0161ed7d97d5e.lean/declarations/instance--11e516ba30207ca70b1181ad.md) | 53 | `declaration-track:11e516ba30207ca70b1181adba21277651f18cb4ac7562dde01128c3d60a062d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
