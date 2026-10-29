# Verification target: Framed Cell Topology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c8fa42e417e587ad77b6c7d53062f838b315b60",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FramedCellTopology/Variantf1bfe24731daebe95088b992810a95813f77f2180b64504bd76f3bfb6cdf541e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c8fa42e417e587ad77b6c7d53062f838b315b60`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FramedCellTopology/Variantf1bfe24731daebe95088b992810a95813f77f2180b64504bd76f3bfb6cdf541e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FramedCellTopology/Variantf1bfe24731daebe95088b992810a95813f77f2180b64504bd76f3bfb6cdf541e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.DiscreteGeometry.BinaryRicciFlow` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Pad1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/pad1.md) | 23 | `declaration-track:8496b8a186b336dc443ce9c4aef406bedaf15e9bf2df709c54c007005ccd43e9` |
| 2 | `def` | [total](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/total.md) | 30 | `declaration-track:386dca1516ae283e47207a3cc42792c3e508b3f0c12fe16bc91ce47155d8be32` |
| 3 | `def` | [IsBalancedTie](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/isbalancedtie.md) | 37 | `declaration-track:47612614fc2590ac184aa02420a4e996886a3e748fdbefd4ca992da074938576` |
| 4 | `def` | [even](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/even.md) | 42 | `declaration-track:348f44afb331c1a1ca8697fd6c80a2f25576735946b986382c84dab402e2a03a` |
| 5 | `def` | [oddRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/oddright.md) | 48 | `declaration-track:fc69efa4f5a64d83daa5ea0f45e88b4168fea596ec2de69d80d38c69ba13d6a5` |
| 6 | `def` | [oddLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/oddleft.md) | 54 | `declaration-track:bc1503198543fffe49f6e61cdbf41fc625795f797efba7d669d85227fee30ce8` |
| 7 | `theorem` | [even_total](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/even-total.md) | 60 | `result-track:f594fbc3cf82b4c051eef89d33e26598e6a2b38fde9f7e1d079533342130bc92` |
| 8 | `theorem` | [oddRight_total](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/oddright-total.md) | 66 | `result-track:3ee6c5915308de0d5b98d454db8d40685124198c377f4b4acd84f51fef9eb459` |
| 9 | `theorem` | [oddLeft_total](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/oddleft-total.md) | 72 | `result-track:4fa6aec3ca5d7776ab47d7371a40b443d7d010354ef38a1ebfd152c20006d392` |
| 10 | `theorem` | [even_balanced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/even-balanced.md) | 78 | `result-track:3b3dc0727f3d4ce9d532bc2dc580ad76384461a1dcbca13aec90bef19fc251b6` |
| 11 | `theorem` | [oddRight_balanced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/oddright-balanced.md) | 84 | `result-track:8aa102f1aaabd9725834edf5d5e19b278b2f4590a3cf9a4155dac5cafc815e2f` |
| 12 | `theorem` | [oddLeft_balanced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/oddleft-balanced.md) | 90 | `result-track:a6b1abab18d03a10dd55b68f330d803e3fe662842eee7191f7ce85ea0660dfe6` |
| 13 | `structure` | [Pad2](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/pad2.md) | 98 | `declaration-track:680c243571acb7d625bd2b653752aa072f3f6e9eaa2d3989d96a1dcccd397cba` |
| 14 | `def` | [vertical](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/vertical.md) | 107 | `declaration-track:49504ce9856fc222118221b156f67c889e71821b7943a9cf36ac2993c7f8dc71` |
| 15 | `def` | [horizontal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/horizontal.md) | 112 | `declaration-track:e60e4587bbea28d4773ddc14a0c48d370805aeb95bff20a2f141abcf413a507b` |
| 16 | `def` | [verticalTotal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/verticaltotal.md) | 117 | `declaration-track:938e0382704f7590ff880dd4c5ba3ad2faf4ffe7827abf7652f467f7730460b7` |
| 17 | `def` | [horizontalTotal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/horizontaltotal.md) | 121 | `declaration-track:de712521cdd08f4c3f99f9d4efc7afa45bea754dd9c1e6e98f330c0e5bee9d92` |
| 18 | `def` | [IsBalancedTie](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/isbalancedtie-source-edition-2.md) | 125 | `declaration-track:a9babb41eed0be0286b63f35d77f5cbd50d95a7366115648d27f49b732cb8a1f` |
| 19 | `def` | [ofAxisPads](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/ofaxispads.md) | 129 | `declaration-track:a94762b314f82a4734c31efc66ddcd16b3ac803d4d0d5d72c766b47cd1f04fe9` |
| 20 | `theorem` | [ofAxisPads_balanced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/ofaxispads-balanced.md) | 137 | `result-track:106162e293d758ae5d776c2d39f6650437ef14a83fad590522fb38d11709482d` |
| 21 | `structure` | [FramedBinaryMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/framedbinarymatrix.md) | 153 | `declaration-track:a9c245b9b5edb9d4697c5cbbd4e43bc42619f75a1457bd31fa41b05520d6fef0` |
| 22 | `theorem` | [rows_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/rows-pos.md) | 164 | `result-track:470346a665720173c6bc8b67cf5142ff99d3587e4125198251f8d6bc549a62ae` |
| 23 | `theorem` | [cols_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/cols-pos.md) | 169 | `result-track:036c922b361e1ae4118083a88146fdf69abbd8f75666ef0c52a451d97f14836c` |
| 24 | `def` | [ofBinaryMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/ofbinarymatrix.md) | 175 | `declaration-track:aa1ca8c25d2e9d38409fc4dd5a2e9628f3c9de562b1a7e717c1e886b2ae5b8da` |
| 25 | `theorem` | [bit_ofBinaryMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/bit-ofbinarymatrix.md) | 190 | `result-track:6c1948dd69117f5d7ff1c2c980b200de6e2c70a7dc7a1d6b1bd8a12039bb8458` |
| 26 | `def` | [centeredSingleton3x3](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/centeredsingleton3x3.md) | 202 | `declaration-track:0a919aa5836f6804c30c1b81dfff1a1a193d2d53f831eb0f11ef2fef868727e3` |
| 27 | `theorem` | [centeredSingleton3x3_originLabel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/centeredsingleton3x3-originlabel.md) | 216 | `result-track:e8c59dc07fc6a6e3c277aadeac49115b8da2c31311b3b99b1d1b4fd056c2f12f` |
| 28 | `structure` | [PeriodicBinaryMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/periodicbinarymatrix.md) | 225 | `declaration-track:2c44a484ce1a99fd03e673b22a246e9365a7677060695820907585362cd20c37` |
| 29 | `def` | [fromFramed](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/fromframed.md) | 235 | `declaration-track:8519d5cca2de468e3a97b1950c735bd326aad596597298f208b1def57e0eb1c7` |
| 30 | `structure` | [SphericalBinaryPatch](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/sphericalbinarypatch.md) | 255 | `declaration-track:ba14d1a065dcad2cec8ccc806d051402577a894c40967fd37473dc34bb38287c` |
| 31 | `def` | [centeredOneCell](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/centeredonecell.md) | 264 | `declaration-track:81514a53c41dcac12bdb9660481f10b7a969ff8f8d4e37df6450a1ce606f38fb` |
| 32 | `theorem` | [centeredOneCell_boundaryVertices](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/centeredonecell-boundaryvertices.md) | 271 | `result-track:623fa813ab66ad1eaabe39036b8f2f495c9d944f1f52af52d6a985d0f2f3ef86` |
| 33 | `theorem` | [centeredOneCell_insideLabel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/centeredonecell-insidelabel.md) | 276 | `result-track:8414d9a49fe59de8fcea81519695f5ad78f67ba344f35416a99ada7fbadea78e` |
| 34 | `theorem` | [centeredOneCell_outsideLabel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/centeredonecell-outsidelabel.md) | 281 | `result-track:03cb0e1d3386321db09cead99f2472f5c6c6c9db8822b68428db6ebbaf853b5d` |
| 35 | `inductive` | [CellDistanceRegime](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/declarations/celldistanceregime.md) | 291 | `declaration-track:cd10910719b6f4b33efe4c0c9f08d8ed4cf0f4446ab38fd1e169d8b21a93c658` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73465ce4658877c97d4fb45c287477305b0423cd9cba09db9ad3c816f2fbc208 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/FramedCellTopology/Variantf1bfe24731daebe95088b992810a95813f77f2180b64504bd76f3bfb6cdf541e.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/FramedCellTopology/Variantf1bfe24731daebe95088b992810a95813f77f2180b64504bd76f3bfb6cdf541e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
