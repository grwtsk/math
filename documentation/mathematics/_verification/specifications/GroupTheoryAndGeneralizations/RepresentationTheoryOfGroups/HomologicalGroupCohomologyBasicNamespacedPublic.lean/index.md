# Verification target: Homological Group Cohomology Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25b95cede61d3d05a63632bb23b3d2516a3268d7",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variante453d65db0796ba86190cd52f9ed9c563f0496a676b509394038eacda091da84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25b95cede61d3d05a63632bb23b3d2516a3268d7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variante453d65db0796ba86190cd52f9ed9c563f0496a676b509394038eacda091da84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variante453d65db0796ba86190cd52f9ed9c563f0496a676b509394038eacda091da84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [d](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyBasicNamespacedPublic.lean/declarations/d.md) | 94 | `declaration-track:f18bfa8c39316f979472ed1bcc68cae2008637da78b222f54e9c7cb7d3405724` |
| 2 | `theorem` | [d_eq](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyBasicNamespacedPublic.lean/declarations/d-eq.md) | 111 | `result-track:f245da96b5d98a09a4a488c336fdacb6c6b602822f2bc52a44abf8df9ce8c954` |
| 3 | `abbrev` | [inhomogeneousCochains](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyBasicNamespacedPublic.lean/declarations/inhomogeneouscochains.md) | 131 | `declaration-track:d793810f4e46af765bfa49f3dc956e006371cadf7946f7fa39bcb8091b4aa424` |
| 4 | `theorem` | [inhomogeneousCochains.ext](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyBasicNamespacedPublic.lean/declarations/inhomogeneouscochains-ext.md) | 141 | `result-track:45f1e80992b14d4891a48d6c82854c282edee7f88a2496dd914b8987678ea5d7` |
| 5 | `theorem` | [inhomogeneousCochains.d_def](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyBasicNamespacedPublic.lean/declarations/inhomogeneouscochains-d-def.md) | 144 | `result-track:1ed64941f057cd2c8b70f6b856bc26a918576e0c980aef42996c437e842258e2` |
| 6 | `theorem` | [inhomogeneousCochains.d_comp_d](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyBasicNamespacedPublic.lean/declarations/inhomogeneouscochains-d-comp-d.md) | 149 | `result-track:52bdabc9710724c2fca125464d7bade156e2683c431981e27d5fe134884ccec4` |
| 7 | `def` | [inhomogeneousCochainsIso](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyBasicNamespacedPublic.lean/declarations/inhomogeneouscochainsiso.md) | 156 | `declaration-track:91e034bbbfab2050dcfa538dd11f0386b3ac0671e6451474023d335f8ffdf9a2` |
| 8 | `abbrev` | [cocycles](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyBasicNamespacedPublic.lean/declarations/cocycles.md) | 166 | `declaration-track:d684eb12735b07cffc5ddce9d53b4c18abe79b7d35e1744cac41aebad8d5ccc3` |
| 9 | `abbrev` | [cocyclesMk](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyBasicNamespacedPublic.lean/declarations/cocyclesmk.md) | 170 | `declaration-track:82bd7f6a371ab6e69070f62324120d0bb6ae51f38929045fa02d9df77045c515` |
| 10 | `abbrev` | [iCocycles](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyBasicNamespacedPublic.lean/declarations/icocycles.md) | 175 | `declaration-track:86d13c1b877bcdb4d45eebd54f6c390d50050fcb2617de521d59e7c782e71ce7` |
| 11 | `abbrev` | [toCocycles](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyBasicNamespacedPublic.lean/declarations/tococycles.md) | 180 | `declaration-track:5a438d51d12c8af67785fd6e75e68b3e49befc2e972f19371d2ed0a84de69ed5` |
| 12 | `theorem` | [iCocycles_mk](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyBasicNamespacedPublic.lean/declarations/icocycles-mk.md) | 184 | `result-track:d7f16c11c1590a5b8a0aa2f70079ea154014b0c20e843907b16fdb204941e22a` |
| 13 | `def` | [groupCohomology](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyBasicNamespacedPublic.lean/declarations/groupcohomology-source-edition-2.md) | 194 | `declaration-track:d0023196d3bc28acea6613ed4c9bcf0fddddc4776ec6befc2b9e7eefb43833f4` |
| 14 | `abbrev` | [groupCohomology.π](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyBasicNamespacedPublic.lean/declarations/groupcohomology.md) | 199 | `declaration-track:23f8c0679969d74d605a9b1ce8653db15864a57c8be635fc122beb206b1069f0` |
| 15 | `theorem` | [groupCohomology_induction_on](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyBasicNamespacedPublic.lean/declarations/groupcohomology-induction-on.md) | 205 | `result-track:49e2c92a3a76d9dbc65b5e44d41b434ec6e60fbac39beade1933e576bf10c05b` |
| 16 | `def` | [groupCohomologyIsoExt](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyBasicNamespacedPublic.lean/declarations/groupcohomologyisoext.md) | 213 | `declaration-track:8029e707b032f008ae5d7f6d311e9d6ff6a1de1b729fd5a5e7f46a1d09f6ad0a` |
| 17 | `def` | [groupCohomologyIso](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyBasicNamespacedPublic.lean/declarations/groupcohomologyiso.md) | 221 | `declaration-track:7a5ec27d5165e99c8bbb0e28094918da06adcd4810065ccf18edba0cbed19ed6` |
| 18 | `lemma` | [isZero_groupCohomology_succ_of_subsingleton](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyBasicNamespacedPublic.lean/declarations/iszero-groupcohomology-succ-of-subsingleton.md) | 226 | `result-track:6b3239e1734bfa1329e706faf6e8623fb49410cb5ff1aa7a1130e07a98a07892` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e13291c7183ec54324a7eb828d46b771605c77d36b3de1a1e64b217f593861f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variante453d65db0796ba86190cd52f9ed9c563f0496a676b509394038eacda091da84.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variante453d65db0796ba86190cd52f9ed9c563f0496a676b509394038eacda091da84.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
