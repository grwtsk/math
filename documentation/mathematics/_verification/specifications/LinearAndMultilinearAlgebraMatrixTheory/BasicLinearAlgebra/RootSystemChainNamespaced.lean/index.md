# Verification target: Root System Chain Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5aebdfdd479dbc358d7ef9544e1fc063fcb66ceb",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Chain/Variant18c604ae52bd03440af1dd5f5446e9b85b514eed61a1f8a38810e044f98a94fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5aebdfdd479dbc358d7ef9544e1fc063fcb66ceb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Chain/Variant18c604ae52bd03440af1dd5f5446e9b85b514eed61a1f8a38810e044f98a94fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Chain/Variant18c604ae52bd03440af1dd5f5446e9b85b514eed61a1f8a38810e044f98a94fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.RootSystem.Finite.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Finite.G2` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.OrdConnectedLinear` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [setOf_root_add_zsmul_eq_Icc_of_linearIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/setof-root-add-zsmul-eq-icc-of-linearindependent.md) | 50 | `result-track:468de22dd453570d97fdf35e1460a00a60d886221ca17ad2235faed35bf3a05c` |
| 2 | `def` | [chainTopCoeff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/chaintopcoeff.md) | 110 | `declaration-track:c43c3adefa94c6e1cc53e61e620d85d8229673eafe8f215bb24327ce2f83c7fb` |
| 3 | `def` | [chainBotCoeff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/chainbotcoeff.md) | 120 | `declaration-track:c50b320eba278b0ccd7817de34d4b422d7862f8edcd545efd0d2fef305354236` |
| 4 | `lemma` | [chainTopCoeff_of_not_linearIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/chaintopcoeff-of-not-linearindependent.md) | 127 | `result-track:d142ccc90628e1e893af1472a9d982dddc880ac00cce30357504ad73f7d62143` |
| 5 | `lemma` | [chainBotCoeff_of_not_linearIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/chainbotcoeff-of-not-linearindependent.md) | 131 | `result-track:238baac2f8e4932a2d658ae0b4bf998fa2c4b9da76f23c1686c76803c0b556bf` |
| 6 | `lemma` | [root_add_nsmul_mem_range_iff_le_chainTopCoeff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/root-add-nsmul-mem-range-iff-le-chaintopcoeff.md) | 138 | `result-track:f7759230ffd986f643fb7cbf462989d8ffb56143f6e6080fec60a0d4ac45a5fa` |
| 7 | `lemma` | [root_sub_nsmul_mem_range_iff_le_chainBotCoeff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/root-sub-nsmul-mem-range-iff-le-chainbotcoeff.md) | 152 | `result-track:b84f1dd0ea3b7ccc71465205ae8767254e349967ac703d3b7d4244f83c55267f` |
| 8 | `lemma` | [one_le_chainTopCoeff_of_root_add_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/one-le-chaintopcoeff-of-root-add-mem.md) | 166 | `result-track:4e9b4d0e6b4d24ca3e126f53579c14506abebd2f4592d6223459d29e3d06c983` |
| 9 | `lemma` | [one_le_chainBotCoeff_of_root_add_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/one-le-chainbotcoeff-of-root-add-mem.md) | 172 | `result-track:889e381a6a3d9cbc8debee44d21ab7c1b1fc65886cc8c3e2247f1a7caa771754` |
| 10 | `lemma` | [root_add_zsmul_mem_range_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/root-add-zsmul-mem-range-iff.md) | 178 | `result-track:ebca7ef7c1bc4c575bccdc1299d25608edc8f7a75b67a2098d04263663a9e7b9` |
| 11 | `lemma` | [root_sub_zsmul_mem_range_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/root-sub-zsmul-mem-range-iff.md) | 185 | `result-track:8fd744e077fc9e94b061c99676072fa09ffb4324c361e97fee91183b33c9f7e2` |
| 12 | `lemma` | [chainCoeff_reflection_perm_left_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/chaincoeff-reflection-perm-left-aux.md) | 193 | `result-track:8df9953a020e04f05a15208b8bffa640d9dfa94a936c13a724238a1d5bfe7e88` |
| 13 | `lemma` | [chainCoeff_reflection_perm_right_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/chaincoeff-reflection-perm-right-aux.md) | 208 | `result-track:1d7777e2c30138e9bade6e049a7cd0ef40bbbfb91df2bb9d739f0fc02d2bd840` |
| 14 | `lemma` | [chainTopCoeff_reflection_perm_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/chaintopcoeff-reflection-perm-left.md) | 224 | `result-track:e13ff81117918dda725b06d0720d6ff00490bb569bc91a44f8cfc5417c022f07` |
| 15 | `lemma` | [chainBotCoeff_reflection_perm_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/chainbotcoeff-reflection-perm-left.md) | 235 | `result-track:d011571bcec23376a0c5cf384f6c9b9fa5a4661d88dd042846874b716e231d8e` |
| 16 | `lemma` | [chainTopCoeff_reflection_perm_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/chaintopcoeff-reflection-perm-right.md) | 246 | `result-track:8ab60b02afeb2a5910e605832705e96b4f41d5a2d2b50d404f5f90c33fa2e346` |
| 17 | `lemma` | [chainBotCoeff_reflection_perm_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/chainbotcoeff-reflection-perm-right.md) | 257 | `result-track:6bb32fc911147ba1a6153589b1a82644696f04a3fc272e84039d9409407fcbcf` |
| 18 | `def` | [chainTopIdx](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/chaintopidx.md) | 274 | `declaration-track:d1356cddcab221832d5dcdf27ea7acbdcfff7d36e2630e3ebadd03728d84ebb8` |
| 19 | `def` | [chainBotIdx](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/chainbotidx.md) | 285 | `declaration-track:c5c953ec677a7367d35394b951b21e16cf25a2c2a143820e9acf44bd7e0f9464` |
| 20 | `lemma` | [root_chainTopIdx](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/root-chaintopidx.md) | 294 | `result-track:a5419faa3e3372cc67897bf06f8362bf881c4952749441ed2b8ed132b5abcb39` |
| 21 | `lemma` | [root_chainBotIdx](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/root-chainbotidx.md) | 303 | `result-track:3968479dbf076eba0bc00bcb60b5c5b6996130c66a1f4bc3503c9fc0037c79cb` |
| 22 | `lemma` | [chainBotCoeff_sub_chainTopCoeff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/chainbotcoeff-sub-chaintopcoeff.md) | 313 | `result-track:2d64d804fff6ecc7a42fc2d5f8b40028023679f6870bb8287318e8d334e153a5` |
| 23 | `lemma` | [chainTopCoeff_sub_chainBotCoeff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/chaintopcoeff-sub-chainbotcoeff.md) | 333 | `result-track:adab3890521c2d0a00aafb7961328923a52c1de4ab3b2ecdab40264c51147aa5` |
| 24 | `lemma` | [chainCoeff_chainTopIdx_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/chaincoeff-chaintopidx-aux.md) | 339 | `result-track:bc980a5063ee76a0a12df89c1508fced63b43e9437cf9b7cfdf8a303af0aeaea` |
| 25 | `lemma` | [chainBotCoeff_chainTopIdx](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/chainbotcoeff-chaintopidx.md) | 363 | `result-track:b52338862fbe523adaa5b5c2972b954a3332c759436ed30c7ba606a589a9cda1` |
| 26 | `lemma` | [chainTopCoeff_chainTopIdx](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/chaintopcoeff-chaintopidx.md) | 368 | `result-track:0f7c622e60f1ca8e0f5d55d81a354bbe7f970217d0daf7133d119c21b5480289` |
| 27 | `lemma` | [chainBotCoeff_add_chainTopCoeff_eq_pairingIn_chainTopIdx](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/chainbotcoeff-add-chaintopcoeff-eq-pairingin-chaintopidx.md) | 373 | `result-track:b0b4e5788dd8f5c4ca1c3e41232cfac52f1e371e3bd164fa777230e7cccf5a20` |
| 28 | `lemma` | [chainBotCoeff_add_chainTopCoeff_le_three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/chainbotcoeff-add-chaintopcoeff-le-three.md) | 383 | `result-track:c1e05846a96970de46bc2867758dd6711a029eaf2ea7b5742340076b578ffde0` |
| 29 | `lemma` | [chainBotCoeff_add_chainTopCoeff_le_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/chainbotcoeff-add-chaintopcoeff-le-two.md) | 393 | `result-track:d1774d942ecc5deeecc2a977956bc12e2a336c2eb1a834a8e4565f8a26ac225f` |
| 30 | `lemma` | [pairingIn_le_zero_of_root_add_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/pairingin-le-zero-of-root-add-mem.md) | 413 | `result-track:801670b25898675c8fc2b887ee3ed24b25e10193242f77f94faf748e6c87de6a` |
| 31 | `lemma` | [zero_le_pairingIn_of_root_sub_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/zero-le-pairingin-of-root-sub-mem.md) | 422 | `result-track:82817d6bd3e6d7e3ff0f272deb9f8eefd590679ff0e50f0a737adb5d9316be08` |
| 32 | `lemma` | [chainBotCoeff_if_one_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/chainbotcoeff-if-one-zero.md) | 434 | `result-track:bdf6c29424973e1be64a1bb80452ad54e7f728628fe58d4f5661e6ecbbf6d009` |
| 33 | `lemma` | [chainTopCoeff_if_one_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/chaintopcoeff-if-one-zero.md) | 445 | `result-track:aa615c481f1c8b1e3a1774999053773ebf0bf0ea4bdb5fada3599db017c89fe5` |
| 34 | `lemma` | [chainBotCoeff_mul_chainTopCoeff.aux_0](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/chainbotcoeff-mul-chaintopcoeff-aux-0.md) | 464 | `result-track:fc417315f62e74991ff73860cbc20bdb5de49a71823969e2ab1822e9b1c095d0` |
| 35 | `lemma` | [chainBotCoeff_mul_chainTopCoeff.aux_1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/chainbotcoeff-mul-chaintopcoeff-aux-1.md) | 475 | `result-track:c3242485d18d3ec96c2eef6f7eca36c6c8dda61c5f75381146092ffc6fd6e74a` |
| 36 | `lemma` | [chainBotCoeff_mul_chainTopCoeff.aux_2](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/chainbotcoeff-mul-chaintopcoeff-aux-2.md) | 536 | `result-track:d95d850e491f74cd739760d1aee785141f2ffd8938ac4357a8297b9fe6a6c162` |
| 37 | `lemma` | [chainBotCoeff_mul_chainTopCoeff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainNamespaced.lean/declarations/chainbotcoeff-mul-chaintopcoeff.md) | 603 | `result-track:dae0cab5859a35540b7c18fdf19d51eb1478f9dcbf3d5723ca37ea2c763c1b64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ccdcb2f0b04bdb7517405a468be16a7f0caf7c1d946edc25f91734c7b258c683 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Chain/Variant18c604ae52bd03440af1dd5f5446e9b85b514eed61a1f8a38810e044f98a94fa.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Chain/Variant18c604ae52bd03440af1dd5f5446e9b85b514eed61a1f8a38810e044f98a94fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
