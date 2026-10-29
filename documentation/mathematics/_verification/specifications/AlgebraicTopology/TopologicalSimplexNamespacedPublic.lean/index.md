# Verification target: Topological Simplex Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c0638d36b72bd2c67e55b7922c2d50746090599",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TopologicalSimplex/Variant316ac67198b4afa891f1309bbd643fab3e156b33a0f7f72c15ac9e230585925b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/TopologicalSimplexNamespacedPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/TopologicalSimplexNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c0638d36b72bd2c67e55b7922c2d50746090599`.

Source path: `GRWTSK/Topology/GeneralTopology/TopologicalSimplex/Variant316ac67198b4afa891f1309bbd643fab3e156b33a0f7f72c15ac9e230585925b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TopologicalSimplex/Variant316ac67198b4afa891f1309bbd643fab3e156b33a0f7f72c15ac9e230585925b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toTop₀](../../../../AlgebraicTopology/TopologicalSimplexNamespacedPublic.lean/declarations/totop-source-edition-2.md) | 41 | `declaration-track:de0e660e278c362fa7bd64a9aaad25840c8914180a3afc7519f5010968ca55b3` |
| 2 | `def` | [toTop](../../../../AlgebraicTopology/TopologicalSimplexNamespacedPublic.lean/declarations/totop.md) | 52 | `declaration-track:2073c5e81530ed88be0ff2883ed016f2f89603d56221073aaa392aa6d56bd430` |
| 3 | `instance` | [(anonymous)](../../../../AlgebraicTopology/TopologicalSimplexNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 56 | `declaration-track:676cf2021351bd01761e83bec3b697cdfbcc2163f2392f42f787da9011bff123` |
| 4 | `instance` | [(anonymous)](../../../../AlgebraicTopology/TopologicalSimplexNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 58 | `declaration-track:4d357898f58ab5bfeca35a0e2462b82a9a0a8e4fea11a8460a18e0d437c4f443` |
| 5 | `instance` | [(anonymous)](../../../../AlgebraicTopology/TopologicalSimplexNamespacedPublic.lean/declarations/instance.md) | 60 | `declaration-track:29fbf43b2daa246c88359ab8c29dc159b2dc3a26fe4a03eef8a131087bde3cf0` |
| 6 | `instance` | [(anonymous)](../../../../AlgebraicTopology/TopologicalSimplexNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 62 | `declaration-track:bd5e531e61aecf7863ba4c5fe2bd4dc3f29b53722e3b02dd7463fbb2b6d4d7f9` |
| 7 | `instance` | [(anonymous)](../../../../AlgebraicTopology/TopologicalSimplexNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 65 | `declaration-track:d0d4c305e029dc1d0264be744ab5584403b5a64368b481507b5b1f1ebff94046` |
| 8 | `instance` | [(anonymous)](../../../../AlgebraicTopology/TopologicalSimplexNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 67 | `declaration-track:4dff7bdf64e917fb7388b09de005350379232f18d5cbe2160169b6c3d4c0c71c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b4bcc3e6b86fe24c67a215ef32bbb2fa796229bb628fc50ae7aa7a433dd163d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/TopologicalSimplex/Variant316ac67198b4afa891f1309bbd643fab3e156b33a0f7f72c15ac9e230585925b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/TopologicalSimplex/Variant316ac67198b4afa891f1309bbd643fab3e156b33a0f7f72c15ac9e230585925b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
