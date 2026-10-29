# Verification target: TStructure Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e03d365ad1e05af55cfc3eb5197a06becea4a996",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc756dec8e15f75f2604f9c42d169c0394f7db3a8d78047a8486f17d3937bef3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e03d365ad1e05af55cfc3eb5197a06becea4a996`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc756dec8e15f75f2604f9c42d169c0394f7db3a8d78047a8486f17d3937bef3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc756dec8e15f75f2604f9c42d169c0394f7db3a8d78047a8486f17d3937bef3a.lean.json)

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
| 1 | `structure` | [TStructure](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/tstructure.md) | 55 | `declaration-track:ea584fe87c6fc53f1082a24b2ec78b2a5e373928d614adf5e1474f996d21375f` |
| 2 | `lemma` | [exists_triangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/exists-triangle.md) | 79 | `result-track:4be91e9de4993fa64507edf670d34cff5bb45e3ddd77c2b25af266a0add79491` |
| 3 | `lemma` | [shift_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/shift-le.md) | 92 | `result-track:95817ba1ac64a240983360977cc18db8f9dbc6e34555f828048b16b2b96b5bb0` |
| 4 | `lemma` | [shift_ge](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/shift-ge.md) | 102 | `result-track:138ef7d0baef9f2f880e51b97e4ccce3eb17b1d7b782a74b459f0d594acfc87c` |
| 5 | `lemma` | [le_monotone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/le-monotone.md) | 112 | `result-track:68fb1a9dada65cef444df692d0481fb7ae143a592319d3be26e3456fbf2bf2e8` |
| 6 | `lemma` | [ge_antitone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/ge-antitone.md) | 135 | `result-track:4f1c52f5a649f7f6685570792ed170fb1f5863474ec215630167f56b39fa5476` |
| 7 | `class` | [IsLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/isle.md) | 160 | `declaration-track:217d996698269a31ec5cd1f0f443d37491a30e9e62d3e83bf1ea57eb026cabf3` |
| 8 | `class` | [IsGE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/isge.md) | 165 | `declaration-track:8af34ed41b06c5cda2448ede56934c4e06924cfcd7d3af771687985d39f9b612` |
| 9 | `lemma` | [le_of_isLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/le-of-isle.md) | 168 | `result-track:83d89bb984437ff09e0f0afd3de2e72e1920462f458be6794b9577771caa7423` |
| 10 | `lemma` | [ge_of_isGE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/ge-of-isge.md) | 170 | `result-track:8188f9bf7d4217f297ff1542977635f0309023880fa2d75dae4c96ed55ea9ea4` |
| 11 | `lemma` | [isLE_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/isle-of-iso.md) | 172 | `result-track:fb8ac502dd739c56119047711fdf07435b50fc5e4d87de7f300d49e39eec252b` |
| 12 | `lemma` | [isGE_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/isge-of-iso.md) | 175 | `result-track:0b787eb6cbc4153451b82e14282bc187b5bc4ed8daa35aaae83855f2d20afc1f` |
| 13 | `lemma` | [isLE_of_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/isle-of-le.md) | 178 | `result-track:4a6bbde7638dfd20eb838ef83436cafb17bf8aa39bf44227bd46aa4db183d2ba` |
| 14 | `lemma` | [isGE_of_ge](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/isge-of-ge.md) | 181 | `result-track:c964debbebdbc4cae4057a8189c3a6d9842b59d4e9082e1873db1c616b5cad47` |
| 15 | `lemma` | [le_iff_isLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/le-iff-isle.md) | 185 | `result-track:16d8ebda9779a9d9a08688ee47e3d5bff95174b05999ccc75cb82efa5ccdaad0` |
| 16 | `lemma` | [ge_iff_isGE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/ge-iff-isge.md) | 189 | `result-track:d02db0cf0de282790fb75ff6ba15134406f10945d7e69aaf7714e05562369161` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/instance-source-edition-4.md) | 192 | `declaration-track:5e54e380b91ea163848d092d5bb096172507d6f30636ddd7e9b2712596bd74dd` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/instance-source-edition-2.md) | 197 | `declaration-track:32a261329c6952b4613d811fa89bb28c0ce14add7a7e23f590afb2e89c7e64c1` |
| 19 | `lemma` | [isLE_shift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/isle-shift.md) | 202 | `result-track:262e3e1fea438c096585fe6a55bb5f98ffb0618c8bd53cca394b6854168ee24f` |
| 20 | `lemma` | [isGE_shift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/isge-shift.md) | 206 | `result-track:aa9d7e3f4682e1243080f1bfd2ad009d7af61d21c59a059c8b2ce9f0eab632a9` |
| 21 | `lemma` | [isLE_of_shift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/isle-of-shift.md) | 210 | `result-track:f83a30be118fd81c8888ad44f7f549cd7e521569fc1a8fd1e08adaec68179c1d` |
| 22 | `lemma` | [isGE_of_shift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/isge-of-shift.md) | 215 | `result-track:1c6a81f492773af9e5ee5162892442b46f3839a2009a92d54e357e296e37b491` |
| 23 | `lemma` | [isLE_shift_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/isle-shift-iff.md) | 220 | `result-track:0e1c1251daca96f3af55df40b001dff9f6479e1a0da91fd335ef30a187fb8d47` |
| 24 | `lemma` | [isGE_shift_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/isge-shift-iff.md) | 228 | `result-track:8e748cddcda81dcaaa9580be5c9400bcf44adb463cbd0338c523c01db5610c1b` |
| 25 | `lemma` | [zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/zero.md) | 236 | `result-track:7f97061b519dcb36e3a78ddb62e673d54beba18228c10fc1673bb4a2d585a77f` |
| 26 | `lemma` | [zero_of_isLE_of_isGE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/zero-of-isle-of-isge.md) | 247 | `result-track:523b88a01e914005a33e282451980c66f0f70db36b8efcb9dc871bb3dbd4bf97` |
| 27 | `lemma` | [isZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/iszero.md) | 251 | `result-track:55b578443fb228e12b5a1b0e1fb0b08c8c696392d3945f7ae0246a2439014611` |
| 28 | `def` | [minus](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/minus.md) | 257 | `declaration-track:0875166e990331881551358348b30829a628fde063141f5dd9f7d020f3702718` |
| 29 | `def` | [plus](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/plus.md) | 260 | `declaration-track:674a1e26f51049f13d3e520405f91cc5a981b5a834f7c33d3083742cfa9051f8` |
| 30 | `def` | [bounded](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/bounded.md) | 263 | `declaration-track:a56850d57b15c12fa8feb9c99721efaa51f97406ed62bb09bfc78f91b4d17360` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/instance-source-edition-8.md) | 265 | `declaration-track:e9d376344cd8ed8ffc53b32616822068de46153aeb3d390e0269c7b915113035` |
| 32 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/instance-source-edition-3.md) | 268 | `declaration-track:355a20b91e4a1fef2c7d3a2ff1aa7e0244ba899bf2b699b794d0e02f735cea5c` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/instance-source-edition-5.md) | 274 | `declaration-track:aeb657f6fdb9559b8390a29ff81525470b2042f9ecf27ad2261291bf82e99d4f` |
| 34 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/instance-source-edition-6.md) | 277 | `declaration-track:e0dcd8c32bda71bcd3a024f17de7d1504b58d784c286e99a42bf0a2305ff1c67` |
| 35 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/instance-source-edition-7.md) | 283 | `declaration-track:e2e5c7031d79a63fcc77c97638c5d9615755b688893dd0e931bc7e437cacc63f` |
| 36 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicPublic.lean/declarations/instance.md) | 287 | `declaration-track:3083268d285925cabc38f1bc2acc8551ab40fe53b0fc9570007fb41742a792c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6c388bcfa952318c50add3ee5d6317d39ab30befd29ac6fc387b0c9e69100e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc756dec8e15f75f2604f9c42d169c0394f7db3a8d78047a8486f17d3937bef3a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc756dec8e15f75f2604f9c42d169c0394f7db3a8d78047a8486f17d3937bef3a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
