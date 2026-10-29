# Verification target: Spheroid Banach Namespaced Public Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92d6a65100735bf586b04a2fbde0f0adde2b6f8b",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/SpheroidBanach/Variantddade09c787fcfb75ab99ab027b0dabf0b952ad911d41d8214631379093696f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92d6a65100735bf586b04a2fbde0f0adde2b6f8b`.

Source path: `GRWTSK/Topology/MetricTopology/SpheroidBanach/Variantddade09c787fcfb75ab99ab027b0dabf0b952ad911d41d8214631379093696f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/SpheroidBanach/Variantddade09c787fcfb75ab99ab027b0dabf0b952ad911d41d8214631379093696f3.lean.json)

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
| 1 | `structure` | [FiniteSpheroidChart](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/finitespheroidchart.md) | 54 | `declaration-track:2d538d84e3d690364ee85d5f7279cbd56c5b10e5b710ad6bd35ceda98cc4a91d` |
| 2 | `def` | [coordinates](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/coordinates.md) | 63 | `declaration-track:8c904aea44ed6b20bd4cb5da0a8899a6296892454f976dbfab4825054433c98a` |
| 3 | `def` | [ofCoordinates](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/ofcoordinates.md) | 69 | `declaration-track:ac725084e249af42ab9d42a0828ac2ad066164f1467d68a68259d8c990b55891` |
| 4 | `theorem` | [ext](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/ext.md) | 74 | `result-track:27442180daf706a9cf009f5fc9601c8f35fbe5f9e79c488801da105cc362cef4` |
| 5 | `def` | [chartEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/chartequiv.md) | 82 | `declaration-track:e82efb41b395d2021889d57cecd5a5cee61aeb11b8a3d253761f70ac7975c88f` |
| 6 | `theorem` | [chartEquiv_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/chartequiv-apply.md) | 92 | `result-track:88b049181637b0663bb1efe49280de8b16b624ec6612e9a74c74069980e57a67` |
| 7 | `theorem` | [chartEquiv_symm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/chartequiv-symm-apply.md) | 97 | `result-track:5be33d1c341c0b0ef17faa81614dff735a2f6ce7157e4bc0d74c40e0db2c69da` |
| 8 | `theorem` | [coordinates_ofCoordinates](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/coordinates-ofcoordinates.md) | 103 | `result-track:fab019b70063060a0ac35ac04158abecd428f2893b4221523feab58a208a2ff2` |
| 9 | `theorem` | [ofCoordinates_coordinates](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/ofcoordinates-coordinates.md) | 108 | `result-track:51dec1e487accf156e7329559dfd4146de1b9636fa53b77bce2a644cbb4454f2` |
| 10 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/instance-source-edition-3.md) | 116 | `declaration-track:8e921cb57d7b4e9ed75093b520eef7a88dd81af312b2e83205fee340e7daa32d` |
| 11 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/instance-source-edition-5.md) | 119 | `declaration-track:e4838bcc2030c1ceae8b1744823d701a1f86d759b939136fe35c8e5c09981899` |
| 12 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/instance-source-edition-2.md) | 122 | `declaration-track:17a3b1a98f23f9bafc191dd512b6fc091fb24815435614fd78730b881d5c144c` |
| 13 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/instance.md) | 125 | `declaration-track:1288d6f210c0cbc809355f8f0efcad75501115b9631a0bf0937672b166905364` |
| 14 | `def` | [chartLinearIsometryEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/chartlinearisometryequiv.md) | 129 | `declaration-track:17e33ab725a76d84ed76ec8c8db5a3e4c0e9b7699093a01e47392c35b9b13f79` |
| 15 | `theorem` | [chartLinearIsometryEquiv_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/chartlinearisometryequiv-apply.md) | 135 | `result-track:4fd80b4cc3206eb17412ca8b934067ea4c6c789fe539c514bab298ece099a2f2` |
| 16 | `theorem` | [chartLinearIsometryEquiv_symm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/chartlinearisometryequiv-symm-apply.md) | 141 | `result-track:09541bd3e2c9e55b5c1642e8665613f49e199e45cab50f6a67fbfd610203d797` |
| 17 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/instance-source-edition-4.md) | 149 | `declaration-track:8fff7a5d453f1cd917c99ee0a7d9c7ab44906b68d435f662ee6d9ad374093140` |
| 18 | `theorem` | [completeSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/completespace.md) | 153 | `result-track:fd2ffe9a53c9fff17fa930313677da7829184ef8084c81a60fd82b8d763c9a30` |
| 19 | `theorem` | [finiteSpheroidChart_isComplete_univ](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/finitespheroidchart-iscomplete-univ.md) | 160 | `result-track:8110470775c787d333cf058b62288a652f43d9be1f262b8fe2fd0675d7e34cc2` |
| 20 | `theorem` | [coordinates_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/coordinates-zero.md) | 165 | `result-track:7af7312d979288d361dfb3f02acb9c43941bdd82bed9ed194ae1a27984a690bd` |
| 21 | `theorem` | [coordinates_add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/coordinates-add.md) | 170 | `result-track:5d6e043edffe0824ebeb428970b01af31b46e3e8eaf48c571859e15378043817` |
| 22 | `theorem` | [coordinates_neg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/coordinates-neg.md) | 175 | `result-track:a8a01a1a381ab7b6e4bd4d9ae658864aaf153b322cfd1818f70b09612789b878` |
| 23 | `theorem` | [coordinates_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/coordinates-sub.md) | 180 | `result-track:21733de8023f23fbe0f7bb6f626842cdfecf05c2504796b773f97837f6a65401` |
| 24 | `theorem` | [coordinates_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/coordinates-smul.md) | 185 | `result-track:70eef5bd6404c040a996ec8a750a27a18558e5d6ef3ccb1a635b147420b19c46` |
| 25 | `theorem` | [zero_eq_ofCoordinates](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/zero-eq-ofcoordinates.md) | 193 | `result-track:25037d2251be58e1922ad017c53004bdc75ff590da73bd8bd0b72f3eaf9000e2` |
| 26 | `theorem` | [zero_ambient_eq_south](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/zero-ambient-eq-south.md) | 201 | `result-track:7d4fc577d40f4f45aa239dfcdac528ec0b9c610126781eb7c44bae161ebd46fa` |
| 27 | `theorem` | [add_eq_ofCoordinates](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/add-eq-ofcoordinates.md) | 209 | `result-track:89c28627272e62054bf4b084f017375fc0aa09105e22ac15bd9c8f2d9ac08e93` |
| 28 | `theorem` | [neg_eq_ofCoordinates](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/neg-eq-ofcoordinates.md) | 216 | `result-track:1f7b78f5c15fe65d7189b27f55ee147ecff1ff420b1e63d950fc915a471d7373` |
| 29 | `theorem` | [sub_eq_ofCoordinates](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/sub-eq-ofcoordinates.md) | 223 | `result-track:de03819c6517578d9d8b437aba4ce6b60dc3c004c2d763ea85319cc47a97baf4` |
| 30 | `theorem` | [smul_eq_ofCoordinates](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/smul-eq-ofcoordinates.md) | 230 | `result-track:87ea21023bc00680feef69321dad2e1e96a09329194661d9d11b523a17b8e4b9` |
| 31 | `theorem` | [norm_eq_coordinates](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/norm-eq-coordinates.md) | 238 | `result-track:8e6a079ccb822603a6d5da6d2545723a28f3e86b1d990cbf812b5b71c84c6588` |
| 32 | `theorem` | [norm_eq_polar_formula](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/norm-eq-polar-formula.md) | 246 | `result-track:1cc3e50254e8abe15c39dc02e46963f4241cd023b093b4a68b4bdf6f65e8dd5d` |
| 33 | `theorem` | [dist_eq_coordinates](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/dist-eq-coordinates.md) | 257 | `result-track:9f2135af765ab314dfd4f32736dec61ce61b88446be26c6db3253ae2a7d86f44` |
| 34 | `theorem` | [polar_eq_norm_formula](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/polar-eq-norm-formula.md) | 264 | `result-track:d06fc64641833acd0e31765e9c70bc964b84b0cd2de8b0556ea1f9a154390616` |
| 35 | `theorem` | [northGap_eq_norm_formula](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition2.lean/declarations/northgap-eq-norm-formula.md) | 282 | `result-track:8ca4400882ee00213b5c0db18314d261034c090dc4907fda38eff0c0ce85b652` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=adbf154ea0405490b80cd69ca2e6c0c4aad8e886726c00a737dcbee03a112054 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/SpheroidBanach/Variantddade09c787fcfb75ab99ab027b0dabf0b952ad911d41d8214631379093696f3.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/SpheroidBanach/Variantddade09c787fcfb75ab99ab027b0dabf0b952ad911d41d8214631379093696f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
