# Verification target: Edit Complex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02811cb959c95baf6ce620a16f9ba8ffdb3b0b05",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant8673c4a62a1b5dd922c2b1a0d841b9adfbb2d65b1d9e1f1b12846188c9153ade.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02811cb959c95baf6ce620a16f9ba8ffdb3b0b05`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant8673c4a62a1b5dd922c2b1a0d841b9adfbb2d65b1d9e1f1b12846188c9153ade.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant8673c4a62a1b5dd922c2b1a0d841b9adfbb2d65b1d9e1f1b12846188c9153ade.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.ModuleCat` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.LSum` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FreeZ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/freez.md) | 29 | `declaration-track:b55b432a7cae7bdcbd4b70f665aa4e460a1465ec9d91e588bb219f8df4f88bf8` |
| 2 | `def` | [endpointBoundary](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/endpointboundary.md) | 32 | `declaration-track:48627150ed826033ac9e196de7d85b9e3eb0a7331c61a67843ac1e4b21e07e24` |
| 3 | `def` | [endpointBoundarySum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/endpointboundarysum.md) | 40 | `declaration-track:81ba0ad878f490b3c06e9d82561fb05e32a5d5c9ff9edf9f24ad41100c54e216` |
| 4 | `structure` | [FilesystemEditPresentation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/filesystemeditpresentation.md) | 55 | `declaration-track:fcbe5b35647af6878ef47fb8277921b173bbdb5396ba783d6d8645650a185c2f` |
| 5 | `def` | [editBoundary](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/editboundary.md) | 72 | `declaration-track:d04c8b2c464c93044b60dbb388bf19f31f08c0e5dba503c030145c8254cea24e` |
| 6 | `def` | [boundaryOne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/boundaryone.md) | 76 | `declaration-track:6e515bc90adbd3745fd2715105028d5d2ab18584ed822b71a2bf5c3d203a826f` |
| 7 | `def` | [boundaryTwo](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/boundarytwo.md) | 81 | `declaration-track:55d915a35cae8473b0c0fec9ac535b4bf2740036ddcc3c574ca3e3cfb6de88e8` |
| 8 | `theorem` | [boundaryOne_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/boundaryone-single.md) | 86 | `result-track:e2c0148ee644db72353aed0a1ec7e1b969a78f13b3882969f1be375c5dba2d8f` |
| 9 | `theorem` | [boundaryTwo_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/boundarytwo-single.md) | 92 | `result-track:dbde0c215c41dc8f9047f51ddced15ac00bd3fc147598a314a02b1e148072f70` |
| 10 | `theorem` | [boundaryOne_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/boundaryone-apply.md) | 98 | `result-track:8b11b68b49a9792808a7d80e814631a9b8724dcc52b1d4f0f2acd71be9ec13b1` |
| 11 | `theorem` | [boundaryOne_comp_boundaryTwo](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/boundaryone-comp-boundarytwo.md) | 104 | `result-track:8603fbd9f80522635dd48b71972a37920670de6ab809bf91d2f9aeb59cc308db` |
| 12 | `def` | [chainObject](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/chainobject.md) | 114 | `declaration-track:a229b99a535c8e0adbdcf376e0ddeb33f50ffaf0069ec0114f082b23614ced90` |
| 13 | `def` | [chainDifferential](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/chaindifferential.md) | 121 | `declaration-track:abe35228f06dde6d04d6111b88f50245795b41a73203e45a532f7b805a1df73e` |
| 14 | `theorem` | [chainDifferential_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/chaindifferential-sq.md) | 128 | `result-track:a7dbc2fd8507d5e7a6929b25c27a2b5c5d2704a17f643e1548ba77708a02893a` |
| 15 | `def` | [toChainComplex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/tochaincomplex.md) | 138 | `declaration-track:ac4f5deb2c86818dafcffafe8c51fd2b4d66128b08be213b1ea687e7c01d4033` |
| 16 | `theorem` | [toChainComplex_X_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/tochaincomplex-x-zero.md) | 142 | `result-track:f711a83f8b6fe008e3510cfd15e1f8a4ccfb815f19c5094fc9f2365bb340dcf2` |
| 17 | `theorem` | [toChainComplex_X_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/tochaincomplex-x-one.md) | 147 | `result-track:ac04de75a74c3f3eaa465e9f7ec2bbc5d77cd2cf51abf9aed2c170fd03e1bebd` |
| 18 | `theorem` | [toChainComplex_X_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/tochaincomplex-x-two.md) | 152 | `result-track:90148f5525f5cc24097a5a5ff59534c45ae68872d611482f84659f642addefac` |
| 19 | `theorem` | [toChainComplex_d_one_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/tochaincomplex-d-one-zero.md) | 157 | `result-track:e6f88618da8ccf1897ccc26ce191908960492414327334454c64b3f5b8286a64` |
| 20 | `theorem` | [toChainComplex_d_two_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/tochaincomplex-d-two-one.md) | 162 | `result-track:f7ccbbdb75bedef679fb6c746cf71072c161adaa1cfb94f99e77a638ed8e713c` |
| 21 | `structure` | [Action](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/action.md) | 173 | `declaration-track:4ff64c471a6587ac3185a280d2aafd61ed8eed7fc59943201cac01f0105b6711` |
| 22 | `def` | [relabel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/relabel.md) | 189 | `declaration-track:8a87b1a13754f102cd1bfc247951b39c52d721075b23c28150bd9f565a199a10` |
| 23 | `theorem` | [relabel_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/relabel-single.md) | 196 | `result-track:d3a92dbffdde5bc0c498c21a87a676d093d9da6288cfbb1fe825a27b95b731b2` |
| 24 | `theorem` | [relabel_edit_boundary](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/relabel-edit-boundary.md) | 206 | `result-track:7a0154a8644362554859fbb431660ad36b40751abc271def86dfca9a6290aae2` |
| 25 | `theorem` | [relabel_relation_boundary](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/relabel-relation-boundary.md) | 218 | `result-track:ff6347099d301f00eb08622b57f95a7680076335679288cec70d83828b0ef3af` |
| 26 | `def` | [degreeEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/degreeequiv.md) | 229 | `declaration-track:52f127ce4e979f2d369251772dda0c602742bdad2889952194dd0fe90b31f3b1` |
| 27 | `def` | [degreeIso](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/degreeiso.md) | 237 | `declaration-track:ebd8e4fc56bafb310a213ba90086a40314c84348d17c6a2b4f0e921bb0a819ef` |
| 28 | `theorem` | [degreeIso_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/degreeiso-comm.md) | 245 | `result-track:74028ca0922e2aee595a6885a5ef1ffa1449a0c96f8621561486ca0014d17d59` |
| 29 | `def` | [toChainIso](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/tochainiso.md) | 271 | `declaration-track:2fa2c1e75b75166570660fd32abf3a61f20d1bd637a7b17675cdad09b2ab7d92` |
| 30 | `theorem` | [toChainIso_hom_f_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/tochainiso-hom-f-zero.md) | 279 | `result-track:d6e8dc6f86584925d021859c2ea7e420deaef0d94cc6c855f2056201b670d026` |
| 31 | `theorem` | [toChainIso_vertex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EditComplex.lean/declarations/tochainiso-vertex.md) | 284 | `result-track:dd0e2b64335243cdd8b719b771ead70324370b5099210a9c24b928f09e3e04cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc5828a607f555ab6351de76e20b00ab0f0a3da6d9620232fe912bf2784582e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant8673c4a62a1b5dd922c2b1a0d841b9adfbb2d65b1d9e1f1b12846188c9153ade.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant8673c4a62a1b5dd922c2b1a0d841b9adfbb2d65b1d9e1f1b12846188c9153ade.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
