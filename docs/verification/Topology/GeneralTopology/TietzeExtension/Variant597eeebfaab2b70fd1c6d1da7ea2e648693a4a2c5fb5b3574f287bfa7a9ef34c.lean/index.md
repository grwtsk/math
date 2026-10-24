# Verification target: GRWTSK.Topology.GeneralTopology.TietzeExtension.Variant597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e499fdf1fdd4ee26446dd6b00c1ad75dbb85722",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TietzeExtension/Variant597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e499fdf1fdd4ee26446dd6b00c1ad75dbb85722`.

Source path: `GRWTSK/Topology/GeneralTopology/TietzeExtension/Variant597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TietzeExtension/Variant597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Intervals.IsoIoo` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.MonotoneContinuity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UrysohnsBounded` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tietze_extension_step](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean/declarations/tietze-extension-step--84b9164d87767d5871723a73.md) | 52 | `result-track:84b9164d87767d5871723a7375684998c685ec7b495901872ac2b5a6ce293fa4` |
| 2 | `theorem` | [exists_extension_norm_eq_of_closedEmbedding'](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean/declarations/exists-extension-norm-eq-of-closedembedding--d346864059ba20b3574d0596.md) | 103 | `result-track:d346864059ba20b3574d0596b6b3d8658a98c74bf045a1bb165ee39fe89e8d18` |
| 3 | `theorem` | [exists_extension_norm_eq_of_closedEmbedding](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean/declarations/exists-extension-norm-eq-of-closedembedding--8091600c03dc95fb2831114e.md) | 152 | `result-track:8091600c03dc95fb2831114e8b874683686f72f998a7cbc0bb0a496d1cb29a6f` |
| 4 | `theorem` | [exists_norm_eq_restrict_eq_of_closed](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean/declarations/exists-norm-eq-restrict-eq-of-closed--05a8e989d21ccc2bb1bb8e22.md) | 162 | `result-track:05a8e989d21ccc2bb1bb8e22068d42550b2ffc52b5d01b3a6aeca561cf4a5b86` |
| 5 | `theorem` | [exists_extension_forall_mem_Icc_of_closedEmbedding](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean/declarations/exists-extension-forall-mem-icc-of-closedembedding--71b77e5685c551c19687d937.md) | 176 | `result-track:71b77e5685c551c19687d9378caff060097edb3496d2e4322c97bd5aeb5d819e` |
| 6 | `theorem` | [exists_extension_forall_exists_le_ge_of_closedEmbedding](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean/declarations/exists-extension-forall-exists-le-ge-of-closedembedding--4c985e164f11c09ceba40941.md) | 197 | `result-track:4c985e164f11c09ceba409419b3fdb53d0841d7e045f037430d71058964f2d28` |
| 7 | `theorem` | [exists_extension_forall_mem_of_closedEmbedding](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean/declarations/exists-extension-forall-mem-of-closedembedding--1c3b63c06f88fa05b0e01caa.md) | 312 | `result-track:1c3b63c06f88fa05b0e01caa898bb45775907eeb4811d15fe52c59dd54b43b19` |
| 8 | `theorem` | [exists_forall_mem_restrict_eq_of_closed](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean/declarations/exists-forall-mem-restrict-eq-of-closed--e5edf868909af6c07b853252.md) | 330 | `result-track:e5edf868909af6c07b853252288b46bdff4551d3e79a14bfb5bcfdcb64e67ed7` |
| 9 | `theorem` | [exists_extension_forall_mem_of_closedEmbedding](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean/declarations/exists-extension-forall-mem-of-closedembedding--92d0fe5e9aaffec5f33d07af.md) | 349 | `result-track:92d0fe5e9aaffec5f33d07af8a3caf4103d64d3b3bd3e4846d99dbe3a4a1b7da` |
| 10 | `theorem` | [exists_extension_of_closedEmbedding](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean/declarations/exists-extension-of-closedembedding--929d3a162eebb2a4ad255567.md) | 388 | `result-track:929d3a162eebb2a4ad255567e695047d9fc6003e2a700e3c54d21209ef6b87d9` |
| 11 | `theorem` | [exists_restrict_eq_forall_mem_of_closed](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean/declarations/exists-restrict-eq-forall-mem-of-closed--e965cf840531264e98768dd9.md) | 400 | `result-track:e965cf840531264e98768dd9a3b70d22bc7c1875c1ef83d8d35d46dbb5b6a20e` |
| 12 | `theorem` | [exists_restrict_eq_of_closed](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean/declarations/exists-restrict-eq-of-closed--c56f82becd9c2fe7df3e2ec5.md) | 412 | `result-track:c56f82becd9c2fe7df3e2ec57a9dda3b30f9381010558d74dcae589cc2445484` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
