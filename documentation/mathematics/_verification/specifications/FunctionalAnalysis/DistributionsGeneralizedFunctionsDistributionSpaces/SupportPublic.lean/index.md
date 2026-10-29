# Verification target: Support Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2714333e11680678384601c8b9dfb6746a0ec495",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2714333e11680678384601c8b9dfb6746a0ec495`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean.json)

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
| 1 | `def` | [IsVanishingOn](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/isvanishingon.md) | 59 | `declaration-track:20e934cea2043eec676c882733d2e5cb05e65908f85321ea0e9224529afa111a` |
| 2 | `theorem` | [IsVanishingOn.mono](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/isvanishingon-mono.md) | 63 | `result-track:55eb21583f0d1b5c7b28f20144e4ad0e442a86f178fe5979d29815655377c939` |
| 3 | `theorem` | [not_isVanishingOn_mono](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/not-isvanishingon-mono.md) | 67 | `result-track:277948e305ac3b78961dc7583df54ece790e97bd41a170f929dc8e688303de08` |
| 4 | `theorem` | [not_isVanishingOn_iff](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/not-isvanishingon-iff.md) | 71 | `result-track:0f212371c44056f30810e3005775e9381588532dcd7551c9fcce7fb92c7e7c47` |
| 5 | `def` | [dsupport](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/dsupport.md) | 94 | `declaration-track:bf32e5e374e83fbaf6905cddc2114f9954f3e23cfbae41c45c78255771fa42a3` |
| 6 | `theorem` | [mem_dsupport_iff](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/mem-dsupport-iff.md) | 96 | `result-track:0cc8061b91f56cce2527f506579884d13ab8b4793dd2bb81de16f634c35c7f83` |
| 7 | `theorem` | [dsupport_compl_eq](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/dsupport-compl-eq.md) | 101 | `result-track:fe577c03d9c98b0e547a89b1360d06d29ba7c38480282620d0c4d1446995ab6f` |
| 8 | `theorem` | [notMem_dsupport_iff](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/notmem-dsupport-iff.md) | 105 | `result-track:574da12973f721a1b196f314c7d988fb037b2c3fb8e21943c5621c2e5ae7f001` |
| 9 | `theorem` | [mem_dsupport_iff_not_isVanishingOn](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/mem-dsupport-iff-not-isvanishingon.md) | 109 | `result-track:865f751e944d64ee297be21ef3d07cf0f9726a0899453c2fb96e65c5e4ccfeec` |
| 10 | `theorem` | [mem_dsupport_iff_forall_exists_ne](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/mem-dsupport-iff-forall-exists-ne.md) | 113 | `result-track:ee0070edd4c3cb17a67347822f775ead1b0e911462b212706e9a41ccfbfafe9a` |
| 11 | `theorem` | [mem_dsupport_iff_frequently](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/mem-dsupport-iff-frequently.md) | 117 | `result-track:e30106449b4e42258f8284bdb0d59bb9b88c0123cad96f58d63cbf910d117175` |
| 12 | `theorem` | [_root_.Filter.HasBasis.mem_dsupport](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/root-filter-hasbasis-mem-dsupport.md) | 122 | `result-track:5cf17f9afe611df32ff8385a19d438e66af1cfe9caf9d0b5293d698aeca66147` |
| 13 | `theorem` | [notMem_dsupport_iff_eventually](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/notmem-dsupport-iff-eventually.md) | 128 | `result-track:69b2765b70a4466290b95c8121c0edf93cc6235dade402e9cbde3b1af3037d5e` |
| 14 | `theorem` | [_root_.Filter.HasBasis.notMem_dsupport](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/root-filter-hasbasis-notmem-dsupport.md) | 132 | `result-track:046ede3f70e903c16a8b870c764ef48ae4eb50719711abc539b6b1413576bb3a` |
| 15 | `theorem` | [dsupport_subset_dsupport](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/dsupport-subset-dsupport.md) | 138 | `result-track:c37e161ed9875ce194728adf8b03408f6c3dd5fb5e1cca8e1f7deb0374df1365` |
| 16 | `theorem` | [isClosed_dsupport](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/isclosed-dsupport.md) | 144 | `result-track:b409855215c9305e4bdf4e8f32657e75775f3c790ece323f68a7b280c76df327` |
| 17 | `theorem` | [IsVanishingOn.disjoint_dsupport](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/isvanishingon-disjoint-dsupport.md) | 147 | `result-track:eb51548eba594cefdd016620f1833ff59820058f9ca8ab58d158b46b5455e6da` |
| 18 | `theorem` | [compl_dsupport_eq_sUnion_isBounded](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/compl-dsupport-eq-sunion-isbounded.md) | 163 | `result-track:30c0abd100348cc6580e480dbba5a3e7936d5b08c827304959da34242f43e0f6` |
| 19 | `theorem` | [smulLeftCLM](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/smulleftclm.md) | 185 | `result-track:40549aa34bb14b316dc1d30a1b4b2fcdc55e1bceca1ca991ec5db6d054f85265` |
| 20 | `theorem` | [lineDerivOp](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/linederivop-source-edition-2.md) | 198 | `result-track:9ca219c1d8da9abdbfabc5a320d1dfcba47ef6fb7013c556c774e22ed9bacb8b` |
| 21 | `theorem` | [iteratedLineDerivOp](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/iteratedlinederivop.md) | 205 | `result-track:3eb2cf7e1626baa910cf8cd9c88c9cd336d89a508d902fdcf467741e35364747` |
| 22 | `theorem` | [_root_.TemperedDistribution.isVanishingOn_delta](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/root-tempereddistribution-isvanishingon-delta.md) | 214 | `result-track:4fd1cb92ca0629b09596ca1aac4cacb92528fbff6f7854cc84d7835828cc1a82` |
| 23 | `theorem` | [dsupport_smulLeftCLM_subset](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/dsupport-smulleftclm-subset.md) | 224 | `result-track:2d9dc12ce6702954bbfaf95323dc78850baf6403a6f04eeddddfc8ae0691e461` |
| 24 | `theorem` | [dsupport_lineDerivOp_subset](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/dsupport-linederivop-subset.md) | 233 | `result-track:0ab7fd8de7329acd395571613383596517859493f9d6f242198385a3034d6338` |
| 25 | `theorem` | [dsupport_iteratedLineDerivOp_subset](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/dsupport-iteratedlinederivop-subset-source-edition-2.md) | 236 | `result-track:8d2fff8bf3b8a9686249fb6a3d0b88751fd4099848beade6c0d2ea439c247f4e` |
| 26 | `theorem` | [dsupport_delta](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/dsupport-delta-source-edition-2.md) | 240 | `result-track:b36dbd14b0d21cd7b7fe6179b4faba2d2ba61445b94986b6a91660c1728fd504` |
| 27 | `theorem` | [lineDerivOp](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/linederivop.md) | 281 | `result-track:5fde6976b53f020e3b327f6b771642c03b353afe39c8d217ad2f546b02e60a47` |
| 28 | `theorem` | [iteratedLineDerivOp](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/iteratedlinederivop-source-edition-2.md) | 288 | `result-track:e860930e1a6bdf91317c413e6aa4b6f1ad965701389c4a19d50184adb430cb32` |
| 29 | `theorem` | [_root_.Distribution.isVanishingOn_delta](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/root-distribution-isvanishingon-delta.md) | 297 | `result-track:80e88ffaa21eb0fa0bf0cfb8b1c4f91bb879360e0b1632f61ff3bfba470da849` |
| 30 | `theorem` | [dsupport_lineDerivOp_subset](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/dsupport-linederivop-subset-source-edition-2.md) | 309 | `result-track:89e0397f6dd89aaa3544ebef60717c3486deaf714748bfa156c282656d8da7be` |
| 31 | `theorem` | [dsupport_iteratedLineDerivOp_subset](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/dsupport-iteratedlinederivop-subset.md) | 312 | `result-track:29d50321be48921a5d1a9fc49d5f6e0eb885f40beb083ade3e8d0570ca9e80f4` |
| 32 | `theorem` | [dsupport_delta](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SupportPublic.lean/declarations/dsupport-delta.md) | 316 | `result-track:b0aabb72f552d355a7ee04970e540e0ff0178a35ffe73071937fc632b8a5a792` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3d540dadb546bbf9da6b49a4352ca465e7117d46cb136b518fbaa5930695f8e8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
