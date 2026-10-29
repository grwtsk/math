# Verification target: Light Top Cat Adjunction Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd34675411dcf210eb7c07ccf7df8a1bf461dc89",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LightTopCatAdjunctionNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LightTopCatAdjunctionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd34675411dcf210eb7c07ccf7df8a1bf461dc89`.

Source path: `GRWTSK/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Condensed.Light.TopComparison` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Sequential` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.LightProfinite.Sequence` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coinducingCoprod](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LightTopCatAdjunctionNamespaced.lean/declarations/coinducingcoprod.md) | 38 | `declaration-track:170a384a53c2d7e14392f79eac772c07015a06aa421a8974a2134d21c0e19b45` |
| 2 | `instance` | [underlyingTopologicalSpace](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LightTopCatAdjunctionNamespaced.lean/declarations/underlyingtopologicalspace.md) | 46 | `declaration-track:74924dc9b8b2aae2b2c9b36d7037026e9439748d91a2379ca76b34a1b8ab1294` |
| 3 | `abbrev` | [toTopCat](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LightTopCatAdjunctionNamespaced.lean/declarations/totopcat.md) | 51 | `declaration-track:1184695db30c98eea1dd46f6e9abafd18a5feb6822c8dcac5ae25c5e18a3ef9c` |
| 4 | `lemma` | [continuous_coinducingCoprod](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LightTopCatAdjunctionNamespaced.lean/declarations/continuous-coinducingcoprod.md) | 53 | `result-track:1c01e8a8fe99defae4f7353baf190d2a8bf6721427fd77a228b4d2467408ddb1` |
| 5 | `def` | [toTopCatMap](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LightTopCatAdjunctionNamespaced.lean/declarations/totopcatmap.md) | 65 | `declaration-track:f4a5324f6b6ccc1ee77440535abb750e898195fed202da4114008ac068e284e3` |
| 6 | `def` | [Light Top Cat Adjunction Namespaced](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LightTopCatAdjunctionNamespaced.lean/declarations/lightcondsettotopcat.md) | 79 | `declaration-track:8a71d2656951fb5d805d59abda6f479619b86fbfd01b49a54210db05088302a7` |
| 7 | `def` | [topCatAdjunctionCounit](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LightTopCatAdjunctionNamespaced.lean/declarations/topcatadjunctioncounit.md) | 84 | `declaration-track:fa7888db528197704c6348ee4aecea5aa8fa6da3da5a498d783b03281818750d` |
| 8 | `def` | [topCatAdjunctionCounitEquiv](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LightTopCatAdjunctionNamespaced.lean/declarations/topcatadjunctioncounitequiv.md) | 94 | `declaration-track:b17e11854ab38d15653141a343dc48f19b9aa56c7a3403c93a658862cb59c9ab` |
| 9 | `lemma` | [topCatAdjunctionCounit_bijective](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LightTopCatAdjunctionNamespaced.lean/declarations/topcatadjunctioncounit-bijective.md) | 100 | `result-track:d175a2956eeb6d4ec1db7b8fa4aa9b02a8e366cba6d44fe1f1a16aa978272204` |
| 10 | `def` | [topCatAdjunctionUnit](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LightTopCatAdjunctionNamespaced.lean/declarations/topcatadjunctionunit.md) | 106 | `declaration-track:634e8accfed721d776b39f7567dd0150393898b65658de6b130a3aca03a79801` |
| 11 | `def` | [topCatAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LightTopCatAdjunctionNamespaced.lean/declarations/topcatadjunction.md) | 122 | `declaration-track:fcad40fe97ef9b4e2f7c021f1093398243702f5e9385d630ee4cccc7d0e955a8` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LightTopCatAdjunctionNamespaced.lean/declarations/instance-source-edition-3.md) | 130 | `declaration-track:63bc52822710890e0a720c7e464327b3073347e9526b06aaf837446f57f391f9` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LightTopCatAdjunctionNamespaced.lean/declarations/instance-source-edition-4.md) | 134 | `declaration-track:9bcee19d20fd117e55523899afb2e1258a504e4893799bafbd771c1d2b51f5b0` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LightTopCatAdjunctionNamespaced.lean/declarations/instance-source-edition-5.md) | 138 | `declaration-track:b473a73760e36abcb4e6f0577a3bdc119856eb29b47d1041e440842ae1b8e8a0` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LightTopCatAdjunctionNamespaced.lean/declarations/instance-source-edition-2.md) | 141 | `declaration-track:49fb13b1a1ce6e4b2bedcd1386568cc44d9c7f4957e9f88a3f3ab18ccd0ed324` |
| 16 | `def` | [lightCondSetToSequential](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LightTopCatAdjunctionNamespaced.lean/declarations/lightcondsettosequential.md) | 145 | `declaration-track:0f3088f39001d7a7417d862a8e3da890df880b56a1e980f6a9bdf54ce7a51f0a` |
| 17 | `def` | [sequentialToLightCondSet](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LightTopCatAdjunctionNamespaced.lean/declarations/sequentialtolightcondset.md) | 152 | `declaration-track:35d258a3bba79b15dbea7c94f931eb51daf95bc7cbcaf768a6ac28418cd11b81` |
| 18 | `def` | [sequentialAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LightTopCatAdjunctionNamespaced.lean/declarations/sequentialadjunction.md) | 160 | `declaration-track:031aff4d03b7b4e7cb1ed5f8ef67cd10fc9f93a998cb880c14c677ea982cfbd7` |
| 19 | `def` | [sequentialAdjunctionHomeo](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LightTopCatAdjunctionNamespaced.lean/declarations/sequentialadjunctionhomeo.md) | 173 | `declaration-track:63185209644d919f9e11b6c387be6507359ba19291b12cf1caaa4b5279cf8464` |
| 20 | `def` | [sequentialAdjunctionCounitIso](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LightTopCatAdjunctionNamespaced.lean/declarations/sequentialadjunctioncounitiso.md) | 194 | `declaration-track:2d35726e9926bb03f349e736209bec365ebf838659f7f54ee004ad5c1c44f2ed` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LightTopCatAdjunctionNamespaced.lean/declarations/instance.md) | 198 | `declaration-track:324f1d92fd7928ce1eee0e79260d67c06d4b67993ff65d6e6cbc21cc41fa9005` |
| 22 | `def` | [fullyFaithfulSequentialToLightCondSet](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LightTopCatAdjunctionNamespaced.lean/declarations/fullyfaithfulsequentialtolightcondset.md) | 210 | `declaration-track:b91237f4915e0880f76eaf69cf0d6c22fae33c49e3a4da10ce80cae55af20878` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=04b7a39c4dadee72c6d004e805df17e66540b40bad4a07abcf108f028a68bf89 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
