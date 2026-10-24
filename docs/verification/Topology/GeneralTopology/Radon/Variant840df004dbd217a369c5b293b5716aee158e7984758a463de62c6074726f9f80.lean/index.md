# Verification target: GRWTSK.Topology.GeneralTopology.Radon.Variant840df004dbd217a369c5b293b5716aee158e7984758a463de62c6074726f9f80

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39f8584d22b685de4c38c088dc1fd6d7892b0bbe",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Radon/Variant840df004dbd217a369c5b293b5716aee158e7984758a463de62c6074726f9f80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Radon/Variant840df004dbd217a369c5b293b5716aee158e7984758a463de62c6074726f9f80.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Radon/Variant840df004dbd217a369c5b293b5716aee158e7984758a463de62c6074726f9f80.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39f8584d22b685de4c38c088dc1fd6d7892b0bbe`.

Source path: `GRWTSK/Topology/GeneralTopology/Radon/Variant840df004dbd217a369c5b293b5716aee158e7984758a463de62c6074726f9f80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Radon/Variant840df004dbd217a369c5b293b5716aee158e7984758a463de62c6074726f9f80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Combination` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Card` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.FiniteDimensional` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Hausdorff` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [radon_partition](../../../../../mathematics/Topology/GeneralTopology/Radon/Variant840df004dbd217a369c5b293b5716aee158e7984758a463de62c6074726f9f80.lean/declarations/radon-partition--85a25af336478930c09f1fdb.md) | 50 | `result-track:85a25af336478930c09f1fdb63c1804db4fd7ed391ae574746a07e28674ba21f` |
| 2 | `lemma` | [helly_theorem_corner](../../../../../mathematics/Topology/GeneralTopology/Radon/Variant840df004dbd217a369c5b293b5716aee158e7984758a463de62c6074726f9f80.lean/declarations/helly-theorem-corner--c4f21704a5ffa89ae10ebf75.md) | 80 | `result-track:c4f21704a5ffa89ae10ebf75b294f80725f59a3c3b59f6802b9134eca32c1e2c` |
| 3 | `theorem` | [helly_theorem'](../../../../../mathematics/Topology/GeneralTopology/Radon/Variant840df004dbd217a369c5b293b5716aee158e7984758a463de62c6074726f9f80.lean/declarations/helly-theorem--5892041f74d961511507c025.md) | 91 | `result-track:5892041f74d961511507c025ef9d5cbd2214f94ee13237afdaf3dcdf2c1ae0aa` |
| 4 | `theorem` | [helly_theorem](../../../../../mathematics/Topology/GeneralTopology/Radon/Variant840df004dbd217a369c5b293b5716aee158e7984758a463de62c6074726f9f80.lean/declarations/helly-theorem--4dd719143b13c328a4e4b315.md) | 151 | `result-track:4dd719143b13c328a4e4b3157355e55dee738a9041e77d7d434d1813c79a005f` |
| 5 | `theorem` | [helly_theorem_set'](../../../../../mathematics/Topology/GeneralTopology/Radon/Variant840df004dbd217a369c5b293b5716aee158e7984758a463de62c6074726f9f80.lean/declarations/helly-theorem-set--ddba4534d30856350e3ef514.md) | 166 | `result-track:ddba4534d30856350e3ef51489c0a2769b1250ec1a3323a770d9ab6a9159937c` |
| 6 | `theorem` | [helly_theorem_set](../../../../../mathematics/Topology/GeneralTopology/Radon/Variant840df004dbd217a369c5b293b5716aee158e7984758a463de62c6074726f9f80.lean/declarations/helly-theorem-set--7e05e71c13b02735134e6f6a.md) | 182 | `result-track:7e05e71c13b02735134e6f6a35ef18a33f2d92db97817c6144e0e964d89d8fb9` |
| 7 | `theorem` | [helly_theorem_compact'](../../../../../mathematics/Topology/GeneralTopology/Radon/Variant840df004dbd217a369c5b293b5716aee158e7984758a463de62c6074726f9f80.lean/declarations/helly-theorem-compact--6c1ebb0554130d716268d82b.md) | 198 | `result-track:6c1ebb0554130d716268d82b255ca6c7155b03d39ebba905b1525957a88cc068` |
| 8 | `theorem` | [helly_theorem_compact](../../../../../mathematics/Topology/GeneralTopology/Radon/Variant840df004dbd217a369c5b293b5716aee158e7984758a463de62c6074726f9f80.lean/declarations/helly-theorem-compact--2d29d296361d5d469fc33e41.md) | 226 | `result-track:2d29d296361d5d469fc33e413eafab9ef8e436da9adc5c0ba32ad241a6602de5` |
| 9 | `theorem` | [helly_theorem_set_compact'](../../../../../mathematics/Topology/GeneralTopology/Radon/Variant840df004dbd217a369c5b293b5716aee158e7984758a463de62c6074726f9f80.lean/declarations/helly-theorem-set-compact--a8fb86fadbcb3b239ea42531.md) | 249 | `result-track:a8fb86fadbcb3b239ea42531f8fd1e62c10cc448b889e84e147069301026b2f2` |
| 10 | `theorem` | [helly_theorem_set_compact](../../../../../mathematics/Topology/GeneralTopology/Radon/Variant840df004dbd217a369c5b293b5716aee158e7984758a463de62c6074726f9f80.lean/declarations/helly-theorem-set-compact--50cb576b92fa674d3ce56b48.md) | 271 | `result-track:50cb576b92fa674d3ce56b48c47c65f57580caaf0fed41d61c67f49ff02bd25b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
