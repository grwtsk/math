# Verification target: GRWTSK.Topology.GeneralTopology.Toeplitz.Variant79f4e73684e26445ca4167d4f68b4cf36deb0d260cc7fd5c6049ec67aed70fac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96882b82540d393543afb935984b5f7512cdb7b7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Toeplitz/Variant79f4e73684e26445ca4167d4f68b4cf36deb0d260cc7fd5c6049ec67aed70fac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant79f4e73684e26445ca4167d4f68b4cf36deb0d260cc7fd5c6049ec67aed70fac.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant79f4e73684e26445ca4167d4f68b4cf36deb0d260cc7fd5c6049ec67aed70fac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96882b82540d393543afb935984b5f7512cdb7b7`.

Source path: `GRWTSK/Topology/GeneralTopology/Toeplitz/Variant79f4e73684e26445ca4167d4f68b4cf36deb0d260cc7fd5c6049ec67aed70fac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Toeplitz/Variant79f4e73684e26445ca4167d4f68b4cf36deb0d260cc7fd5c6049ec67aed70fac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.ToeplitzMinors` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [minor_amplitude](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant79f4e73684e26445ca4167d4f68b4cf36deb0d260cc7fd5c6049ec67aed70fac.lean/declarations/minor-amplitude--f8eee1106bfe9ea2141dee1b.md) | 20 | `result-track:f8eee1106bfe9ea2141dee1b0ccf40d3287920e8e5fb43e2f32182f46facabf4` |
| 2 | `theorem` | [pfInfinity_amplitude_iff](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant79f4e73684e26445ca4167d4f68b4cf36deb0d260cc7fd5c6049ec67aed70fac.lean/declarations/pfinfinity-amplitude-iff--1096dfbc508d1667ce84a7e6.md) | 33 | `result-track:1096dfbc508d1667ce84a7e610780f1ca38dc45df8bb882908c5ee3826790797` |
| 3 | `theorem` | [continuous_minor](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant79f4e73684e26445ca4167d4f68b4cf36deb0d260cc7fd5c6049ec67aed70fac.lean/declarations/continuous-minor--75f9c7dc52ad42a64ff1d5a4.md) | 45 | `result-track:75f9c7dc52ad42a64ff1d5a435a9a934ac8a23ea8e045ab2803812443995ed01` |
| 4 | `theorem` | [minor_tendsto](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant79f4e73684e26445ca4167d4f68b4cf36deb0d260cc7fd5c6049ec67aed70fac.lean/declarations/minor-tendsto--54197f9d2d0c090144422a1c.md) | 61 | `result-track:54197f9d2d0c090144422a1ccd39c77e0cf261fba9753996cadf38de9610a92a` |
| 5 | `theorem` | [pfInfinity_of_eventually_minor_nonnegative](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant79f4e73684e26445ca4167d4f68b4cf36deb0d260cc7fd5c6049ec67aed70fac.lean/declarations/pfinfinity-of-eventually-minor-nonnegative--946aeb13e449f00d892f04d8.md) | 68 | `result-track:946aeb13e449f00d892f04d8da386b5ac2934f1e48e9ae80a728dd5bffdcaf21` |
| 6 | `theorem` | [pfInfinity_of_coefficientwise_limit](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant79f4e73684e26445ca4167d4f68b4cf36deb0d260cc7fd5c6049ec67aed70fac.lean/declarations/pfinfinity-of-coefficientwise-limit--069c72a40a5a15ed38b537ee.md) | 77 | `result-track:069c72a40a5a15ed38b537eedb0fa98392bd1d6b8bec9b0aeea17f931ba4230f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
