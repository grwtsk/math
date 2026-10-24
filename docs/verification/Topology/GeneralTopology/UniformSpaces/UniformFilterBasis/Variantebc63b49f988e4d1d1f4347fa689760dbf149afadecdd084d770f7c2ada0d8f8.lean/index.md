# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.UniformFilterBasis.Variantebc63b49f988e4d1d1f4347fa689760dbf149afadecdd084d770f7c2ada0d8f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eda452282d3429b56591e40244b0ab8d561c553b",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformFilterBasis/Variantebc63b49f988e4d1d1f4347fa689760dbf149afadecdd084d770f7c2ada0d8f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformFilterBasis/Variantebc63b49f988e4d1d1f4347fa689760dbf149afadecdd084d770f7c2ada0d8f8.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformFilterBasis/Variantebc63b49f988e4d1d1f4347fa689760dbf149afadecdd084d770f7c2ada0d8f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eda452282d3429b56591e40244b0ab8d561c553b`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformFilterBasis/Variantebc63b49f988e4d1d1f4347fa689760dbf149afadecdd084d770f7c2ada0d8f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/UniformFilterBasis/Variantebc63b49f988e4d1d1f4347fa689760dbf149afadecdd084d770f7c2ada0d8f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.FilterBasis` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uniformSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformFilterBasis/Variantebc63b49f988e4d1d1f4347fa689760dbf149afadecdd084d770f7c2ada0d8f8.lean/declarations/uniformspace--c6e84582242440786d52bed6.md) | 38 | `declaration-track:c6e84582242440786d52bed61ec3e1375e95ac7dcf8fea2ec27a483eb23a46f1` |
| 2 | `theorem` | [isUniformAddGroup](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformFilterBasis/Variantebc63b49f988e4d1d1f4347fa689760dbf149afadecdd084d770f7c2ada0d8f8.lean/declarations/isuniformaddgroup--7adefea6dc41cd1d53c6c04e.md) | 43 | `result-track:7adefea6dc41cd1d53c6c04e644aa3d478b25d57b0d787ad304a8760e3a15c14` |
| 3 | `theorem` | [cauchy_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformFilterBasis/Variantebc63b49f988e4d1d1f4347fa689760dbf149afadecdd084d770f7c2ada0d8f8.lean/declarations/cauchy-iff--dd184cf1ec2b7ee26a7907da.md) | 48 | `result-track:dd184cf1ec2b7ee26a7907dac420fc2e0f30f23a55f1b4bb9c82365a9d8bc9d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
