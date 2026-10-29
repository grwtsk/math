# Verification target: Resolver Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e202fd2f918abc26051c4a90fa1a236f126dae6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Resolver/Variantb7c9e31957a097e0a81600089e3de6ad648a6d210a3e8cd4f2b4c4f63604582b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ResolverNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/ResolverNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e202fd2f918abc26051c4a90fa1a236f126dae6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Resolver/Variantb7c9e31957a097e0a81600089e3de6ad648a6d210a3e8cd4f2b4c4f63604582b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Resolver/Variantb7c9e31957a097e0a81600089e3de6ad648a6d210a3e8cd4f2b4c4f63604582b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Resolution.Validation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.Continuation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ResolverProfile](../../../../Combinatorics/ResolverNamespaced.lean/declarations/resolverprofile.md) | 25 | `declaration-track:29f2c7db0d565d1f63c1c47ee78120f4b2d481caed33231c141722caaeb80ee5` |
| 2 | `inductive` | [CertifiedResolution](../../../../Combinatorics/ResolverNamespaced.lean/declarations/certifiedresolution.md) | 56 | `declaration-track:4f40dfb7485ed31b304aa1afa31fa3d8bf09b79185f4024c879dd1a673964b3e` |
| 3 | `def` | [CertifiedResolution.IsRejected](../../../../Combinatorics/ResolverNamespaced.lean/declarations/certifiedresolution-isrejected.md) | 86 | `declaration-track:a2f572e2405b7aef4f2f3b3988dbdca8622452e0be8dc2aff4284b46964b2dd1` |
| 4 | `def` | [cfor](../../../../Combinatorics/ResolverNamespaced.lean/declarations/cfor.md) | 104 | `declaration-track:9adb4b53fbaac7f48c297282279e1f237dc01ad4925ce5794bc9f5dd7e65afde` |
| 5 | `theorem` | [cfor_rejected_exactly_when_cut_invalid](../../../../Combinatorics/ResolverNamespaced.lean/declarations/cfor-rejected-exactly-when-cut-invalid.md) | 145 | `result-track:a5eac4ec34ea56fb80c3a65c548062cbec42b9f3b6da7bd8da4c6c190b39ebf3` |
| 6 | `theorem` | [cfor_total](../../../../Combinatorics/ResolverNamespaced.lean/declarations/cfor-total.md) | 168 | `result-track:5ff205d19aaf2620a32bbdac029c673f8f349eda4def028b0f3f351652ebdc78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e9c9e455101b6ea0bff24f0c759fe7a811b523d2e6b914a3f5ec117321de0b9c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Resolver/Variantb7c9e31957a097e0a81600089e3de6ad648a6d210a3e8cd4f2b4c4f63604582b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Resolver/Variantb7c9e31957a097e0a81600089e3de6ad648a6d210a3e8cd4f2b4c4f63604582b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
