# Verification target: Nondegenerate Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bd65e8f38ee55a378e6bed5fb86b816971c82c1",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Nondegenerate/Variantbb5688ad500eac15fe3f045991378cee1cb9828e31a109145d8a58c2235f494a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/NondegeneratePublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/NondegeneratePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bd65e8f38ee55a378e6bed5fb86b816971c82c1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Nondegenerate/Variantbb5688ad500eac15fe3f045991378cee1cb9828e31a109145d8a58c2235f494a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Nondegenerate/Variantbb5688ad500eac15fe3f045991378cee1cb9828e31a109145d8a58c2235f494a.lean.json)

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
| 1 | `def` | [normalizedChainComplex](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/normalizedchaincomplex.md) | 44 | `declaration-track:77ccc2c09001ca6b6a619375bbd915e05a69234ea0ba4bac64830772384dfda6` |
| 2 | `def` | [toNormalizedChainComplex](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/tonormalizedchaincomplex.md) | 48 | `declaration-track:1b43956ff0b536765f05a35a983d653ce2cd32920b94ed9115922a6f36be1f99` |
| 3 | `def` | [fromNormalizedChainComplex](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/fromnormalizedchaincomplex.md) | 52 | `declaration-track:b8a66c20eab18e6fd93c8ef976b98e77ed6dd5a52332acf64b862df15ec06051` |
| 4 | `lemma` | [PInfty_toNormalizedChainComplex](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/pinfty-tonormalizedchaincomplex.md) | 56 | `result-track:e5730dd311fa1e6a8de6938c4cd79067e67d587536173302d68c6fb197d3254c` |
| 5 | `instance` | [(anonymous)](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/instance-source-edition-3.md) | 60 | `declaration-track:b7c95e791cd77e19e0cc3fa7262a91fd5ccdaf2d7d9bb6a1e4b558151672b233` |
| 6 | `instance` | [(anonymous)](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/instance-source-edition-2.md) | 63 | `declaration-track:b19f5887caa2cff0f87960960b49659daf7a74a9ebc0048ca8f8e29766c1781c` |
| 7 | `lemma` | [fromNormalizedChainComplex_toNormalizedChainComplex](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/fromnormalizedchaincomplex-tonormalizedchaincomplex.md) | 67 | `result-track:dc72d5d791db26194df43c005747c857740156468a07d171a606e99068eda808` |
| 8 | `lemma` | [fromNormalizedChainComplex_f_toNormalizedChainComplex_f](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/fromnormalizedchaincomplex-f-tonormalizedchaincomplex-f.md) | 72 | `result-track:1b91653a838158908719c6064ea34f1aea92e3984cab5a5587c262a9340ac351` |
| 9 | `lemma` | [toNormalizedChainComplex_fromNormalizedChainComplex](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/tonormalizedchaincomplex-fromnormalizedchaincomplex.md) | 77 | `result-track:41f91fd9aa303d5eb2072ea5e98e28bc8fe254a163c014152ec7bc45ccecf857` |
| 10 | `lemma` | [toNormalizedChainComplex_f_fromNormalizedChainComplex_f](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/tonormalizedchaincomplex-f-fromnormalizedchaincomplex-f.md) | 82 | `result-track:37c181ea6408ce7db9c635e64b1e9b27c2cf663196a3fdc3e75ee3945963e40f` |
| 11 | `def` | [homotopyEquivNormalizedChainComplex](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/homotopyequivnormalizedchaincomplex.md) | 87 | `declaration-track:ee07172ff356f9ffcfccb50ffe597bcc9d3404005ffd8955718b779432615fa0` |
| 12 | `lemma` | [homotopyEquivNormalizedChainComplex_hom](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/homotopyequivnormalizedchaincomplex-hom.md) | 92 | `result-track:c43ad2364394421cd5b41b80c33e7bb6874940265ab830faac69b7dca185903f` |
| 13 | `lemma` | [homotopyEquivNormalizedChainComplex_inv](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/homotopyequivnormalizedchaincomplex-inv.md) | 96 | `result-track:88bbeca9be3fab44b09883573ae1b74e4472a8e477273c508d9f4fa451d3dabb` |
| 14 | `def` | [ιNormalizedChainComplex](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/normalizedchaincomplex-source-edition-2.md) | 106 | `declaration-track:ea1def937f6402ea875272a23af2fe0c1b842924e66454cb9d8cd477ea66102e` |
| 15 | `lemma` | [ιChainComplex_toNormalizedChainComplex_f](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/chaincomplex-tonormalizedchaincomplex-f.md) | 111 | `result-track:06794673d924ba98207df5e8b7752f1bc56cd1ed0fb4a60e2c625668a8cfa60a` |
| 16 | `lemma` | [ιNormalizedChainComplex_d](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/normalizedchaincomplex-d.md) | 117 | `result-track:818d8ae423fdd909860f6e0924e441f82139af87c71c5800daea5ff970f95b61` |
| 17 | `lemma` | [ιNormalizedChainComplex_fromNormalizedChainComplex_f](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/normalizedchaincomplex-fromnormalizedchaincomplex-f.md) | 127 | `result-track:0da82456762759327b4805108930a6036385d19002331591f391668365420547` |
| 18 | `lemma` | [ιNormalizedChainComplex_eq_zero](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/normalizedchaincomplex-eq-zero.md) | 133 | `result-track:feb809e0095176784f4f8e4bbbe33b96f4be38e2f076d2f2528b34f83c1b36e9` |
| 19 | `abbrev` | [cofanNormalizedChainComplex](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/cofannormalizedchaincomplex.md) | 150 | `declaration-track:cd66fab3321cabbceeb12f0ef2232488c27b429a3d1d71feaceb60f3f77d90be` |
| 20 | `lemma` | [ιNormalizedChainComplex_eq_ι](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/normalizedchaincomplex-eq.md) | 155 | `result-track:b7ba0e3124b3ef125164e7788137658b8e6ed5dadfcee32cb77e71fd59259328` |
| 21 | `def` | [isColimitCofanNormalizedChainComplex](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/iscolimitcofannormalizedchaincomplex.md) | 168 | `declaration-track:443a832ef6e019c8fec0103ffef932020fb1563fb491c821af7184fbc8786002` |
| 22 | `lemma` | [normalizedChainComplex_hom_ext](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/normalizedchaincomplex-hom-ext.md) | 175 | `result-track:03e2292f3091c2f4bada1a2e7128b73102067339d84b0863d895f6dc53545d13` |
| 23 | `lemma` | [isZero_normalizedChainComplex_X_of_hasDimensionLT](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/iszero-normalizedchaincomplex-x-of-hasdimensionlt.md) | 183 | `result-track:a67896d12341e81ba4b080856d7ed38ab17872e87bbdb4bef89e743e01604470` |
| 24 | `lemma` | [chainComplexMap_PInfty](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/chaincomplexmap-pinfty.md) | 195 | `result-track:18bd63dcfe4033d035ad91354d6751bbb0e1b46393770b236431cce21d47a925` |
| 25 | `def` | [normalizedChainComplexMap](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/normalizedchaincomplexmap.md) | 201 | `declaration-track:8a372323ab62aff0aabf794d8f5d00e4f907b08a3469c42df8d20f6ce50abe53` |
| 26 | `lemma` | [toNormalizedChainComplex_normalizedChainComplexMap](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/tonormalizedchaincomplex-normalizedchaincomplexmap.md) | 206 | `result-track:1276a8158757b3d4ad76763ffa7188152cab96167dd9b09d8183ded5b645a625` |
| 27 | `lemma` | [ι_normalizedChainComplexMap_f](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/normalizedchaincomplexmap-f.md) | 212 | `result-track:86bb18804e1aab0e48c208667297c3568c09a48f22af81e133b9db030a56f7ae` |
| 28 | `def` | [normalizedChainComplexFunctorObj](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/normalizedchaincomplexfunctorobj.md) | 223 | `declaration-track:4b07de2a299f9087224824be667d698207875a5207c3738fb1063f43ae997ff7` |
| 29 | `def` | [toNormalizedChainComplexNatTrans](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/tonormalizedchaincomplexnattrans.md) | 231 | `declaration-track:99b6d8e5ecb74ae72bc0c5bf04d12fc8d168615d14c2bf5959bcf400364fa519` |
| 30 | `instance` | [(anonymous)](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/instance-source-edition-4.md) | 241 | `declaration-track:f785c3a8a10a46edf7f1282c287edea9c11cf991ac7d61276a9f0ff2c9bb064c` |
| 31 | `instance` | [(anonymous)](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/instance.md) | 244 | `declaration-track:34defed38b311a3b5f63c44bdeafb0f1a82ff3add4508377f8960cc205e0541b` |
| 32 | `lemma` | [exactAt_chainComplex_of_hasDimensionLT](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/exactat-chaincomplex-of-hasdimensionlt.md) | 247 | `result-track:764f89f23dce0a0d2583df4fb4cdc2387ab246fc8dbadd1d12391af5bb01f678` |
| 33 | `lemma` | [isZero_homology_of_hasDimensionLT](../../../../AlgebraicTopology/NondegeneratePublic.lean/declarations/iszero-homology-of-hasdimensionlt.md) | 253 | `result-track:bf1a0f4781f4c7df06de3a0f2b82b901ac5e45effd5c525fa46da83df590050f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7097916745022999b06d673611bfca68a055e04b71139016fc94f22971006763 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Nondegenerate/Variantbb5688ad500eac15fe3f045991378cee1cb9828e31a109145d8a58c2235f494a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Nondegenerate/Variantbb5688ad500eac15fe3f045991378cee1cb9828e31a109145d8a58c2235f494a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
