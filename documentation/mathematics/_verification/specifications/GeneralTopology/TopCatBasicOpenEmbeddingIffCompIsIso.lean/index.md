# Verification target: Top Cat Basic Open Embedding Iff Comp Is Iso

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5597322373255de1b1f1a2f203fe6e44d2dcc113",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant88494d70b9c8eff768b71c54feba06554becc1fdd1e3f4ebd1c6bb2ad6bdc4b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/index.md) · [Full source](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5597322373255de1b1f1a2f203fe6e44d2dcc113`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant88494d70b9c8eff768b71c54feba06554becc1fdd1e3f4ebd1c6bb2ad6bdc4b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant88494d70b9c8eff768b71c54feba06554becc1fdd1e3f4ebd1c6bb2ad6bdc4b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.BundledHom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Elementwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TopCat](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/declarations/topcat.md) | 29 | `declaration-track:055b81626e29a95b01110dda6091fbd43fadbdd3ba0d4a34958a45a41e752659` |
| 2 | `instance` | [bundledHom](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/declarations/bundledhom.md) | 37 | `declaration-track:683537638941192ff14bacc86466af841cd7b7afb931b3d5d7bbfa0b39b62f5f` |
| 3 | `instance` | [concreteCategory](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/declarations/concretecategory.md) | 47 | `declaration-track:1992f93c3f10677ff70b07381e30fecd3d2320e890943ef1008435eb2ef5ea63` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/declarations/instance-source-edition-3.md) | 51 | `declaration-track:dc32fba56988fb96454b6d2a82ff1ffeda3212446e41462da79a5d20e255e270` |
| 5 | `instance` | [topologicalSpaceUnbundled](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/declarations/topologicalspaceunbundled.md) | 54 | `declaration-track:f3f7e0e8f3eccb17353cac738f6915750045418b01ef2cadbe24c1d26fc27cd2` |
| 6 | `instance` | [(anonymous)](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/declarations/instance-source-edition-2.md) | 61 | `declaration-track:880f52901e87c99b17bd68329045973515983ebaf23123c5e2852eb071c1f668` |
| 7 | `theorem` | [id_app](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/declarations/id-app.md) | 65 | `result-track:00fdfa29e85729fb729dbe426f99fe8445f25626080aee7e95fa21e11cc63c5b` |
| 8 | `theorem` | [comp_app](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/declarations/comp-app.md) | 70 | `result-track:96cf34ecbf43746655d5fd6a466e887af34b8d5e201031ba4114b4526a55e82e` |
| 9 | `def` | [of](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/declarations/of.md) | 76 | `declaration-track:d740cdfb27a177da6e89aa2edcca780d1c6b81845b77a682a60cae7dfadb48d3` |
| 10 | `instance` | [topologicalSpace_coe](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/declarations/topologicalspace-coe.md) | 82 | `declaration-track:6c6db84cb18754b1920e97d74a65b1d0b9c92c7def232c324f970cc1e2b8c1ae` |
| 11 | `instance` | [topologicalSpace_forget](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/declarations/topologicalspace-forget.md) | 87 | `declaration-track:aa4661d6a6df5f001343053a9b54e104728fed6f2655f90b707f1a8c1fb25749` |
| 12 | `theorem` | [coe_of](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/declarations/coe-of.md) | 91 | `result-track:16ffc90fe608994dc5c83db6959a6bb1c2b45e32c011ee0562b89c3f717734de` |
| 13 | `instance` | [inhabited](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/declarations/inhabited.md) | 95 | `declaration-track:7079eed862c9596d674a367c401ae7012b11b4df515de018fd576215b8e9e037` |
| 14 | `lemma` | [hom_apply](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/declarations/hom-apply.md) | 99 | `result-track:55a8b62326928cd47ec909db54c50328afc33648835403cde94f5fbd2c08a2e0` |
| 15 | `def` | [discrete](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/declarations/discrete.md) | 103 | `declaration-track:09ef385d94255d1bfb5666d7e93fb5b4e1e325d8ca6aab3817023fa83de13a10` |
| 16 | `instance` | [(anonymous)](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/declarations/instance.md) | 109 | `declaration-track:720ddff5007e8ef9d3229c225a824f0be52c38b2cbfc0094aa0e5357e8b23d5d` |
| 17 | `def` | [trivial](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/declarations/trivial.md) | 113 | `declaration-track:2a567472031a49c98716dd9f360ed0d7fd3854dee2cd0438a26cb2c341b5a40d` |
| 18 | `def` | [isoOfHomeo](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/declarations/isoofhomeo.md) | 121 | `declaration-track:25476a91c7b98d9c4361ffa909923344d706dacc7bd061bbc9b18a9cdd4469ff` |
| 19 | `def` | [homeoOfIso](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/declarations/homeoofiso.md) | 132 | `declaration-track:239e0c8adf5b8ca20f13cb044f07c84d6ed8df70b9d3370c7f9f1c2464c6e341` |
| 20 | `theorem` | [of_isoOfHomeo](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/declarations/of-isoofhomeo.md) | 143 | `result-track:9b62942ade22bd5db7c07e255ed10d8d326e872cfbc319e218482773153b5dfe` |
| 21 | `theorem` | [of_homeoOfIso](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/declarations/of-homeoofiso.md) | 152 | `result-track:28e1965db692ac4ba255636209f5f2e9ff3f5d23e32403b66490e0589f0e4ce1` |
| 22 | `theorem` | [openEmbedding_iff_comp_isIso](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/declarations/openembedding-iff-comp-isiso.md) | 161 | `result-track:1ac2172cfe5351241d01f7a987f883166ca8234375987311a89e128cee2aaef7` |
| 23 | `theorem` | [openEmbedding_iff_comp_isIso'](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/declarations/openembedding-iff-comp-isiso-source-edition-2.md) | 168 | `result-track:cc927b86b19a4d01084ce112d7ebe3fd9b110194ed6b136503ccb0571d93c412` |
| 24 | `theorem` | [openEmbedding_iff_isIso_comp](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/declarations/openembedding-iff-isiso-comp-source-edition-2.md) | 174 | `result-track:90caea7fd5a0e0beb7647bec2db15c4f65bd1886c2e3bfc85f0d86d1baff3713` |
| 25 | `theorem` | [openEmbedding_iff_isIso_comp'](../../../../GeneralTopology/TopCatBasicOpenEmbeddingIffCompIsIso.lean/declarations/openembedding-iff-isiso-comp.md) | 185 | `result-track:2aff85e6c243737884cc78b1663760218831cbf818c669fab4ce75cf81ac69cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f0aca0ff60129eb2f558f97ead86222f17f39644b3c317f0f05cbdb79e8c9707 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant88494d70b9c8eff768b71c54feba06554becc1fdd1e3f4ebd1c6bb2ad6bdc4b2.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant88494d70b9c8eff768b71c54feba06554becc1fdd1e3f4ebd1c6bb2ad6bdc4b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
