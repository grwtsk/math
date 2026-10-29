# Verification target: Spectral Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "042b83876c925ca69df09f7278246dec946ad146",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Spectral/Variant46d3b00c43713f1815c9996b41941494c41912fab7381edbadd8dabda7d26d55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `042b83876c925ca69df09f7278246dec946ad146`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Spectral/Variant46d3b00c43713f1815c9996b41941494c41912fab7381edbadd8dabda7d26d55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Spectral/Variant46d3b00c43713f1815c9996b41941494c41912fab7381edbadd8dabda7d26d55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Kernel.Adadic` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Boolean.Cube.EdgeRelaxation` — import line 2; external provider; requires a separately pinned dependency.
- `Surface.Boolean.Cube.BooleanNetwork` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Adadic.Spectral.Dyadic](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-dyadic.md) | 37 | `declaration-track:7f797f9d3bab9b2a08cd585a06b35cd7c9f8e77162b7d59e16e3ebae7d927b0b` |
| 2 | `def` | [Adadic.Spectral.Dyadic.denominator](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-dyadic-denominator.md) | 43 | `declaration-track:ded4544856fd3d5e92820a2c7f2dce12d29f5a9f21b0eae46d378213e32c6993` |
| 3 | `abbrev` | [Adadic.Spectral.IntMatrix](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-intmatrix.md) | 49 | `declaration-track:6e886a2079e28a3b5a414d55203169ef0bddfd69be475777ac2845c893ac397b` |
| 4 | `def` | [Adadic.Spectral.IntMatrix.entry](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-intmatrix-entry.md) | 53 | `declaration-track:9b4338bf84af3a2b7c03773c1485ea5145410ba1c97f9e3eff1e1b4b9a571c26` |
| 5 | `def` | [Adadic.Spectral.intOfBool](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-intofbool.md) | 61 | `declaration-track:cef5ece460a40a8d73bb00d86ae1d97c696cb838a7a62dc975619a8a070b3f38` |
| 6 | `def` | [Adadic.Spectral.IntMatrix.ofBool](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-intmatrix-ofbool.md) | 66 | `declaration-track:564d416e28d065f9e0abfd85183ceae4d90e5707033f79a6d894460d88161b4f` |
| 7 | `def` | [Adadic.Spectral.finSum](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-finsum.md) | 72 | `declaration-track:ed3310e758b4265836852a180ff0b8906ad45a4f2eb3d7a3ac1acab18c5b437a` |
| 8 | `def` | [Adadic.Spectral.character](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-character.md) | 85 | `declaration-track:4335d0f294278fd9a93737a3a90e2c7c430589ed6c46c1502cba0625ec0efaaa` |
| 9 | `def` | [Adadic.Spectral.characterVector](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-charactervector.md) | 99 | `declaration-track:48dac2b02ef4f98531402194376e885c35c027676f3685652e90d1e0b228e9af` |
| 10 | `def` | [Adadic.Spectral.matrixSpectralNumerator](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-matrixspectralnumerator.md) | 112 | `declaration-track:310253b4ecc5222131f6e4f0d9760b1a5283c9dac2d3faab9820bd050d41d681` |
| 11 | `def` | [Adadic.Spectral.matrixSpectralCoefficient](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-matrixspectralcoefficient.md) | 132 | `declaration-track:962343f83fd4836d5fc94335159d5f28bb50e3a961b32574d4e2b39cbb80ce89` |
| 12 | `theorem` | [Adadic.Spectral.matrixSpectralCoefficient_exponent](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-matrixspectralcoefficient-exponent.md) | 140 | `result-track:fb90d95ba01faa022acbb8016580a709e7f1da3693c887d7622ef689f9f17633` |
| 13 | `theorem` | [Adadic.Spectral.matrixSpectralCoefficient_denominator](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-matrixspectralcoefficient-denominator.md) | 147 | `result-track:50f97d62fe3fcdabd727b3aa740fc1686a6e9affa588fa41ab1fc170652044dd` |
| 14 | `def` | [Adadic.Spectral.matrixTransform](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-matrixtransform.md) | 155 | `declaration-track:18735a2549c9626a99f404503012be18122f30c412d715620eddab1bf50cf1ea` |
| 15 | `def` | [Adadic.Spectral.transitionIntMatrix](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-transitionintmatrix.md) | 162 | `declaration-track:982040391140651ed1db1678ffe401eb1f45a6e2fb424bc29a941de505d30c0a` |
| 16 | `def` | [Adadic.Spectral.transitionSpectralNumerator](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-transitionspectralnumerator.md) | 170 | `declaration-track:acb3f6d0a81c0fcf867c5b9cbeabadb1b029ff1e8f3396ba3cb8e4adc9cb2927` |
| 17 | `def` | [Adadic.Spectral.transitionSpectralCoefficient](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-transitionspectralcoefficient.md) | 181 | `declaration-track:372f14117b4c891a512c6c9b6ee01030a4a0b20ea99b4f63f2a9ea6c88772f15` |
| 18 | `def` | [Adadic.Spectral.transitionTransform](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-transitiontransform-source-edition-2.md) | 192 | `declaration-track:bb7c46d051e25b5922d3f8a252fd7013f776bafca35e3e0620f7625390f12a78` |
| 19 | `theorem` | [Adadic.Spectral.transitionTransform_entry](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-transitiontransform-entry.md) | 199 | `result-track:162d17be10166cc9168f00ec7f3309b1bb9797cdb83ebcfb4b4e1d2e6011d0e3` |
| 20 | `structure` | [Adadic.Spectral.TransitionTransform](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-transitiontransform.md) | 210 | `declaration-track:88b0ed37e43fac31cf2222138378f33dfef4efb1f87f75f828b748c02b0680b3` |
| 21 | `def` | [Adadic.Spectral.TransitionTransform.ofNetwork](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-transitiontransform-ofnetwork.md) | 222 | `declaration-track:e59a87d84bb1046c63435a7b0988a4546d8cba4e2e1d2e214073debb04ca8ead` |
| 22 | `theorem` | [Adadic.Spectral.TransitionTransform.transition_correct](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-transitiontransform-transition-correct.md) | 233 | `result-track:48c7882e19c82811a4ba4b6c911357dea54926cd7710d3b6c469b993ee83f500` |
| 23 | `theorem` | [Adadic.Spectral.TransitionTransform.spectral_correct](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-transitiontransform-spectral-correct.md) | 241 | `result-track:95353f2b64b7c1e9a9a3650bf25a31aec1dda8725f0912f1c9fc33a750c3a5f7` |
| 24 | `def` | [Adadic.Bit.edgeLine](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-bit-edgeline.md) | 253 | `declaration-track:f4568b5d2bd6e079dbc577b6084bbafbcf35491e1f3c2b07749e521ea0a8ad1e` |
| 25 | `abbrev` | [Adadic.DensityFrame](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-densityframe.md) | 263 | `declaration-track:7efece5e3bfd30360651bd8a7c1cbdf312a180a3fc76c576070ed3cfd4a4df53` |
| 26 | `def` | [Adadic.DensityFrame.ofEdgeVector](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-densityframe-ofedgevector.md) | 267 | `declaration-track:b89f5d78b0321536207b764f4c10a85653529afaae47067acb0959cc664ef68c` |
| 27 | `def` | [Adadic.DensityFrame.relaxedPole](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-densityframe-relaxedpole.md) | 275 | `declaration-track:18abe2736a4c437e9329238188d5851aac3261db58757fad6314e3d41dffaaaa` |
| 28 | `def` | [Adadic.DensityFrame.relaxedCenteredPole](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-densityframe-relaxedcenteredpole.md) | 281 | `declaration-track:2e75532fb7f5b6984b9fe650fbfc18df8cf95f90439f89e1aa1b5cd3eb45c111` |
| 29 | `def` | [Adadic.DensityFrame.relaxedBoundaryShell](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-densityframe-relaxedboundaryshell.md) | 288 | `declaration-track:43b181b044bf986af498a8e79b7c752320baf2e6112a93ca918aa4fe653debe6` |
| 30 | `theorem` | [Adadic.DensityFrame.relaxedPole_coverOpen](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-densityframe-relaxedpole-coveropen.md) | 295 | `result-track:edb8c0b2225e9b4b801ce78cee7046e5b9a11d2520e7c837ef1c8b7e06d81ed0` |
| 31 | `theorem` | [Adadic.DensityFrame.relaxedPole_coverBoundary](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-densityframe-relaxedpole-coverboundary.md) | 301 | `result-track:23233e20c05493de1094cc00e69d96198c7f31bc5191813591e13b426360334a` |
| 32 | `theorem` | [Adadic.DensityFrame.relaxedPole_arithmeticCore](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-densityframe-relaxedpole-arithmeticcore.md) | 307 | `result-track:ca1ddc4ec80a7ffde1a3480ce4a9e94977110b4b55996ca45f62a14b4fd54562` |
| 33 | `theorem` | [Adadic.DensityFrame.relaxedPole_arithmeticResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-densityframe-relaxedpole-arithmeticresidue.md) | 313 | `result-track:68eb717c8f3ceb40795924ca226aeb3b403da496ea460146ff38475e9fad7b2c` |
| 34 | `theorem` | [Adadic.DensityFrame.relaxedPole_controlFlow](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-densityframe-relaxedpole-controlflow.md) | 319 | `result-track:72e700b16445ed2a151e2e56012256b7729e5c386e1023206c3f1731f4d3a203` |
| 35 | `theorem` | [Adadic.DensityFrame.relaxedPole_kernelAdmission](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-densityframe-relaxedpole-kerneladmission.md) | 325 | `result-track:881684018000c4aa84bb48c9516d0ad510f11ed4b9fc34a0914cf8e269e88c9d` |
| 36 | `theorem` | [Adadic.DensityFrame.relaxedPole_handshake](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-densityframe-relaxedpole-handshake.md) | 331 | `result-track:343b86e20b4d5370753c415a52ff03b80cae626acd22b9409ca3f0fa5e790e3b` |
| 37 | `theorem` | [Adadic.DensityFrame.relaxedPole_noncrisp](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-densityframe-relaxedpole-noncrisp.md) | 337 | `result-track:5ce76caa5e599adc96f9d5caba62eeee560a3acfb3bf44b9df70a765caf3e3ad` |
| 38 | `theorem` | [Adadic.Spectral.edgeRelaxation_kernel_symmetric](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-edgerelaxation-kernel-symmetric.md) | 344 | `result-track:44a838b7ded52f7cb773b78821d3381eb5f089228ed6029e5d7e39c6ef25b9d1` |
| 39 | `theorem` | [Adadic.Spectral.relaxedPole_mass_conservation](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-relaxedpole-mass-conservation.md) | 355 | `result-track:f6272b5de1cbd23812457a8d72d922ee4c8d43311353e0eff6786464fe5da7f8` |
| 40 | `structure` | [Adadic.Spectral.AcceptedNetwork](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-acceptednetwork.md) | 370 | `declaration-track:7223ba37242da6fcf40868ff031da77f263c1b72797032745740ea7980f03c80` |
| 41 | `def` | [Adadic.Spectral.AcceptedNetwork.ofNetwork](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-acceptednetwork-ofnetwork.md) | 382 | `declaration-track:b72ef3cdf8da398d0b3c290578d64df62ae1db835f6d906747eadd564a86893b` |
| 42 | `theorem` | [Adadic.Spectral.AcceptedNetwork.transform_network_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-acceptednetwork-transform-network-eq.md) | 396 | `result-track:302f4b1bf7ccb0919c976535a768d92ae8c80f0fac07aa264695a775583c3902` |
| 43 | `theorem` | [Adadic.Spectral.AcceptedNetwork.frame_admissible](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-acceptednetwork-frame-admissible.md) | 403 | `result-track:d46a00a921ce7bced40cea820a6d61ffba1de45bc60c25713f33dd537b78b237` |
| 44 | `theorem` | [Adadic.Spectral.AcceptedNetwork.densityFrame_eq_relaxedPole](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralEdition1.lean/declarations/adadic-spectral-acceptednetwork-densityframe-eq-relaxedpole.md) | 413 | `result-track:c00d547349050a21bad29c0eafb3d614b262fbe733f382d528fa01b92628567f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=02c82e25635391d32cfa900bebaef54f0dcd110b4582afa2515a864ab377a96a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Spectral/Variant46d3b00c43713f1815c9996b41941494c41912fab7381edbadd8dabda7d26d55.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Spectral/Variant46d3b00c43713f1815c9996b41941494c41912fab7381edbadd8dabda7d26d55.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
