# Verification target: Eml Torsion Scattering Boundary Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa4dc764c33b6f193622fdb2c5062eb6ee30b3b1",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variantace53ebf93597fe3568676e7cec7f7321058c14892fe8937816844afeaf60f73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa4dc764c33b6f193622fdb2c5062eb6ee30b3b1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variantace53ebf93597fe3568676e7cec7f7321058c14892fe8937816844afeaf60f73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variantace53ebf93597fe3568676e7cec7f7321058c14892fe8937816844afeaf60f73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.EmlKakeyaMedoidBoundary` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TorsionScatteringResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/torsionscatteringresidue.md) | 18 | `declaration-track:031249bb5f2552605576f5e62237529cb86f47d02857cf7d59d13df6736d5e99` |
| 2 | `def` | [TorsionScatteringResidue.token](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/torsionscatteringresidue-token.md) | 26 | `declaration-track:57a7b6eafdbb9feed65f4120723019c2d954ad5d6f2dee7b38e3c4b1c1405fd6` |
| 3 | `structure` | [TorsionClass](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/torsionclass.md) | 38 | `declaration-track:9d742b0027eb92dd29fa723756221bacd10bb1263d6bd762a40a6795adb98f3a` |
| 4 | `def` | [torsionPhiResidues](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/torsionphiresidues.md) | 46 | `declaration-track:63c837f5c926ba841d429a1412e7e934b31434ff6e270c02cb9e0af588848434` |
| 5 | `structure` | [EmlTorsionPacket](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/emltorsionpacket.md) | 58 | `declaration-track:2d11f69fb359c0ac139766443fc9f3969fd9b06dbc221c375910aff19135ffa5` |
| 6 | `def` | [PhiTorsion](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/phitorsion.md) | 67 | `declaration-track:04b99fc66a8933b7be24b1f6737254ce91d78a96e103afbe2cfb9be8a7768cb7` |
| 7 | `inductive` | [ScatteringProgression](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/scatteringprogression.md) | 83 | `declaration-track:20a1c3ab7fab216e50032d9b1c4139021f82bf9b6a99e083eb090d3219fe4905` |
| 8 | `def` | [monomialScatteringOperator](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/monomialscatteringoperator.md) | 89 | `declaration-track:0666e1dd86693119dce38b48bdaf27daa9b2c99dfb9497d7570a800269361a42` |
| 9 | `def` | [scatteringIsRingProgression](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/scatteringisringprogression.md) | 100 | `declaration-track:ff803588f57f7f5a3cb41f01cdd4ad098138700f0126dcaf9138b1ae1febe217` |
| 10 | `def` | [scatterTorsionClass](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/scattertorsionclass.md) | 106 | `declaration-track:463e527be1244bc8c12f2b03a754d38f3be5812b8140fa843e0214a7993d3b7f` |
| 11 | `def` | [scatterTorsionClasses](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/scattertorsionclasses.md) | 110 | `declaration-track:c6f10cd27a8df45ae604da3d957d9dda7cc76aa9670c6dea714ad2ae0e5e7c80` |
| 12 | `def` | [signedRingProgressions](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/signedringprogressions.md) | 115 | `declaration-track:6562c5ac7973fd10707f2c392f8c72c4e09477205fbbf329cf5c8244b3ec6df4` |
| 13 | `def` | [torsionResidues](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/torsionresidues.md) | 124 | `declaration-track:6d529200628263716f90db7b1131c395529d05bdb3ca4bbccf58430bff020937` |
| 14 | `def` | [strictlyOrderedTorsionClasses](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/strictlyorderedtorsionclasses.md) | 129 | `declaration-track:e28f20304a7f38d1f45b38e5aa7982338c89a6ee45a39dfb3240235825c36e71` |
| 15 | `def` | [nonAdmissibleForcedIntoRingAlgebra](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/nonadmissibleforcedintoringalgebra.md) | 137 | `declaration-track:4c702fa3d9d336861e38749800ea5585605efda0eec579316de561cb1053a57b` |
| 16 | `structure` | [AdmissibleEllipticCurveWithTorsion](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/admissibleellipticcurvewithtorsion.md) | 143 | `declaration-track:617af09133408ba7cc54f370a3c609f4d5a2ac7a3d96cd9921bd0c10b1508e81` |
| 17 | `def` | [torsionCurveSurface](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/torsioncurvesurface.md) | 151 | `declaration-track:3cd927878dd7201890b0aa5f4cad56cc065ab9401e99a6ac3bff5cdd3a17b8ef` |
| 18 | `def` | [torsionMordellWeilSurface](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/torsionmordellweilsurface.md) | 155 | `declaration-track:89d72bff8d9b4bace4442112f97d24c167a081f7fd69de26f88dfed334f64034` |
| 19 | `def` | [positiveTorsionClass](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/positivetorsionclass.md) | 162 | `declaration-track:14066e0e86dcbc4933c7335c56d1598cc879a1e258898a45ae061616c52108be` |
| 20 | `def` | [negativeTorsionClass](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/negativetorsionclass.md) | 169 | `declaration-track:a5eeeb35042aee1426e3ddb8266e065782d886ba1877b10b401a508397e61746` |
| 21 | `def` | [zeroTorsionClass](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/zerotorsionclass.md) | 176 | `declaration-track:9963d17696fcaecbe22203724f1e5361e0673451ffa7206e4d55533c56e67e0f` |
| 22 | `def` | [nonAdmissibleTorsionClass](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/nonadmissibletorsionclass.md) | 183 | `declaration-track:dc8eef5bd39df50e7cb7f7b50a61f4f38e54b74bb8637fc9f49b0332ecce2448` |
| 23 | `def` | [orderedTorsionClasses](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/orderedtorsionclasses.md) | 190 | `declaration-track:f460f6d9a9558aa34676db169b091ed48b56574677fd04ab68f88a6c7e90f894` |
| 24 | `def` | [torsionCurveWithOrderedClasses](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/torsioncurvewithorderedclasses.md) | 196 | `declaration-track:82b9f42d38c67749433aaba8602558594c912b5c8f2a50304403f2fb5449e44f` |
| 25 | `structure` | [TorsionRingAlgebraProgression](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/torsionringalgebraprogression.md) | 204 | `declaration-track:72d95c6e85daa0285348d06ee190ffee0b53f2b281f5f14fbf4ff5028e6a720f` |
| 26 | `def` | [torsionRingAlgebraProgression](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/torsionringalgebraprogression-source-edition-2.md) | 214 | `declaration-track:c4854da65bad43a0462d9ea713a731057311843a08011944a64791a37309d60f` |
| 27 | `def` | [defaultTorsionRingAlgebraProgression](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/defaulttorsionringalgebraprogression.md) | 227 | `declaration-track:c2195f6503f930472d8e419d4dae47fcb111e7485cd68c0d386340029d5cafd5` |
| 28 | `def` | [nonAdmissibleTorsionProgression](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/nonadmissibletorsionprogression.md) | 231 | `declaration-track:a732e61a1f2ce4e6ff5b96c7e1292b672499da9bcdd3d95bd7388b074a0b3e15` |
| 29 | `theorem` | [torsion_classes_are_naturally_ordered](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/torsion-classes-are-naturally-ordered.md) | 240 | `result-track:f59ccfbb4f3897ac0f91c420aedc3dfff48e1815a3ee174f3a083a3a75643cd8` |
| 30 | `theorem` | [phi_torsion_positive_maps_to_positive_progression](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/phi-torsion-positive-maps-to-positive-progression.md) | 244 | `result-track:029ae63a6ad7ea40c3dbb2453798eb4e52e57f9a74c596cc6a74e0d4c2112681` |
| 31 | `theorem` | [phi_torsion_negative_maps_to_negative_progression](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/phi-torsion-negative-maps-to-negative-progression.md) | 249 | `result-track:ed8e381f9777182e419bbb06296fcb25a653b5c0e7a3f053c5b08c498a05d02b` |
| 32 | `theorem` | [phi_torsion_zero_maps_to_refusal_residue](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/phi-torsion-zero-maps-to-refusal-residue.md) | 254 | `result-track:1d07ed25b5cb41996c764f30b9fe6019491357b2dbfeb279f538c1662e914f49` |
| 33 | `theorem` | [nonadmissible_torsion_emits_residue](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/nonadmissible-torsion-emits-residue.md) | 261 | `result-track:bb5302bbbada543d49352941b5c75d0c693a017d2ac655db552d24d66b27ff30` |
| 34 | `theorem` | [ring_algebra_progresses_by_signed_eml_polarity](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/ring-algebra-progresses-by-signed-eml-polarity.md) | 271 | `result-track:5ab46f40f014c715fb6f8c349b711dec8c3a0884bc73a0b63b117405e57a895f` |
| 35 | `theorem` | [nonadmissible_torsion_not_forced_into_ring_algebra](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/nonadmissible-torsion-not-forced-into-ring-algebra.md) | 286 | `result-track:d39496f345f4937296e2b7046c52c673d6482ac23519fa4f3697cc9518ba1910` |
| 36 | `theorem` | [torsion_scattering_has_no_theorem_authority](../../../../../ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundaryNamespaced.lean/declarations/torsion-scattering-has-no-theorem-authority.md) | 295 | `result-track:9a0ce03b24c0b1b1397e363a5f60e7d3a8dbe13bcdafc7821c724ac7c2215c16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9280c793e4db90d2f5b7705cc32ed9c7980c59453277bc54c4451fd5d3a32a10 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variantace53ebf93597fe3568676e7cec7f7321058c14892fe8937816844afeaf60f73.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variantace53ebf93597fe3568676e7cec7f7321058c14892fe8937816844afeaf60f73.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
