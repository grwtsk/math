# Verification target: Hypercube Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c3ea41f605e630f110291ca996c991b60d54bdd",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c3ea41f605e630f110291ca996c991b60d54bdd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Matrix` — import line 1; external provider; requires a separately pinned dependency.
- `Boolean.Cube.ListTools` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Hypercube.Point](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-point.md) | 9 | `declaration-track:8abd11a1c0d3c4dadace18d1beb9a48435d6af10f18e7d7bf1e53f434257e764` |
| 2 | `abbrev` | [Hypercube.Function](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-function.md) | 13 | `declaration-track:53f28c6e5dcd63430bb9a75ef90f14a93e85d64fed5ee337984a8147380e9818` |
| 3 | `abbrev` | [Hypercube.ScalarFunction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-scalarfunction.md) | 21 | `declaration-track:49c88299dfe7bfa0eaa0b5831ceb6656f0e37b7382a0552dec3d77764b108adb` |
| 4 | `def` | [Hypercube.bxor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-bxor.md) | 25 | `declaration-track:c9364a819b683625bd3fb48d392d522d3e4d3761e2485b81876c2ad3977a2ba4` |
| 5 | `def` | [Hypercube.boolDiff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-booldiff.md) | 32 | `declaration-track:d63fdad495e54224a697f2091717cf1103038091d86d17a144a1659fd70a7de5` |
| 6 | `def` | [Hypercube.bitAtNat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-bitatnat.md) | 36 | `declaration-track:768713427bba80acdd1a15865fa6484ae73775d160c4842720d6cc760efdd318` |
| 7 | `def` | [Hypercube.tableBit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-tablebit.md) | 45 | `declaration-track:622aa07d85a38b8a43b293643c0dd7b84871e4e36e1ada593279be04ebb46229` |
| 8 | `def` | [Hypercube.pointOfIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-pointofindex.md) | 49 | `declaration-track:94dfbc3217b925a8315f4bbc8a2072e704c03688f691efae617a13e001414794` |
| 9 | `def` | [Hypercube.dropLast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-droplast.md) | 53 | `declaration-track:7bcbef5d327df4d1441187a7c58b54202a0f027c8a530d35aab718e199de9020` |
| 10 | `def` | [Hypercube.last](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-last.md) | 59 | `declaration-track:c100c50e7a69a2745f9b6ad1fac37184adb3b4823119fa9d4c894297be7d393b` |
| 11 | `def` | [Hypercube.extend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-extend.md) | 65 | `declaration-track:1c696f2fb7a64cf191057dad6ca8438342cc2c78160d7207a4fcde6461fcb834` |
| 12 | `theorem` | [Hypercube.dropLast_extend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-droplast-extend.md) | 75 | `result-track:ae0e2ccf57d2b804f95447577c8f34aed1531ffd57a584e0899ab4b187995301` |
| 13 | `theorem` | [Hypercube.last_extend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-last-extend.md) | 82 | `result-track:925c304a2f0ff654b0155ed6a52099c3d8799e4a512bb583965483fe813c6989` |
| 14 | `def` | [Hypercube.vertices](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-vertices.md) | 91 | `declaration-track:49ede11041e46cab00e7a87dfb1279694a7aecd0f5f0348f06754ff30a9f3333` |
| 15 | `theorem` | [Hypercube.vertices_length](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-vertices-length.md) | 97 | `result-track:13fae0349ac08ead72545ee0f950452bd658f3a6e1ec23572afff30993af6f89` |
| 16 | `theorem` | [Hypercube.bitAtNat_two_mul_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-bitatnat-two-mul-succ.md) | 116 | `result-track:0bf64955efee506f5016feb803d13e1cc1995c097ccc62429f407fe1fdac7e2d` |
| 17 | `theorem` | [Hypercube.bitAtNat_two_mul_add_one_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-bitatnat-two-mul-add-one-succ.md) | 122 | `result-track:f49b8f14e409c0de968185f3a6c63789ff05a30e3d551bc41602de2178bd660e` |
| 18 | `theorem` | [Hypercube.bitAtNat_two_mul_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-bitatnat-two-mul-zero.md) | 128 | `result-track:82584365e146fc407c015c5ad509df2f3a32269ddf769819a7282c5b19999a3b` |
| 19 | `theorem` | [Hypercube.bitAtNat_two_mul_add_one_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-bitatnat-two-mul-add-one-zero.md) | 132 | `result-track:d9d71bd6fa6153cb2a8f810abf9951a0687d83458582b216ed0990c65a704179` |
| 20 | `theorem` | [Hypercube.pointOfIndex_two_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-pointofindex-two-mul.md) | 136 | `result-track:d2d480d7dfe46b53f06f2a32019765a55128688e0a91b2c9cfd20b3e5e4e94f7` |
| 21 | `theorem` | [Hypercube.pointOfIndex_two_mul_add_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-pointofindex-two-mul-add-one.md) | 151 | `result-track:2247791a576319e30fca7a06b7472e0d247f50f8dec89d385d931ad416b6f700` |
| 22 | `theorem` | [Hypercube.range_two_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-range-two-mul.md) | 166 | `result-track:473004357c0851c8db3a5282dc7332cd44f1078c03d66069f0e300e471aa5bda` |
| 23 | `theorem` | [Hypercube.vertices_eq_range_map_pointOfIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-vertices-eq-range-map-pointofindex.md) | 180 | `result-track:34b51cbe33c47525298390ff739639dcd50d8099e4da4b7666f9c1a6042dedf3` |
| 24 | `def` | [Hypercube.coordinates](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-coordinates.md) | 199 | `declaration-track:49a2b29a81b4e4d9406ed7e110359493476cf8b70d7a4d411845e1a4d305c7f7` |
| 25 | `def` | [Hypercube.spinOfBool](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-spinofbool.md) | 203 | `declaration-track:8ae01df1e3f4eda2ca0704501628799c540d4a8c006870665e9e1286de25fb2d` |
| 26 | `def` | [Hypercube.intOfBool](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-intofbool.md) | 208 | `declaration-track:8bc714a3eb665f39b78ab52e66e1c890990fa9a63946a07cecca4014f55cf0aa` |
| 27 | `def` | [Hypercube.spinCoordinates](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-spincoordinates.md) | 213 | `declaration-track:13e3ac0a420d0921b7fcac18700932e299989a4d8f9d70a898e117db7f95d310` |
| 28 | `def` | [Hypercube.zeroOneCoordinates](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-zeroonecoordinates.md) | 217 | `declaration-track:3105f2287d4de95b6b343cc292a0e0626b4358f660c1a877a95c29d2eef332f5` |
| 29 | `def` | [Hypercube.flip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-flip.md) | 221 | `declaration-track:1ef51f3d1c9d769a1a2ead1b66ffbda8f6373d4f131f46f3e288a03fa0ecccdc` |
| 30 | `theorem` | [Hypercube.flip_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-flip-same.md) | 229 | `result-track:57a5d3752aa0c7824dbbe41672ed40a007a000599fc01957add0e5008815a9e9` |
| 31 | `theorem` | [Hypercube.flip_other](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-flip-other.md) | 233 | `result-track:00cee03e637e74fbff0e71715fa9cccdc3681fbe09d19a682bff9e03d0ad3030` |
| 32 | `theorem` | [Hypercube.eq_of_dropLast_eq_last_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-eq-of-droplast-eq-last-eq.md) | 238 | `result-track:b237770d3e058169c49468cfcd707a0aee501fd578685ada8505cc4479a2ce52` |
| 33 | `def` | [Hypercube.pointEq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-pointeq.md) | 255 | `declaration-track:3f83960024ff97e0c6ef361a3bbdc3107c5843fa09efecad40e6977747cca53f` |
| 34 | `def` | [Hypercube.hammingDistance](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-hammingdistance.md) | 261 | `declaration-track:d36e5d7dd3bd6dd5fd0edc9df7705b6f42fe4a9ce2f8efbf76de6cb48aa3dabe` |
| 35 | `def` | [Hypercube.adjacencyMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-adjacencymatrix.md) | 268 | `declaration-track:ed0c7d0b5d3a11f05f1fd6c5f114105d68a99444edd8eec595b81961a2bed5fc` |
| 36 | `def` | [Hypercube.boundaryEdgeMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-boundaryedgematrix.md) | 281 | `declaration-track:5236f7a90e74305b5ed887857f947984d7af4f70be9cc7757e76fe820373542d` |
| 37 | `def` | [Hypercube.edgeChange](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-edgechange.md) | 290 | `declaration-track:d802489326bdb2b5cb096e4d925d5c3cc20ff8835be92570fd6961acaf3b416b` |
| 38 | `def` | [Hypercube.influenceCount](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-influencecount.md) | 301 | `declaration-track:d6ac40311837058c16fb0a25715b7af0454176b4a2aa332dfa7005929b808e03` |
| 39 | `def` | [Hypercube.influenceVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-influencevector.md) | 308 | `declaration-track:1bba8c8c900fc921f9de21c19a4ede430f2a373afae6e38020edaa3b8dfbfc3d` |
| 40 | `def` | [Hypercube.directedBoundaryCount](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-directedboundarycount.md) | 313 | `declaration-track:ea050adcf22934f2d2ca5ff4faeec5025597aacbcd166bd8fab6840c167912c9` |
| 41 | `def` | [Hypercube.grayBit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-graybit.md) | 320 | `declaration-track:6c3b869c6e313214e77a16f59c994eb016f289af1f56c7c79f9197935eb53528` |
| 42 | `def` | [Hypercube.grayPoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-graypoint.md) | 330 | `declaration-track:553a8dd7aa676e69dcaf49c0b35428e124c8210bbaf669868ef6f1eca3f64efd` |
| 43 | `def` | [Hypercube.grayAxis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition1.lean/declarations/hypercube-grayaxis.md) | 334 | `declaration-track:014eb1c7957379c7b43e7923779d10bb53114fea1e8c53d0cc9078f167dc37f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b1e6f61ddd6c6f22b27408b03377ff20966e0e9575d41ff0a853648ef2fbd6bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
