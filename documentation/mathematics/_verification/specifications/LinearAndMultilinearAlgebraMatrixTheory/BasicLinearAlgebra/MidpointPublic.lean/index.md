# Verification target: Midpoint Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73715697973e15b80e684512684c28f16d8934b6",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant258766f8f9af7ccca0ac07e60c85f66a003b39e85ef248016c24be1211a0f4f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73715697973e15b80e684512684c28f16d8934b6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant258766f8f9af7ccca0ac07e60c85f66a003b39e85ef248016c24be1211a0f4f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant258766f8f9af7ccca0ac07e60c85f66a003b39e85ef248016c24be1211a0f4f0.lean.json)

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
| 1 | `def` | [midpoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint.md) | 46 | `declaration-track:49297bb35cc1c94c1b6441700f490c25f531e13903f9b319f9897fbe44009a23` |
| 2 | `theorem` | [AffineMap.map_midpoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/affinemap-map-midpoint.md) | 52 | `result-track:c7ff9dd9a062799bed06f7e2b8518401c6e2bf39328c0ee67123e44ac994a1ef` |
| 3 | `theorem` | [AffineEquiv.map_midpoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/affineequiv-map-midpoint.md) | 57 | `result-track:05c14c056129f3446a5abd65d32aeb3be514991a6aef792d625ebdcac359c731` |
| 4 | `theorem` | [AffineEquiv.pointReflection_midpoint_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/affineequiv-pointreflection-midpoint-left.md) | 61 | `result-track:5717edbab27b28a79d87859ef8c84928339d4760369d0b7ac0baf771272f7f98` |
| 5 | `theorem` | [Equiv.pointReflection_midpoint_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/equiv-pointreflection-midpoint-left.md) | 67 | `result-track:9dd23c60e2c864f7d4343c20a5639ce426a0d00aae8d84768b7a93820142e62c` |
| 6 | `theorem` | [midpoint_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint-comm.md) | 72 | `result-track:84e3e320fa9d75a8624c94c5c9f920901e027c2c7371af8020719d7c30c6a9ca` |
| 7 | `theorem` | [AffineEquiv.pointReflection_midpoint_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/affineequiv-pointreflection-midpoint-right.md) | 75 | `result-track:836bb0dc194a6bd80ccf75b0399ede967f51a587aad48d825ac0aafa838ab59e` |
| 8 | `theorem` | [Equiv.pointReflection_midpoint_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/equiv-pointreflection-midpoint-right.md) | 80 | `result-track:6b555dc27cc49a1781a1b32adf6bed4280a622d65ea1d463331e7b149156619e` |
| 9 | `theorem` | [midpoint_vsub_midpoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint-vsub-midpoint.md) | 84 | `result-track:b07fe4846095f804e23ce8c71103b0c874f0e1abf40ffbcb680ae027813ef240` |
| 10 | `theorem` | [midpoint_vadd_midpoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint-vadd-midpoint.md) | 88 | `result-track:34d3d2552e829d4c58c076342b45ed2f3badb5df3cdb8de127b82e346efe8fd1` |
| 11 | `theorem` | [midpoint_eq_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint-eq-iff-source-edition-2.md) | 92 | `result-track:f472c63db534e256dbd9d7719ce3636941fad4815cd0d022b831afd080806f16` |
| 12 | `theorem` | [midpoint_pointReflection_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint-pointreflection-left.md) | 98 | `result-track:7571a483defaece7ea330ff4b751c17f9acd08525f98c0c96f9b8959258530fe` |
| 13 | `theorem` | [midpoint_pointReflection_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint-pointreflection-right.md) | 103 | `result-track:87ee1ed5e8ced871d0f7050e3498366d8559161a2ad77a1cd8dae0e35ffc7d84` |
| 14 | `lemma` | [AffineEquiv.midpoint_pointReflection_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/affineequiv-midpoint-pointreflection-left.md) | 107 | `result-track:c1d66bbf1d302661540fb08334df84b688048334b05fc1a13d18e64bc5633020` |
| 15 | `lemma` | [AffineEquiv.midpoint_pointReflection_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/affineequiv-midpoint-pointreflection-right.md) | 111 | `result-track:a0ab3a1eff0f45b71257b2d75dce6303a47d886bda6d3e7e40b84facf532c20a` |
| 16 | `theorem` | [midpoint_vsub_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint-vsub-left.md) | 116 | `result-track:9a902dd0f0de63be4aaa15d0db528f312a3334930fedef86aba16c56d10ea8a7` |
| 17 | `theorem` | [midpoint_vsub_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint-vsub-right.md) | 120 | `result-track:e771b20dee73ab35ec4874b355232024b724bc034c30f03213fd445087af1e0f` |
| 18 | `theorem` | [left_vsub_midpoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/left-vsub-midpoint.md) | 124 | `result-track:f6394dbc311a29ee59db266010fa18567314cf85194d3fc2de2af823bd167ff0` |
| 19 | `theorem` | [right_vsub_midpoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/right-vsub-midpoint.md) | 128 | `result-track:bc5f4fd2308ba421a6a326d84b1f2571b0d6e2290e3492173ae5ef870b0683e0` |
| 20 | `theorem` | [midpoint_vsub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint-vsub.md) | 131 | `result-track:a9e48197a1b290e8df3b36a25f09d45278ec1fead4aca3ed3ca1817619076fdc` |
| 21 | `theorem` | [vsub_midpoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/vsub-midpoint.md) | 137 | `result-track:ec1b778e94fd900e166939526e85e0205f50affa17075c350b03fa48c04aff04` |
| 22 | `theorem` | [midpoint_sub_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint-sub-left.md) | 143 | `result-track:0408d4162a90d12b9d420e0b3b5b04a70b111e2ba4d5806190192296347c4ff2` |
| 23 | `theorem` | [midpoint_sub_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint-sub-right.md) | 147 | `result-track:42c115fd0fb90d520d7586cd97dfbac413ed3171244724d1b19d932b5f945b10` |
| 24 | `theorem` | [left_sub_midpoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/left-sub-midpoint.md) | 151 | `result-track:d3243bbc33ad8d1f70ff86e3d68b7eb3ee7744b89fe632dea65afa47b310cf59` |
| 25 | `theorem` | [right_sub_midpoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/right-sub-midpoint.md) | 155 | `result-track:add2ad82ff2a22dbf84ec9a87331b7d519ae5df5f7f941a65620c78476a3662e` |
| 26 | `theorem` | [midpoint_eq_left_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint-eq-left-iff.md) | 161 | `result-track:6990b5cbd62b1cb1c0a98674a969d76e00390360f43d6e24492c6e4fe2e2b824` |
| 27 | `theorem` | [left_eq_midpoint_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/left-eq-midpoint-iff.md) | 165 | `result-track:dc094c438c00d50faeed426e561b7986eecea8adef38e48392f78a079d5ba170` |
| 28 | `theorem` | [midpoint_eq_right_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint-eq-right-iff.md) | 169 | `result-track:0a316a06ccd8a1ebe27bab0ccdc4d4b6fe6ff2c65b5ee0626a930d68ec7cef5f` |
| 29 | `theorem` | [right_eq_midpoint_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/right-eq-midpoint-iff.md) | 173 | `result-track:3e73673f9ed48315c2fecab78d1f45b1898d701e0109158e2e5b18b5774fe93c` |
| 30 | `theorem` | [midpoint_eq_midpoint_iff_vsub_eq_vsub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint-eq-midpoint-iff-vsub-eq-vsub.md) | 176 | `result-track:9334c047e7537c3523f283cbe0a83261b7d8a7c0761ced6c6819a5ca32fd086b` |
| 31 | `theorem` | [midpoint_eq_iff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint-eq-iff.md) | 181 | `result-track:8eda67226f3282b99b983f2e83ad0b4251f4e44d119a43072196f086c28f8077` |
| 32 | `theorem` | [midpoint_unique](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint-unique.md) | 185 | `result-track:c95eee791d88ee55a700d564cb81600c90fbc10b6eb3173967271fe79aa23453` |
| 33 | `theorem` | [midpoint_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint-self.md) | 190 | `result-track:5d9698e5d7947159702987280fa6357a264432564a73bc958d811ba3879e1347` |
| 34 | `theorem` | [midpoint_add_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint-add-self.md) | 194 | `result-track:351270b032835eb98c350b8a5b0604d5d90117c75734f5fdc07d0eac3bf6662e` |
| 35 | `theorem` | [midpoint_zero_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint-zero-add.md) | 199 | `result-track:b9854f391d328c610b19fe30e164364fd7e67de2186ca591c5211b19a23e21b8` |
| 36 | `theorem` | [midpoint_eq_smul_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint-eq-smul-add.md) | 202 | `result-track:e14887ae80d9954a8d238f00cbcde45ed1e2d42b5b3668c2ded08362d79aea5f` |
| 37 | `theorem` | [midpoint_self_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint-self-neg.md) | 207 | `result-track:078233fd0b576abc06495c8ad93b402225f56b729981e6ccc10257cfc7316fed` |
| 38 | `theorem` | [midpoint_neg_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint-neg-self.md) | 211 | `result-track:1129fb84e6a05e39d3dc8db6afbe9f09ffab5d4066693da0aaa305de7a861d8f` |
| 39 | `theorem` | [midpoint_sub_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint-sub-add.md) | 214 | `result-track:856fce9972abbac8a64b33dbd94fd9247a64ba3dac26e4617ebefef7dbf660ba` |
| 40 | `theorem` | [midpoint_add_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint-add-sub.md) | 218 | `result-track:4e8b3010ee3e0aa188df68b9397fd7b8837447b9f012a9c94f46eadb2e18d583` |
| 41 | `theorem` | [midpoint_vsub_midpoint_same_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint-vsub-midpoint-same-left.md) | 221 | `result-track:d1e10716edef73ea115e1f08e438707dd5751590e5005dd524a7f2f9cbd0054c` |
| 42 | `theorem` | [midpoint_vsub_midpoint_same_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/midpoint-vsub-midpoint-same-right.md) | 225 | `result-track:1e056d5a678f08f3513bc4552afd78117b81f4ee9c04dd31681a03506e1adbcd` |
| 43 | `def` | [ofMapMidpoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/ofmapmidpoint.md) | 237 | `declaration-track:5b6eb203618c13951e651efb634677e441178a00e7ed1bcc04da4568ad0bc844` |
| 44 | `theorem` | [coe_ofMapMidpoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointPublic.lean/declarations/coe-ofmapmidpoint.md) | 250 | `result-track:31126116d9c358b7449c8a3a1e1ba41a7bb876a7bbb93092768d742c4170b858` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=16b83fb58c39ff44a01a66bf35cb1807e0967b3c9af5d426765d1f25cd1dc81b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant258766f8f9af7ccca0ac07e60c85f66a003b39e85ef248016c24be1211a0f4f0.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant258766f8f9af7ccca0ac07e60c85f66a003b39e85ef248016c24be1211a0f4f0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
