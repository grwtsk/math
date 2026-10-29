# Verification target: Spectral Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e66bd98c034a1410e9d9ab8920a1fb3b07092d21",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Spectral/Variantcd3a29efcd1720c72970c55c2f89f380fd4c65b3ed7dc01213d03fcc8f6b52e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e66bd98c034a1410e9d9ab8920a1fb3b07092d21`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Spectral/Variantcd3a29efcd1720c72970c55c2f89f380fd4c65b3ed7dc01213d03fcc8f6b52e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Spectral/Variantcd3a29efcd1720c72970c55c2f89f380fd4c65b3ed7dc01213d03fcc8f6b52e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Kernel.Adadic` — import line 1; external provider; requires a separately pinned dependency.
- `Boolean.Cube.EdgeRelaxation` — import line 2; external provider; requires a separately pinned dependency.
- `Boolean.Cube.BooleanNetwork` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Adadic.Spectral.Dyadic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-dyadic.md) | 37 | `declaration-track:4ce888da62dfa10163b1e0a643b216f0660da090bea2b770682e06ed02151181` |
| 2 | `def` | [Adadic.Spectral.Dyadic.denominator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-dyadic-denominator.md) | 43 | `declaration-track:cc7b2530a8c0be802244b049c940642cfc76db3e629b01efb3cd6122d26e8a1e` |
| 3 | `abbrev` | [Adadic.Spectral.IntMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-intmatrix.md) | 49 | `declaration-track:c98fa1627689dbd4d28bded03c40e008f21f410c6f21870298e67bcf7bf4ca55` |
| 4 | `def` | [Adadic.Spectral.IntMatrix.entry](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-intmatrix-entry.md) | 53 | `declaration-track:3803a8d7dd0d3bea37f266aab5d175fd2dc39cf542d5e0431b57514b2947d615` |
| 5 | `def` | [Adadic.Spectral.intOfBool](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-intofbool.md) | 61 | `declaration-track:b69c1f35ba0daa705c452c1ad484aec43f075a0167bccaebb5e8bd81f0b5de66` |
| 6 | `def` | [Adadic.Spectral.IntMatrix.ofBool](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-intmatrix-ofbool.md) | 66 | `declaration-track:4059cbe202e2882a0cfa8e01e6c1d65e77909c8cdad06ef30285fade5ca6e07c` |
| 7 | `def` | [Adadic.Spectral.finSum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-finsum.md) | 72 | `declaration-track:86d143b7bc9fe9a6b03d0539f4ec2ce0380350ca4784775f193df09ddfce2d32` |
| 8 | `def` | [Adadic.Spectral.character](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-character.md) | 85 | `declaration-track:826b0e03035002dd431dad5c9adbab6d9a9dea9ba05738826ab6c6cd8c83b22f` |
| 9 | `def` | [Adadic.Spectral.characterVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-charactervector.md) | 99 | `declaration-track:209df36711442d63aea41ce9a08b292311b6f6a22429a6189b21bbc021904477` |
| 10 | `def` | [Adadic.Spectral.matrixSpectralNumerator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-matrixspectralnumerator.md) | 112 | `declaration-track:4f6a899d78166aee1428fb0bb6b709fdf826dd2c609ecf556deb4f4294f28abe` |
| 11 | `def` | [Adadic.Spectral.matrixSpectralCoefficient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-matrixspectralcoefficient.md) | 132 | `declaration-track:8a0f9c443e8a61668997f65bf84a0891db6de7e91edf16488753c0089a299425` |
| 12 | `theorem` | [Adadic.Spectral.matrixSpectralCoefficient_exponent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-matrixspectralcoefficient-exponent.md) | 140 | `result-track:1e88ae5490daffeb1bed87bba282b8e396cd623a989836c4321cc4272cdb7f10` |
| 13 | `theorem` | [Adadic.Spectral.matrixSpectralCoefficient_denominator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-matrixspectralcoefficient-denominator.md) | 147 | `result-track:778da1d4d1e404b0edff3f498b24eb27a0c964640ead0b454d221c98a7cb1d1f` |
| 14 | `def` | [Adadic.Spectral.matrixTransform](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-matrixtransform.md) | 155 | `declaration-track:6fa1d7d1fbfec3e8d50c3ec56a5039b6605989484b20406e83f8bb62f672b331` |
| 15 | `def` | [Adadic.Spectral.transitionIntMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-transitionintmatrix.md) | 162 | `declaration-track:e24db7e05194c7a490f5a8ce53f9efe8974253b038fc9bbad60f2293df36b7b2` |
| 16 | `def` | [Adadic.Spectral.transitionSpectralNumerator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-transitionspectralnumerator.md) | 170 | `declaration-track:5805f4662b955a1902314e642d77f06b99c690f62b4867c494ff3f7d395d1906` |
| 17 | `def` | [Adadic.Spectral.transitionSpectralCoefficient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-transitionspectralcoefficient.md) | 181 | `declaration-track:5b8d893610c0407ec7eeef4545db39be80364f28c5c61625baa776bd47f1ae40` |
| 18 | `def` | [Adadic.Spectral.transitionTransform](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-transitiontransform-source-edition-2.md) | 192 | `declaration-track:b460c273afa0bfed5fb74a0b3ee1c632692b493d0e004f176b000da76d78b45d` |
| 19 | `theorem` | [Adadic.Spectral.transitionTransform_entry](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-transitiontransform-entry.md) | 199 | `result-track:f9eab19c50413d4c4ae4cb905893b71e3931059ab5d4182a10ce846eefd8d585` |
| 20 | `structure` | [Adadic.Spectral.TransitionTransform](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-transitiontransform.md) | 210 | `declaration-track:034f717cb8eb83f85408f68bb88d8379cffa99af15d598fcdb53e5b1b1d3c02f` |
| 21 | `def` | [Adadic.Spectral.TransitionTransform.ofNetwork](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-transitiontransform-ofnetwork.md) | 222 | `declaration-track:0b2034d8e2812933b5925690b6d80c0eba370a311e48763de8cef318dff1c53b` |
| 22 | `theorem` | [Adadic.Spectral.TransitionTransform.transition_correct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-transitiontransform-transition-correct.md) | 233 | `result-track:e3e3ee37d64e89ceb5206df097251f5ea8b1b4609a729986d944d873a60f3a66` |
| 23 | `theorem` | [Adadic.Spectral.TransitionTransform.spectral_correct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-transitiontransform-spectral-correct.md) | 241 | `result-track:5f42f7c971b41329bef9e1ea42210cd2966532e75386587d474bf926d9bc8eb1` |
| 24 | `def` | [Adadic.Bit.edgeLine](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-bit-edgeline.md) | 253 | `declaration-track:49414f9cd1ef2df9318b077f6a14a27c1bed1981731e44feeba9c03067d7766d` |
| 25 | `abbrev` | [Adadic.DensityFrame](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-densityframe.md) | 263 | `declaration-track:e6ab76e53e4da286b0753b0107a5eb3fec7da13190d62959cad6b633c7e0d8f3` |
| 26 | `def` | [Adadic.DensityFrame.ofEdgeVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-densityframe-ofedgevector.md) | 267 | `declaration-track:e0bfa4c7d8f8c9b43917b21f6a1f90097df10fc395fe2145debc285416d57a1f` |
| 27 | `def` | [Adadic.DensityFrame.relaxedPole](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-densityframe-relaxedpole.md) | 275 | `declaration-track:97c32263e8c66b7d8625863dc8b02dd3e7e1300e8c7e3cecb4e50436306e0acb` |
| 28 | `def` | [Adadic.DensityFrame.relaxedCenteredPole](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-densityframe-relaxedcenteredpole.md) | 281 | `declaration-track:80066f6535aafbc3de5eee4949c83e0dac791bdf27112308081050f8b3cc525b` |
| 29 | `def` | [Adadic.DensityFrame.relaxedBoundaryShell](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-densityframe-relaxedboundaryshell.md) | 288 | `declaration-track:c63efcd9833e2c76af89d9289867e515e7f6627aa481c7b0e5ef2654a1b3a97f` |
| 30 | `theorem` | [Adadic.DensityFrame.relaxedPole_coverOpen](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-densityframe-relaxedpole-coveropen.md) | 295 | `result-track:7727f3c518b4b57801e6f7ea693a8f599b12863576c943d34ebb7f399a89e3e0` |
| 31 | `theorem` | [Adadic.DensityFrame.relaxedPole_coverBoundary](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-densityframe-relaxedpole-coverboundary.md) | 301 | `result-track:691b0f2e8dc621c5621a0f9e75434cc51ba3df493ab38ae13be162214c537b43` |
| 32 | `theorem` | [Adadic.DensityFrame.relaxedPole_arithmeticCore](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-densityframe-relaxedpole-arithmeticcore.md) | 307 | `result-track:9d077b0f7d04a46408acad0fabf1bde9ba1eaeaf68c439466219d96ea537d763` |
| 33 | `theorem` | [Adadic.DensityFrame.relaxedPole_arithmeticResidue](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-densityframe-relaxedpole-arithmeticresidue.md) | 313 | `result-track:ab5c68ec5c9c5543186cf1a9829cd85704bee8958a180dd9c04c69cdbd212760` |
| 34 | `theorem` | [Adadic.DensityFrame.relaxedPole_controlFlow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-densityframe-relaxedpole-controlflow.md) | 319 | `result-track:8071e3399bd7d8fe55d6a193935c202c07edfcffe9bd54680964641a0b0316dc` |
| 35 | `theorem` | [Adadic.DensityFrame.relaxedPole_kernelAdmission](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-densityframe-relaxedpole-kerneladmission.md) | 325 | `result-track:a85b542ab30e641e5c454c8c8a647943168a789bd4830470cd59bf46a1dd0ddd` |
| 36 | `theorem` | [Adadic.DensityFrame.relaxedPole_handshake](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-densityframe-relaxedpole-handshake.md) | 331 | `result-track:db2da080262d7f74f28716af2f4a3d14c110ff706c07bc32b29908afc2c15960` |
| 37 | `theorem` | [Adadic.DensityFrame.relaxedPole_noncrisp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-densityframe-relaxedpole-noncrisp.md) | 337 | `result-track:d4cc53b3c367e85f75d07900cf556d9a2aa226ac06f108360a9ea7dba3de3932` |
| 38 | `theorem` | [Adadic.Spectral.edgeRelaxation_kernel_symmetric](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-edgerelaxation-kernel-symmetric.md) | 344 | `result-track:3ec37e699344b85860b47b1bbcf628a063e07609d243ab101aee07fabead7485` |
| 39 | `theorem` | [Adadic.Spectral.relaxedPole_mass_conservation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-relaxedpole-mass-conservation.md) | 355 | `result-track:75979f988972788e9399b91d6048f432ca7740bc51c64ccb4f037ef1bc9cb0b9` |
| 40 | `structure` | [Adadic.Spectral.AcceptedNetwork](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-acceptednetwork.md) | 370 | `declaration-track:504b15ac828d8150562281344a27c0d5e39e9e856d0840f5932593c0f06ce3d5` |
| 41 | `def` | [Adadic.Spectral.AcceptedNetwork.ofNetwork](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-acceptednetwork-ofnetwork.md) | 382 | `declaration-track:d260da7df251e361c22f7b14e1c2faac73cb46934bf35d87ee2589a6e1326cfc` |
| 42 | `theorem` | [Adadic.Spectral.AcceptedNetwork.transform_network_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-acceptednetwork-transform-network-eq.md) | 396 | `result-track:33e405276afd8d32de5e2b28f1469cf37e53310515a03b95a5cf0f4131016c39` |
| 43 | `theorem` | [Adadic.Spectral.AcceptedNetwork.frame_admissible](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-acceptednetwork-frame-admissible.md) | 403 | `result-track:19b16dc670a157d7b56d62f991a8556e76d7e4f1f046b78bdd695d10a34731e4` |
| 44 | `theorem` | [Adadic.Spectral.AcceptedNetwork.densityFrame_eq_relaxedPole](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralEdition2.lean/declarations/adadic-spectral-acceptednetwork-densityframe-eq-relaxedpole.md) | 413 | `result-track:ed3b850296954f72ade1f192cfdabe2d4adafa173a6234a0ca039ed6703fffec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d6ef2f52bb3c63f7e8aee0f3eabb6d84424db0f601b2565c2d7910c62270d83e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Spectral/Variantcd3a29efcd1720c72970c55c2f89f380fd4c65b3ed7dc01213d03fcc8f6b52e7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Spectral/Variantcd3a29efcd1720c72970c55c2f89f380fd4c65b3ed7dc01213d03fcc8f6b52e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
