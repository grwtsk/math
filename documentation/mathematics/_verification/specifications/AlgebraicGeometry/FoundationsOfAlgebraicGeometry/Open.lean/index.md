# Verification target: Open

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd9c77ce1245e4f72cb3164cde52ca6b001ed9ab",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Open/Variante840bfa4edf4ec9ca97db8c5ab05a53e9cfa15ed45340c83ab01101d5fdc5193.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd9c77ce1245e4f72cb3164cde52ca6b001ed9ab`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Open/Variante840bfa4edf4ec9ca97db8c5ab05a53e9cfa15ed45340c83ab01101d5fdc5193.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Open/Variante840bfa4edf4ec9ca97db8c5ab05a53e9cfa15ed45340c83ab01101d5fdc5193.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Cover.MorphismProperty` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [OpenCover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/opencover.md) | 33 | `declaration-track:d2464e915717a9ce8c238527af5ffff5ec37d08e2ddc460a3d58acd6761c40c3` |
| 2 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/instance.md) | 40 | `declaration-track:2858ceaddfb6ce21e9c45a630a63556b42b2f65a3a205e1a619d3ec86a2c614f` |
| 3 | `def` | [affineCover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/affinecover.md) | 43 | `declaration-track:75153760e4e2eca10798d1786a6a6ce2a6ca0a04e6bf776e62fa754463bbcf1d` |
| 4 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/instance-source-edition-3.md) | 60 | `declaration-track:a1e8780e9344fdc0cd4488f2e580aa6cdb489d758f6c8a0f87013118df651afc` |
| 5 | `theorem` | [OpenCover.iSup_opensRange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/opencover-isup-opensrange.md) | 63 | `result-track:4560799f4800eb41b5ba41cb1e0b803dc9d48d6ca7647b5cce5409b49e5e6ad4` |
| 6 | `lemma` | [OpenCover.isOpenCover_opensRange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/opencover-isopencover-opensrange.md) | 68 | `result-track:3aabe3c69c6b6095730c970631893e4dbf50ebcf5e446be1dec797b3290708fc` |
| 7 | `def` | [OpenCover.finiteSubcover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/opencover-finitesubcover.md) | 75 | `declaration-track:e38b18311e55f92d7f2485809ded0d5e37b1805520138cb56ef6b1237b897899` |
| 8 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/instance-source-edition-2.md) | 94 | `declaration-track:3ea38badcf441ea59df3005ecd3bb0d809871c2d60c4faa32d4292ef5d322444` |
| 9 | `theorem` | [OpenCover.compactSpace](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/opencover-compactspace.md) | 97 | `result-track:63e10005729963348f68c49208610b4b0daa74867444a1d97aa818ebe633a357` |
| 10 | `abbrev` | [AffineOpenCover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/affineopencover-source-edition-2.md) | 115 | `declaration-track:714aae09d4ec97989e5f80235a07e4e9735f7c93ccad0d65f06cde617004f96c` |
| 11 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/instance-source-edition-4.md) | 120 | `declaration-track:c19e47c56a217ab588be91eaf0c2c03bf8c90103450a3503dfefa573adb14eec` |
| 12 | `def` | [openCover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/opencover-source-edition-2.md) | 125 | `declaration-track:df7944fc07ba89b82b1d0f1871793b1f66253441001bc0267a36852fac92bb4a` |
| 13 | `def` | [affineOpenCover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/affineopencover.md) | 132 | `declaration-track:2c51281a5bd4c310bf3e1888fa0f6d888ccbd1ec764c3f65061e97b54aa31225` |
| 14 | `lemma` | [openCover_affineOpenCover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/opencover-affineopencover.md) | 140 | `result-track:144ad0d08fd0060b0e68eb145da0f7faab532633d580d2fe3f466435ab2dccc7` |
| 15 | `def` | [OpenCover.affineRefinement](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/opencover-affinerefinement.md) | 147 | `declaration-track:1593abec1a2160feb6d7090fbd6576fced5a452637e0e0e80f6d8507ad513333` |
| 16 | `def` | [OpenCover.pullbackCoverAffineRefinementObjIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/opencover-pullbackcoveraffinerefinementobjiso.md) | 155 | `declaration-track:b659b8d6e246200f6c53f945a8bb8ee302095bff101805d1ea47b105e36c4d65` |
| 17 | `lemma` | [OpenCover.pullbackCoverAffineRefinementObjIso_inv_map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/opencover-pullbackcoveraffinerefinementobjiso-inv-map.md) | 163 | `result-track:44f3743f839a6f28624a859a3f7660b511f2fcb276b2fe82463bf9b5f229886d` |
| 18 | `lemma` | [OpenCover.pullbackCoverAffineRefinementObjIso_inv_pullbackHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/opencover-pullbackcoveraffinerefinementobjiso-inv-pullbackhom.md) | 177 | `result-track:d73b0158badd81970c1d5d733d53db645b30fe5a7c97af21ff053cc85c085a89` |
| 19 | `def` | [affineOpenCoverOfSpanRangeEqTop](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/affineopencoverofspanrangeeqtop.md) | 192 | `declaration-track:fad40e09372b86b5dc3c6f8e0c8be553171adad54e0f532374df3a6d42419e12` |
| 20 | `def` | [OpenCover.fromAffineRefinement](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/opencover-fromaffinerefinement.md) | 208 | `declaration-track:9c6b772aa3266d63b60a85c353858654a1125b6b72e531a5201b50f4af3372b3` |
| 21 | `lemma` | [OpenCover.ext_elem](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/opencover-ext-elem.md) | 215 | `result-track:63323b448a1a9a310ec4d3b69561429718d98ea49ef2f65976fa5c59bf78e6b0` |
| 22 | `lemma` | [zero_of_zero_cover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/zero-of-zero-cover.md) | 231 | `result-track:9516721106210a048c2326572ec0d7b889848e124c7d011330102df756f5bc7d` |
| 23 | `lemma` | [isNilpotent_of_isNilpotent_cover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/isnilpotent-of-isnilpotent-cover.md) | 237 | `result-track:19485ebafa0db3b443f10481bd83654794c6c2aa6ee185ae5a785f538508342c` |
| 24 | `def` | [affineBasisCoverOfAffine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/affinebasiscoverofaffine.md) | 254 | `declaration-track:38a06d3ffaae1266158144ea6969876636b6da4db180d3d40c2d185e0d1a8e2f` |
| 25 | `def` | [affineBasisCover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/affinebasiscover.md) | 267 | `declaration-track:d88575c220299618bf0ad613a35fc0c2b727aa223129ce1a05f35280338b0cbc` |
| 26 | `def` | [affineBasisCoverRing](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/affinebasiscoverring.md) | 271 | `declaration-track:fed746af351eb37c248264656fde86199de44f88abee0cbfa798f4ae0e82c557` |
| 27 | `theorem` | [affineBasisCover_obj](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/affinebasiscover-obj.md) | 274 | `result-track:1e4145c888d1121137fbc7392880f7ba7f95d8cfc45a5b8eb3dfa1fbf6fe08ae` |
| 28 | `theorem` | [affineBasisCover_map_range](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/affinebasiscover-map-range.md) | 278 | `result-track:b280acc44f94813a432d0b4900999212d69f0bd127d376a40b4870f427be6842` |
| 29 | `theorem` | [affineBasisCover_is_basis](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Open.lean/declarations/affinebasiscover-is-basis.md) | 288 | `result-track:af7407e7bbb1e22a781f3b3dd015c5202f3c19e0dbeefca7d0ec1748e056d114` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ffb37d5a982ab98f5f6329392d91b492ced040fefcfd641d115e3058a512da6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Open/Variante840bfa4edf4ec9ca97db8c5ab05a53e9cfa15ed45340c83ab01101d5fdc5193.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/Open/Variante840bfa4edf4ec9ca97db8c5ab05a53e9cfa15ed45340c83ab01101d5fdc5193.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
