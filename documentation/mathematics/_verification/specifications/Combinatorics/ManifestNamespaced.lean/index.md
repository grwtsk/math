# Verification target: Manifest Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46e4bf7032fb5ac831ea2015f9803d25261e3afc",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variant44f07a95412a1b08ff8904c012ce7ce093f71448e8d320695e34f5eb92d0f3d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ManifestNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/ManifestNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46e4bf7032fb5ac831ea2015f9803d25261e3afc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variant44f07a95412a1b08ff8904c012ce7ce093f71448e8d320695e34f5eb92d0f3d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Manifest/Variant44f07a95412a1b08ff8904c012ce7ce093f71448e8d320695e34f5eb92d0f3d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Universe.Node` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TheoremCellDescriptor](../../../../Combinatorics/ManifestNamespaced.lean/declarations/theoremcelldescriptor.md) | 18 | `declaration-track:2c17795c12d4ed31f52860924c3e39ccdf0d89c145f32c349084fa7f975ff94e` |
| 2 | `structure` | [FoldDescriptor](../../../../Combinatorics/ManifestNamespaced.lean/declarations/folddescriptor.md) | 27 | `declaration-track:5170300f5b8d2439c3374f1c89e6b5240bc823efeb8c4680aa1c9e6ed337bc58` |
| 3 | `def` | [ReferencesClosed](../../../../Combinatorics/ManifestNamespaced.lean/declarations/referencesclosed.md) | 38 | `declaration-track:66bd83f87aa4e63a2817fdb84013891127d4472d5bfe03d4222afc50dfcc13c2` |
| 4 | `def` | [NodeIdentityInjective](../../../../Combinatorics/ManifestNamespaced.lean/declarations/nodeidentityinjective.md) | 59 | `declaration-track:e26729f4a3c3849add3d4fd5ad1fdc82289ddcc50bf778787f2ffe90965f499d` |
| 5 | `structure` | [UniverseManifest](../../../../Combinatorics/ManifestNamespaced.lean/declarations/universemanifest.md) | 63 | `declaration-track:efdce497c751dc8868d26415c60f381fcb8779117fdeb15f082fa14aef48eba2` |
| 6 | `def` | [HasNode](../../../../Combinatorics/ManifestNamespaced.lean/declarations/hasnode.md) | 81 | `declaration-track:b325f753ede12f731f63913f22ad79d178755fa5e6365908fd191849a425ac4c` |
| 7 | `def` | [HasEdge](../../../../Combinatorics/ManifestNamespaced.lean/declarations/hasedge.md) | 84 | `declaration-track:e5a3ebb940974985521f2d9242bf9cd27b5a1c9a3849004f5cd4ebbf564b291c` |
| 8 | `def` | [HasCell](../../../../Combinatorics/ManifestNamespaced.lean/declarations/hascell.md) | 87 | `declaration-track:a2159567faff27e5028e6e80d0c60c6ec4f13dad2c7ce9e101f983fa3e238353` |
| 9 | `theorem` | [edge_source_resolves](../../../../Combinatorics/ManifestNamespaced.lean/declarations/edge-source-resolves.md) | 90 | `result-track:04484b7e0262edd720a8eca565adcc1063cf793ab67a8d005a3b00c647a63ac3` |
| 10 | `theorem` | [edge_target_resolves](../../../../Combinatorics/ManifestNamespaced.lean/declarations/edge-target-resolves.md) | 97 | `result-track:169fe251f6e0208ee896cf40c0c20621f48885141d7d064c27f6f5ab34021d69` |
| 11 | `theorem` | [node_unique](../../../../Combinatorics/ManifestNamespaced.lean/declarations/node-unique.md) | 104 | `result-track:85a97ee03d16a207353e7446603fd1b3f28e98e9572631206e11067055fd58f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=104b8f453e4a0bd94663d5ccd881f8d13e2e94b603f0cc68068c8779398cb2f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variant44f07a95412a1b08ff8904c012ce7ce093f71448e8d320695e34f5eb92d0f3d9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Manifest/Variant44f07a95412a1b08ff8904c012ce7ce093f71448e8d320695e34f5eb92d0f3d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
