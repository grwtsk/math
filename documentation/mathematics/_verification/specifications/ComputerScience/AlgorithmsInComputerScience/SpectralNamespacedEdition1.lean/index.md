# Verification target: Spectral Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fadbe89b136139f56a588f44f5045da112e9c402",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Spectral/Variant913c068490b9d12612402904d05b8a9a34545ea84c46f87a7f9ca84775ba2542.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fadbe89b136139f56a588f44f5045da112e9c402`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Spectral/Variant913c068490b9d12612402904d05b8a9a34545ea84c46f87a7f9ca84775ba2542.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Spectral/Variant913c068490b9d12612402904d05b8a9a34545ea84c46f87a7f9ca84775ba2542.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Kernel.Adadic` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Boolean.Cube.EdgeRelaxation` — import line 7; external provider; requires a separately pinned dependency.
- `Surface.Boolean.Cube.BooleanNetwork` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Adadic.Spectral.Dyadic](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-dyadic.md) | 45 | `declaration-track:2b363a958d65a831cdebdf41842888d55f9b0f72c20a002cba6e8cef1a4477f0` |
| 2 | `def` | [Adadic.Spectral.Dyadic.denominator](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-dyadic-denominator.md) | 51 | `declaration-track:6b41a2d8c9988b7c949514305489d08fd9301c154d114daa0136249a0fc58acf` |
| 3 | `abbrev` | [Adadic.Spectral.IntMatrix](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-intmatrix.md) | 57 | `declaration-track:d49e5415ccec59227bf0f9c8d65c059dc568cf92064e1af9c66bbe5f758bc3de` |
| 4 | `def` | [Adadic.Spectral.IntMatrix.entry](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-intmatrix-entry.md) | 61 | `declaration-track:da391734b9a4bfb188eaca16d032cf9dd4c58d9f5e80fb3adc91887915cde73c` |
| 5 | `def` | [Adadic.Spectral.intOfBool](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-intofbool.md) | 69 | `declaration-track:31e50c64508afd2846d4c431e9da775df2a239f72e8c624d162d6d5d92554d12` |
| 6 | `def` | [Adadic.Spectral.IntMatrix.ofBool](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-intmatrix-ofbool.md) | 74 | `declaration-track:c3174e5779290d3e81cc072642f0d9cf27cd0bb13f12b72aae1d3e4e9d908a61` |
| 7 | `def` | [Adadic.Spectral.finSum](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-finsum.md) | 80 | `declaration-track:0379d947e5842ea0e5cabfab830cd87fa2e2d8cb94df20bd489d2e9862c15efa` |
| 8 | `def` | [Adadic.Spectral.character](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-character.md) | 93 | `declaration-track:d6ce0f81c18a79ff32fcf3918285a5f505c48cd9a7ae652c9735d235445ba447` |
| 9 | `def` | [Adadic.Spectral.characterVector](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-charactervector.md) | 107 | `declaration-track:ebf27575665806bd43c5d5bd441097b73666239979e4999f94d15ebdfc787dcb` |
| 10 | `def` | [Adadic.Spectral.matrixSpectralNumerator](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-matrixspectralnumerator.md) | 120 | `declaration-track:9c9a333f7bfdf042da8e30fdf0be7c6d7bce4fca323e2c9121e3cb6a3664677a` |
| 11 | `def` | [Adadic.Spectral.matrixSpectralCoefficient](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-matrixspectralcoefficient.md) | 140 | `declaration-track:07fff683f7969882f205adbe99116bb58985ec8d9e57ba31f5de9712c97db788` |
| 12 | `theorem` | [Adadic.Spectral.matrixSpectralCoefficient_exponent](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-matrixspectralcoefficient-exponent.md) | 148 | `result-track:639a209a529cd2310d1863650afd1a2b71f46ae8028fac6c1dc846819039152b` |
| 13 | `theorem` | [Adadic.Spectral.matrixSpectralCoefficient_denominator](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-matrixspectralcoefficient-denominator.md) | 155 | `result-track:e9820504d404bcbae1f43dc567ce7ca14ca0abbc372220f866bd7df21ad558c0` |
| 14 | `def` | [Adadic.Spectral.matrixTransform](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-matrixtransform.md) | 163 | `declaration-track:2058dd70fdcbb4e95d6ddbab9ec8aad6fb9553caa081e95ba4223d741be32709` |
| 15 | `def` | [Adadic.Spectral.transitionIntMatrix](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-transitionintmatrix.md) | 170 | `declaration-track:120aa8e75daba0bd1c3fa0740373f53ce070ca76a6e2c1707ce5aa18c1baf82d` |
| 16 | `def` | [Adadic.Spectral.transitionSpectralNumerator](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-transitionspectralnumerator.md) | 178 | `declaration-track:7c0fb3b429a5dbf3300b1b04f6ffe26f36d957176768c186db2f569dab8a2033` |
| 17 | `def` | [Adadic.Spectral.transitionSpectralCoefficient](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-transitionspectralcoefficient.md) | 189 | `declaration-track:3892a4f6f8b1aeefb092aaed0218524851a9d9cccbd6ea2e547a36c0c0f82a79` |
| 18 | `def` | [Adadic.Spectral.transitionTransform](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-transitiontransform.md) | 200 | `declaration-track:26575ebe94ad310e7310d9a5a2feae80d718cdefb814f09f5af953d1414c3531` |
| 19 | `theorem` | [Adadic.Spectral.transitionTransform_entry](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-transitiontransform-entry.md) | 207 | `result-track:b6505a98edaca3af454d372452bb7db6aa40363d705dfd4c87f0b058c42381a6` |
| 20 | `structure` | [Adadic.Spectral.TransitionTransform](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-transitiontransform-source-edition-2.md) | 218 | `declaration-track:f6ba5f1c7421cd656fdee7d1337dc34ac76c9d22dad6622f9a2bdbc9d1f78f94` |
| 21 | `def` | [Adadic.Spectral.TransitionTransform.ofNetwork](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-transitiontransform-ofnetwork.md) | 230 | `declaration-track:8d25fb61ad8fac34329ae31ec362397aa650a4b68c9691c9ed01f0ee317d2bb4` |
| 22 | `theorem` | [Adadic.Spectral.TransitionTransform.transition_correct](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-transitiontransform-transition-correct.md) | 241 | `result-track:09c31d76560fffd99ec36c6e640b664cbfea8a3ead8f9583c921f1e8d5fe5c12` |
| 23 | `theorem` | [Adadic.Spectral.TransitionTransform.spectral_correct](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-transitiontransform-spectral-correct.md) | 249 | `result-track:f1a957d98f65ae69340f0e87f35a0d62498573dc30eae3293eb6b389733abade` |
| 24 | `def` | [Adadic.Bit.edgeLine](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-bit-edgeline.md) | 261 | `declaration-track:4deafc85d903400382f6359ee3ac360af6a315254ddae05127afd89dea5d36a6` |
| 25 | `abbrev` | [Adadic.DensityFrame](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-densityframe.md) | 271 | `declaration-track:76f81aba5f7c2561e8df973306961115835bd016672146f6a94e350d24dc2681` |
| 26 | `def` | [Adadic.DensityFrame.ofEdgeVector](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-densityframe-ofedgevector.md) | 275 | `declaration-track:9d730375c69c0f30188d047e4eeea59fde37fb7c2f6372a1a6ac45c144cb78ff` |
| 27 | `def` | [Adadic.DensityFrame.relaxedPole](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-densityframe-relaxedpole.md) | 283 | `declaration-track:87983d417c12aebc9c9ac62a9c6c6cb5e35126114ec85517566b67ca75f3e5e6` |
| 28 | `def` | [Adadic.DensityFrame.relaxedCenteredPole](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-densityframe-relaxedcenteredpole.md) | 289 | `declaration-track:4af4715f24a31ce41c2cb77d6a260d048a4966b1afd606130e7de14e00a9761a` |
| 29 | `def` | [Adadic.DensityFrame.relaxedBoundaryShell](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-densityframe-relaxedboundaryshell.md) | 296 | `declaration-track:d6733d41607af99e8c362d513805c5a1dd4022527e5ed53ee6cd93ef16e43f1c` |
| 30 | `theorem` | [Adadic.DensityFrame.relaxedPole_coverOpen](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-densityframe-relaxedpole-coveropen.md) | 303 | `result-track:4e15b5b3c8b5eb6ee3878f6fddd95abf0ef9a937b8616ef198aff18ec420921b` |
| 31 | `theorem` | [Adadic.DensityFrame.relaxedPole_coverBoundary](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-densityframe-relaxedpole-coverboundary.md) | 309 | `result-track:a6627298fada42c8e45a697b58c83738df1cb9ef3c2a08d998078707e43a79e2` |
| 32 | `theorem` | [Adadic.DensityFrame.relaxedPole_arithmeticCore](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-densityframe-relaxedpole-arithmeticcore.md) | 315 | `result-track:54ad54961659b04a712e05167126e5192b17912d0a3a26e62c2c5a423efdf576` |
| 33 | `theorem` | [Adadic.DensityFrame.relaxedPole_arithmeticResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-densityframe-relaxedpole-arithmeticresidue.md) | 321 | `result-track:4271c3043b92fcfbee99d3b440fc6670da1d2730f538cdf41e19f2cab90e4bbf` |
| 34 | `theorem` | [Adadic.DensityFrame.relaxedPole_controlFlow](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-densityframe-relaxedpole-controlflow.md) | 327 | `result-track:e1015dfc70c11e5a39d3cbb7b8d732f9928ffbb4285c41f05968d7dc027a896a` |
| 35 | `theorem` | [Adadic.DensityFrame.relaxedPole_kernelAdmission](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-densityframe-relaxedpole-kerneladmission.md) | 333 | `result-track:cc27fc8df6882824c9759d527524c661878ab84d3fefe8061905eb64e0b43362` |
| 36 | `theorem` | [Adadic.DensityFrame.relaxedPole_handshake](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-densityframe-relaxedpole-handshake.md) | 339 | `result-track:8256328803924cdc9ed8ceea0b31db518e90faa11c9917d825ff672c2954e795` |
| 37 | `theorem` | [Adadic.DensityFrame.relaxedPole_noncrisp](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-densityframe-relaxedpole-noncrisp.md) | 345 | `result-track:61118930b95b1df7fe213e33194c678d3a047c355221d57003a82b6111567b93` |
| 38 | `theorem` | [Adadic.Spectral.edgeRelaxation_kernel_symmetric](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-edgerelaxation-kernel-symmetric.md) | 352 | `result-track:782d658c3372d2ebf113eae58d42760902a3a68021e3f71d2dc2b35260bf080e` |
| 39 | `theorem` | [Adadic.Spectral.relaxedPole_mass_conservation](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-relaxedpole-mass-conservation.md) | 363 | `result-track:e91da7e581e48aef22b2cf4e0064cf4336beb657a9a556bfc450f8b331215023` |
| 40 | `structure` | [Adadic.Spectral.AcceptedNetwork](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-acceptednetwork.md) | 378 | `declaration-track:bef5a7d14a9c696f8f2161966046fe84546fa1d3d13f0a6464e08680e14d7556` |
| 41 | `def` | [Adadic.Spectral.AcceptedNetwork.ofNetwork](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-acceptednetwork-ofnetwork.md) | 390 | `declaration-track:44fdd903fe585135fff1d31cd7f45e418f9c4efb78fba66dc115e59e8dd73535` |
| 42 | `theorem` | [Adadic.Spectral.AcceptedNetwork.transform_network_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-acceptednetwork-transform-network-eq.md) | 404 | `result-track:c4c1f12b4b0b1dab80b7ef9cf99969c6d7a482b0995a9b62182177bbebaa07ab` |
| 43 | `theorem` | [Adadic.Spectral.AcceptedNetwork.frame_admissible](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-acceptednetwork-frame-admissible.md) | 411 | `result-track:a9cb5287ebd34583d3005cedc38148d342c00106754c1a62471f6a38148a7a1c` |
| 44 | `theorem` | [Adadic.Spectral.AcceptedNetwork.densityFrame_eq_relaxedPole](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralNamespacedEdition1.lean/declarations/adadic-spectral-acceptednetwork-densityframe-eq-relaxedpole.md) | 421 | `result-track:eb42eadb5d58adaeddfcd9721f3d1135aa4e71bd87f63feb3d94593c3a9e41ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8028cbd13908988d7fc247f492d7896632ad31bbe09e4c45da7ebdcb27faf8b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Spectral/Variant913c068490b9d12612402904d05b8a9a34545ea84c46f87a7f9ca84775ba2542.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Spectral/Variant913c068490b9d12612402904d05b8a9a34545ea84c46f87a7f9ca84775ba2542.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
