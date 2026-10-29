# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.UniformFilterBasis.Varianta642e509607925bbb8b118b63f431fbcdc6d0ea4fededeb3e476e64daea28ab5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8b5cae644f44c366718335c3d854ce630a531e5",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformFilterBasis/Varianta642e509607925bbb8b118b63f431fbcdc6d0ea4fededeb3e476e64daea28ab5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../Topology/GeneralTopology/UniformSpaces/UniformFilterBasis/Varianta642e509607925bbb8b118b63f431fbcdc6d0ea4fededeb3e476e64daea28ab5.lean/index.md) · [Full source](../../../../../../../Topology/GeneralTopology/UniformSpaces/UniformFilterBasis/Varianta642e509607925bbb8b118b63f431fbcdc6d0ea4fededeb3e476e64daea28ab5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8b5cae644f44c366718335c3d854ce630a531e5`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformFilterBasis/Varianta642e509607925bbb8b118b63f431fbcdc6d0ea4fededeb3e476e64daea28ab5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/UniformFilterBasis/Varianta642e509607925bbb8b118b63f431fbcdc6d0ea4fededeb3e476e64daea28ab5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.FilterBasis` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uniformSpace](../../../../../../../Topology/GeneralTopology/UniformSpaces/UniformFilterBasis/Varianta642e509607925bbb8b118b63f431fbcdc6d0ea4fededeb3e476e64daea28ab5.lean/declarations/uniformspace--26e1a300bf31c404ebb8c438.md) | 30 | `declaration-track:26e1a300bf31c404ebb8c4385624c78bfc69ea8273e0dcaac9a7f10cc54382be` |
| 2 | `theorem` | [isUniformAddGroup](../../../../../../../Topology/GeneralTopology/UniformSpaces/UniformFilterBasis/Varianta642e509607925bbb8b118b63f431fbcdc6d0ea4fededeb3e476e64daea28ab5.lean/declarations/isuniformaddgroup--0a90e4577debec8a22e3ba72.md) | 35 | `result-track:0a90e4577debec8a22e3ba72abf8f15c1528f6e1e4803a3616e326f11f42bfd1` |
| 3 | `theorem` | [cauchy_iff](../../../../../../../Topology/GeneralTopology/UniformSpaces/UniformFilterBasis/Varianta642e509607925bbb8b118b63f431fbcdc6d0ea4fededeb3e476e64daea28ab5.lean/declarations/cauchy-iff--d0bc723732ec9f8adf4544fb.md) | 40 | `result-track:d0bc723732ec9f8adf4544fb44576737436f28b50c4c8710b966807a4f5892eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e599ddc1f3cbae2026ce364ac45a8dd90b28457b7117054af787787a5a5a967 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformFilterBasis/Varianta642e509607925bbb8b118b63f431fbcdc6d0ea4fededeb3e476e64daea28ab5.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/UniformFilterBasis/Varianta642e509607925bbb8b118b63f431fbcdc6d0ea4fededeb3e476e64daea28ab5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
