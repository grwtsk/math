# Verification target: GRWTSK.Topology.GeneralTopology.Sequence.Variante459e0add0835701fab48c893fbe324619817ae163cdb29085da93723b6fcb41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0f805df0a2f916f5a66898ca47de113339b68ba",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sequence/Variante459e0add0835701fab48c893fbe324619817ae163cdb29085da93723b6fcb41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variante459e0add0835701fab48c893fbe324619817ae163cdb29085da93723b6fcb41.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variante459e0add0835701fab48c893fbe324619817ae163cdb29085da93723b6fcb41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0f805df0a2f916f5a66898ca47de113339b68ba`.

Source path: `GRWTSK/Topology/GeneralTopology/Sequence/Variante459e0add0835701fab48c893fbe324619817ae163cdb29085da93723b6fcb41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sequence/Variante459e0add0835701fab48c893fbe324619817ae163cdb29085da93723b6fcb41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Compactification.OnePoint` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.LightProfinite.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [natUnionInftyEmbedding](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variante459e0add0835701fab48c893fbe324619817ae163cdb29085da93723b6fcb41.lean/declarations/natunioninftyembedding--99c86a29de7df042aa4c73e3.md) | 21 | `declaration-track:99c86a29de7df042aa4c73e30459b669d3223c05b58258674fc6c906da1ec08b` |
| 2 | `lemma` | [isClosedEmbedding_natUnionInftyEmbedding](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variante459e0add0835701fab48c893fbe324619817ae163cdb29085da93723b6fcb41.lean/declarations/isclosedembedding-natunioninftyembedding--58ea66e399a1bbb0b05296c3.md) | 32 | `result-track:58ea66e399a1bbb0b05296c3d13bbd96de1fa5edb8ac9e68b86c181009f45677` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variante459e0add0835701fab48c893fbe324619817ae163cdb29085da93723b6fcb41.lean/declarations/instance--f7bdb2fb58e0cbcadd1ca74c.md) | 48 | `declaration-track:f7bdb2fb58e0cbcadd1ca74c7bf1f7dc5df01ad6efd976ea75059dac993552c8` |
| 4 | `abbrev` | [NatUnionInfty](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variante459e0add0835701fab48c893fbe324619817ae163cdb29085da93723b6fcb41.lean/declarations/natunioninfty--94c7de90de2078dff3b43e32.md) | 51 | `declaration-track:94c7de90de2078dff3b43e32c4527de0f47a60f3e18f7d8ceb976991d66f948e` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variante459e0add0835701fab48c893fbe324619817ae163cdb29085da93723b6fcb41.lean/declarations/instance--b8aee93754fd237df02401eb.md) | 56 | `declaration-track:b8aee93754fd237df02401eb6cf0f63909f21b368385bf5325eada475cdeac12` |
| 6 | `lemma` | [continuous_iff_convergent](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variante459e0add0835701fab48c893fbe324619817ae163cdb29085da93723b6fcb41.lean/declarations/continuous-iff-convergent--8b5d0ef924dbf5c3d1a8c627.md) | 60 | `result-track:8b5d0ef924dbf5c3d1a8c6273fb44f345f06c7a04c1dc56f8c0bc3ad464fcaf6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
