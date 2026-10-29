# Verification target: Ergodic Measure Preserving Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b5c694ef39da0496f448bd22e60b6bdc296464e",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant03dcf32a22399a6f5f26925a098d989c74fb2dfc9bc5eab27cb4e83188637420.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b5c694ef39da0496f448bd22e60b6bdc296464e`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant03dcf32a22399a6f5f26925a098d989c74fb2dfc9bc5eab27cb4e83188637420.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant03dcf32a22399a6f5f26925a098d989c74fb2dfc9bc5eab27cb4e83188637420.lean.json)

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
| 1 | `structure` | [MeasurePreserving](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/measurepreserving.md) | 52 | `declaration-track:98fcf544a2172e70f329141ea6f255967ffa0e2eaf55ad955ce71763b896c386` |
| 2 | `theorem` | [Ergodic Measure Preserving Namespaced Public](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/root-grwtsk-differentialequationsanddynamicalsystems-dynamicalsystems-me.md) | 57 | `result-track:b5a53ca5b9ec0a72b0a619473d4d52be52adf9282cad337e2644c877e338ab7c` |
| 3 | `theorem` | [id](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/id.md) | 63 | `result-track:51af2fabfb450ece3f1147acf126258bddff2057219c4d41cc4ff3b0766a05bf` |
| 4 | `theorem` | [aemeasurable](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/aemeasurable.md) | 66 | `result-track:9c63278a6bcf2b337589e3cdf246ad290850669dfa8c299c5ccae611f2eb8dcb` |
| 5 | `theorem` | [congr](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/congr.md) | 69 | `result-track:64449be0f8aee34c21ed17bd5b5bcbf5f46c023f377df3a152270c4735caf0c1` |
| 6 | `theorem` | [of_isEmpty](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/of-isempty.md) | 76 | `result-track:15ac8265fa398f18ca370fc083410cc0b0650d3fcb3d34b6ad3c9e803dd3e650` |
| 7 | `theorem` | [symm](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/symm.md) | 80 | `result-track:655e8d6cb8fb890ac66b5f5eea45715600780985374fc9ea5e86a393e91eb569` |
| 8 | `theorem` | [restrict_preimage](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/restrict-preimage.md) | 85 | `result-track:9dfed54c13413c8e477f91c59a63be25630c576db37c6342fba057d33ea90b1b` |
| 9 | `theorem` | [restrict_preimage_emb](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/restrict-preimage-emb.md) | 89 | `result-track:d571bdd27711b14f1f86b5e3369581bbb96ac545db5633673ddf3422adc6ce7f` |
| 10 | `theorem` | [restrict_image_emb](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/restrict-image-emb.md) | 94 | `result-track:51bc893a1b9cd4e6f07416ba39f4fd78a548d5a19977a6ab63364e74a73da792` |
| 11 | `theorem` | [aemeasurable_comp_iff](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/aemeasurable-comp-iff.md) | 98 | `result-track:4648af1a7fb4c2a9516f20c8cca6c713936627bfb7d14358cf82b9353cc9eb3d` |
| 12 | `theorem` | [quasiMeasurePreserving](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/quasimeasurepreserving.md) | 102 | `result-track:7c795a86a0bd32dda90c6c36642a9b5bf141dff0047eaa634c3f21b2b725ad3a` |
| 13 | `theorem` | [comp](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/comp.md) | 106 | `result-track:f15b0a7f88acfc8daae55a221cd21b5fdbce751c5d17e4891330975f4a563b4f` |
| 14 | `theorem` | [map_of_comp](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/map-of-comp.md) | 110 | `result-track:48adbd72dbceed71ce0670382013089f77bab497157b2f1fbaea531903f1aac7` |
| 15 | `theorem` | [of_semiconj](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/of-semiconj.md) | 115 | `result-track:f3fe979cc62ddfb2cf4b491c65f364777df7706420eb0524d0a059d9ddae587d` |
| 16 | `theorem` | [trans](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/trans.md) | 123 | `result-track:88e7d32d3c164b4637a77ded976e748be1ecf50c19b0a9b02bb8b5c79c80cf95` |
| 17 | `theorem` | [comp_left_iff](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/comp-left-iff.md) | 129 | `result-track:a205ff0623b63de4b58c33538d0620e466702d859b00367635b18e25d01447b8` |
| 18 | `theorem` | [comp_right_iff](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/comp-right-iff.md) | 135 | `result-track:e26b8bb58df2a4fc131000b0aeb2a686576e148262febf6e46579af119e28c67` |
| 19 | `theorem` | [sigmaFinite](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/sigmafinite.md) | 141 | `result-track:568d07fe299f1f7f4ad9f62f8aa96af38cf6f9f83be73a1534f8c9860e2d147e` |
| 20 | `theorem` | [sfinite](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/sfinite.md) | 145 | `result-track:1d954f983944a6c8741bfd7c0a28606b911eb408f08167b762797b3fd8695ebf` |
| 21 | `theorem` | [measure_preimage](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/measure-preimage.md) | 150 | `result-track:aea5692a56f0b30a1047500be96dec9158d72e23f7e4d4585987f318fc8c612d` |
| 22 | `theorem` | [measureReal_preimage](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/measurereal-preimage.md) | 155 | `result-track:6e7ec28d1c29f2fcb521cc1c76753cec9686e279981d842a009cf146179e7b56` |
| 23 | `theorem` | [measure_preimage_emb](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/measure-preimage-emb.md) | 159 | `result-track:7450cbbb02c30ff2bdf13205c39b2a1fb2105bc9cef0484d0445a42a226320c3` |
| 24 | `theorem` | [measure_preimage_equiv](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/measure-preimage-equiv.md) | 163 | `result-track:aff5d09666108f8b7876f49cf64738aa755807607f7ff69fab59e8ff9d4416e2` |
| 25 | `theorem` | [measure_preimage_le](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/measure-preimage-le.md) | 167 | `result-track:1e34e8cdd2112dbc66dcedb50bdb1124b9d5a42bd0bc53230c2f45148c9e49f2` |
| 26 | `theorem` | [preimage_null](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/preimage-null.md) | 172 | `result-track:eae3711e063f89341d42f7bbdc9f928742cf058d47a74eef5ec5f96e581eb36c` |
| 27 | `theorem` | [aeconst_comp](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/aeconst-comp.md) | 176 | `result-track:ec360d14e3aab4a71cf746c1a758a45a364fcf83ff6f6a0385548a779bc38cbf` |
| 28 | `theorem` | [aeconst_preimage](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/aeconst-preimage.md) | 183 | `result-track:cf81afb64c3af37dd0812166556865390e4d05d8fcd9db2b8ff9e0c3b201cbf7` |
| 29 | `theorem` | [add_measure](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/add-measure.md) | 188 | `result-track:98e7f099ed8a60c44ecd0f3f12b5eb64d1b983d1c029f74489b55eb92427ea8c` |
| 30 | `theorem` | [smul_measure](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/smul-measure.md) | 193 | `result-track:21249ade77bab16f11e5eb30abf326a0d2fc25b6bfd065ea925d3b9fe3f8cd8f` |
| 31 | `theorem` | [iterate](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/iterate.md) | 200 | `result-track:eaa384753509c532662968fee667e183750547064d94094fdfb2986739ef8a3b` |
| 32 | `lemma` | [measure_symmDiff_preimage_iterate_le](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/measure-symmdiff-preimage-iterate-le.md) | 206 | `result-track:885eeac5be6f490dc3e911f1783b6a9c1ab9de04f9f488a0efd9dda7eff4b7a0` |
| 33 | `theorem` | [exists_mem_iterate_mem_of_measure_univ_lt_mul_measure](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/exists-mem-iterate-mem-of-measure-univ-lt-mul-measure.md) | 220 | `result-track:b1a9017d9bdedbe7ad3e9575be2c58345ce7d7631e8fc84e6ab6366743290a61` |
| 34 | `theorem` | [exists_mem_iterate_mem](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/exists-mem-iterate-mem.md) | 239 | `result-track:0c846882065d98a904e577cb0ed1d0224b2abcfb1a31f048ddd3a64b007c462f` |
| 35 | `lemma` | [measurePreserving_subtype_coe](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/measurepreserving-subtype-coe.md) | 247 | `result-track:4513eecb8c5c5805a04dd3d771eed1095d84818087a02c96e4506f8d1343df7e` |
| 36 | `theorem` | [measurePreserving_symm](../../../../DynamicalSystemsAndErgodicTheory/ErgodicMeasurePreservingNamespacedPublic.lean/declarations/measurepreserving-symm.md) | 254 | `result-track:7c1d8ed670e095dd8354278d6141fcf1a062b65a79b23d0ffafa6ffbb171e51d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=372ebe046d09dcb4577cdc5c1f1659f3b315a0d01f21486922fdd5ee42cdd275 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant03dcf32a22399a6f5f26925a098d989c74fb2dfc9bc5eab27cb4e83188637420.lean","GRWTSK/_verification/specifications/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant03dcf32a22399a6f5f26925a098d989c74fb2dfc9bc5eab27cb4e83188637420.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
