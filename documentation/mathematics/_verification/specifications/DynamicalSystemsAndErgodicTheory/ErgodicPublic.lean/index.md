# Verification target: Ergodic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8ef9297bfefa49286430541245f00390075f91c",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantec7443dbf2d8a4dcffdf9062e409314a3f6e0e42deddbe74aebed0de9216093a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8ef9297bfefa49286430541245f00390075f91c`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantec7443dbf2d8a4dcffdf9062e409314a3f6e0e42deddbe74aebed0de9216093a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantec7443dbf2d8a4dcffdf9062e409314a3f6e0e42deddbe74aebed0de9216093a.lean.json)

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
| 1 | `structure` | [PreErgodic](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/preergodic.md) | 44 | `declaration-track:ead8ef46cd3b42113243d284eae65265874735c93200d9ba5f53561de73e7822` |
| 2 | `structure` | [Ergodic](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/ergodic.md) | 49 | `declaration-track:b90385448b321618736926accd786911419a79f2d633de240c78017752c3f0ab` |
| 3 | `structure` | [QuasiErgodic](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/quasiergodic-source-edition-2.md) | 54 | `declaration-track:be60ee7b7f18a25bc58c4b4162932c4e314fbfef6bf9109a8d36edd06a0ea7f2` |
| 4 | `theorem` | [ae_empty_or_univ](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/ae-empty-or-univ-source-edition-2.md) | 61 | `result-track:a118b054b9dfcdea150df8cd4730f495d25a516e4e79001c0a7a96edeb72a56e` |
| 5 | `theorem` | [measure_self_or_compl_eq_zero](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/measure-self-or-compl-eq-zero.md) | 65 | `result-track:286afef818fa302782fbc02a41bbf026570a06ca2ebdbd6fd0f4eb52a2889877` |
| 6 | `theorem` | [ae_mem_or_ae_notMem](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/ae-mem-or-ae-notmem-source-edition-2.md) | 69 | `result-track:82441c0c6cd9929f2cecb70d5cababc4d75b4e2fc7e17bdb7089e087d73810bf` |
| 7 | `theorem` | [prob_eq_zero_or_one](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/prob-eq-zero-or-one.md) | 74 | `result-track:38344f139d0eef551ea057c6e00a644c4f095dd965306f08010a7c9a8e94491e` |
| 8 | `theorem` | [of_iterate](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/of-iterate.md) | 78 | `result-track:967f3af190805e132ffb41c8903512b522de0b69ca9b61ba56f6f01ad44c6915` |
| 9 | `theorem` | [smul_measure](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/smul-measure-source-edition-2.md) | 81 | `result-track:0abef472c160d444b3ad9cf7a598b6dacf08c7d0fdf75e7584bf0226cc06baef` |
| 10 | `theorem` | [zero_measure](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/zero-measure.md) | 85 | `result-track:2c18bcf327ca3616f9e0ff94f2cbbfcb2c837c6c7d754ffa3b0621d10fceb8ba` |
| 11 | `theorem` | [preErgodic_of_preErgodic_semiconj](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/preergodic-of-preergodic-semiconj.md) | 94 | `result-track:198db14e0f2cabacb2c709fdaf343181735e08a6e939ad543b16e80c2a182a9a` |
| 12 | `theorem` | [ergodic_of_ergodic_semiconj](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/ergodic-of-ergodic-semiconj.md) | 101 | `result-track:e9d6becbafdfafc0e7a434d8ae8db0d2096d47098b68f75e2da1da592a25d79f` |
| 13 | `theorem` | [preErgodic_conjugate_iff](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/preergodic-conjugate-iff.md) | 106 | `result-track:caa7ac7105a0db81683c4c53cad04d52dd4fdb50528b1c8650789ed3ac63f24c` |
| 14 | `theorem` | [ergodic_conjugate_iff](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/ergodic-conjugate-iff.md) | 113 | `result-track:0c645bffe35a916db487556d0076d5fd795bd29a261a1f0c750366f0bf5e28e8` |
| 15 | `theorem` | [aeconst_set₀](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/aeconst-set.md) | 125 | `result-track:9011f7716970dbc052cc28c41a75b0ac44e6a08dcb066b3998d27419483616c9` |
| 16 | `theorem` | [ae_empty_or_univ₀](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/ae-empty-or-univ.md) | 132 | `result-track:46338262e79a773d2f6bd295cfd5a2b9b2a9d3d4318ae0e3b13ec2c07e24a9cf` |
| 17 | `theorem` | [ae_mem_or_ae_notMem₀](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/ae-mem-or-ae-notmem.md) | 139 | `result-track:0e4bf67b4619ab83250c796aecb612ec28cdb64ea5e2ff25f7be1b2a764a56c4` |
| 18 | `theorem` | [smul_measure](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/smul-measure.md) | 144 | `result-track:00041ab30488c9ad246af956729b1593f3cecd5743f9a7c53256eafc573548c8` |
| 19 | `theorem` | [zero_measure](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/zero-measure-source-edition-2.md) | 148 | `result-track:443ec483d149faeef3b60a651eabecd9593dd0393f32b76964512ff056cf1faf` |
| 20 | `theorem` | [quasiErgodic](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/quasiergodic.md) | 158 | `result-track:699f8e7858fa538969c02f3f0eeb1e5a560b96b44d48df89fe044b0fa18af10b` |
| 21 | `theorem` | [ae_empty_or_univ_of_preimage_ae_le'](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/ae-empty-or-univ-of-preimage-ae-le.md) | 162 | `result-track:86cfada68cdb2bfc70d7362eba262b5c2851e04f0fa073746585ba5afa299ccb` |
| 22 | `theorem` | [ae_empty_or_univ_of_ae_le_preimage'](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/ae-empty-or-univ-of-ae-le-preimage.md) | 169 | `result-track:1d0ea65447932f5e61bdb0821dd7fb22725656000a429c6a93ac6b6be7c90511` |
| 23 | `theorem` | [ae_empty_or_univ_of_image_ae_le'](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/ae-empty-or-univ-of-image-ae-le.md) | 176 | `result-track:653c1dc397d552bc93040fd9ca30ca42e052538e570c716960c8e5538b6a8c6e` |
| 24 | `theorem` | [symm](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/symm.md) | 184 | `result-track:205d3ebfc401a83ec22abab3fdd3a99ae9e1ad5d3a51df981887b96cb50bbb5c` |
| 25 | `theorem` | [symm_iff](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/symm-iff.md) | 189 | `result-track:8c01a915d405585ade001a537d70430dbf30502aaa74e512d58fa971a482ae05` |
| 26 | `theorem` | [smul_measure](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/smul-measure-source-edition-3.md) | 191 | `result-track:103156f01d8e25e1173f6147b13c1dda269a50f73788a79f8425a75c6300494c` |
| 27 | `theorem` | [zero_measure](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/zero-measure-source-edition-3.md) | 195 | `result-track:80cba7d99b99c3d968b1d524705f3739521dd9c94062c02753cc1969bfc72ae3` |
| 28 | `theorem` | [ae_empty_or_univ_of_preimage_ae_le](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/ae-empty-or-univ-of-preimage-ae-le-source-edition-2.md) | 204 | `result-track:d7245abb47f4bc19dcf890ede2e5237e0e36bfb209e185e1de3ad211589cf331` |
| 29 | `theorem` | [ae_empty_or_univ_of_ae_le_preimage](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/ae-empty-or-univ-of-ae-le-preimage-source-edition-2.md) | 208 | `result-track:d6f77dce329c5e929725f44b3cae8aaa62a3564c3a4c0bf55a589286893e0ed7` |
| 30 | `theorem` | [ae_empty_or_univ_of_image_ae_le](../../../../DynamicalSystemsAndErgodicTheory/ErgodicPublic.lean/declarations/ae-empty-or-univ-of-image-ae-le-source-edition-2.md) | 212 | `result-track:b08923f3ec83e3c402bc3fd224670dbc3fb51fcafb65cbf211fb99607d657472` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c7fb6d1492c0540d8b2395ba18b86edee1e15d987512a2bd0f9c7f415b845b7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantec7443dbf2d8a4dcffdf9062e409314a3f6e0e42deddbe74aebed0de9216093a.lean","GRWTSK/_verification/specifications/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantec7443dbf2d8a4dcffdf9062e409314a3f6e0e42deddbe74aebed0de9216093a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
