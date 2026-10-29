# Verification target: Fd Rep Namespaced Source

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0232e6c9b8a43011c5e28fc54a5c38f7f85891ba",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FdRep/Variant1507db708e2798f41401398706fd880715838cfc7fdee5b881dfa81749de41e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0232e6c9b8a43011c5e28fc54a5c38f7f85891ba`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FdRep/Variant1507db708e2798f41401398706fd880715838cfc7fdee5b881dfa81749de41e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variant1507db708e2798f41401398706fd880715838cfc7fdee5b881dfa81749de41e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RepresentationTheory.Rep` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.FGModuleCat.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Schur` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FdRep](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/fdrep.md) | 55 | `declaration-track:f12fb46254afb6df88aa338fcf24516d61f8c5618d8e5a2d62ec3c41b8ac269c` |
| 2 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/instance-source-edition-4.md) | 64 | `declaration-track:56e6480184101517986fb19db4579b60b2c9a9cf687809c9e7d8edee75ed02b8` |
| 3 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/instance-source-edition-8.md) | 65 | `declaration-track:92f793168ef0f4bbb0dd0cb47ae96c44a2857c68639d1217aa6a87812c0dd9a2` |
| 4 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/instance-source-edition-11.md) | 66 | `declaration-track:c52327467d3ef712ef6293d3ad380d4e698d09c383c2e428dbda6799a46ab6b9` |
| 5 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/instance-source-edition-5.md) | 67 | `declaration-track:60c6a0ceb810a3d37a7a0b4e0415c047399c24fe39e629750f5e91ea6f174d82` |
| 6 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/instance-source-edition-10.md) | 69 | `declaration-track:bacf7f1fe6547a89ff2807bbd337aec425fd72634d5f95136838b14f9ba72fb1` |
| 7 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/instance-source-edition-6.md) | 71 | `declaration-track:72e5d1752a9536299a73ad8fb51788d867b08d95a1c0ace0623793069e9116be` |
| 8 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/instance-source-edition-13.md) | 74 | `declaration-track:fa97a41247b53372b6b677ddb680477856c78bf16529548e7944b14a6d836798` |
| 9 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/instance-source-edition-3.md) | 77 | `declaration-track:363039971fc29b73fa9a32d6b4c781e3fff1f64df64666aafe66281a8701c2d2` |
| 10 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/instance.md) | 80 | `declaration-track:012f6f3cdbcd723ed784f7350b0aeb56c182ad4347beab0b99b8b9bc5a946cd1` |
| 11 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/instance-source-edition-7.md) | 84 | `declaration-track:802be199c338397748fd5cae886c40809feaad627f737a70208adbc7dbfcc9ad` |
| 12 | `def` | [ρ](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/anonymous.md) | 89 | `declaration-track:d41c15d31378a30d3cb39a47b947c54514d9280f479efbf03448d5bc37d10a35` |
| 13 | `def` | [isoToLinearEquiv](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/isotolinearequiv.md) | 94 | `declaration-track:7bd0a8e58855598f5568b4f5a2026ce4b8b889cc8869df779f1fbf24cefd0fc1` |
| 14 | `theorem` | [Iso.conj_ρ](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/iso-conj.md) | 98 | `result-track:2482df2c22b8a4875ed0d9383489732c43b7e5f9b32f4f179c4abb157b09932c` |
| 15 | `def` | [of](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/of.md) | 108 | `declaration-track:935f48cf0b9571c2784d1fef231997acd48ce07bfb38754dfedab0255749f6c6` |
| 16 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/instance-source-edition-12.md) | 113 | `declaration-track:e515f235e2d27b1316f5ff9effea5b42fc04afeeb2f07e53d8fb8ff8d712e30b` |
| 17 | `theorem` | [forget₂_ρ](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/forget.md) | 116 | `result-track:0eea8767b7f029ed5580f651fa9d6e9f53f1205624a7a366b20e2fdc86d0cbfa` |
| 18 | `example` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/example-source-edition-3.md) | 121 | `declaration-track:7d184314c4cc9295d1a8027cbe3640c865015633050d5b6175ca66038c3ec94e` |
| 19 | `example` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/example-source-edition-2.md) | 123 | `declaration-track:35933bda794a22124c057eabad176247762fec9cc9ccd10f9750d67f5e326234` |
| 20 | `example` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/example.md) | 125 | `declaration-track:025fce50ef496ff49b2bb650f728248c6bbf6910b39ac06950ee36380bdb76fd` |
| 21 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/instance-source-edition-9.md) | 133 | `declaration-track:b2942081bc5c6ef2430af1626ea7d7277976a9844698a0db9aeca70392856325` |
| 22 | `theorem` | [finrank_hom_simple_simple](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/finrank-hom-simple-simple.md) | 136 | `result-track:b378b94bd2ffb570e2eca6de5a19c4a6405acba5c91a43301c76f2e1f9937c99` |
| 23 | `def` | [forget₂HomLinearEquiv](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/forget-homlinearequiv.md) | 142 | `declaration-track:6b690ede5583a90d5af53b939b52c25e9b032942684fd9c3f0f6d8ef66fbec90` |
| 24 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/instance-source-edition-2.md) | 160 | `declaration-track:33ec2d87de29ef3df65feb3018db627166e57c666429896b8ff1600669a3cd29` |
| 25 | `def` | [dualTensorIsoLinHomAux](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/dualtensorisolinhomaux.md) | 182 | `declaration-track:9f23e68078059caff33a72c8ff64643ed48e41bab995e7646e19c3c27430e2f4` |
| 26 | `def` | [dualTensorIsoLinHom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/dualtensorisolinhom.md) | 191 | `declaration-track:5dff98ee68b08e024c119bd57d2823f14490378f5f5979d101dd067d7e8cdc19` |
| 27 | `theorem` | [dualTensorIsoLinHom_hom_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepNamespacedSource.lean/declarations/dualtensorisolinhom-hom-hom.md) | 197 | `result-track:0d42d56bdb5b58c17df82bfb3f23e2f8bc648cf042a3db76265ea5dfbc5246b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=630a06d2a58c6f708c6dfdfdf8988bb183a560978ac9f4234106d50891185eba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FdRep/Variant1507db708e2798f41401398706fd880715838cfc7fdee5b881dfa81749de41e2.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variant1507db708e2798f41401398706fd880715838cfc7fdee5b881dfa81749de41e2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
