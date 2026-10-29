# Verification target: Is Conj Root Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8df8e6bb099cc0d94c6ecb0d05cf5629ba7173d",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IsConjRoot/Variant559049c4a17e377d61bab6c43c26ebf631f4b81fb56a30793cc2e579d5a12318.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8df8e6bb099cc0d94c6ecb0d05cf5629ba7173d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IsConjRoot/Variant559049c4a17e377d61bab6c43c26ebf631f4b81fb56a30793cc2e579d5a12318.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IsConjRoot/Variant559049c4a17e377d61bab6c43c26ebf631f4b81fb56a30793cc2e579d5a12318.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Extension` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IntermediateField.Adjoin.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Normal.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsConjRoot](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/isconjroot.md) | 59 | `declaration-track:47656fc76acaca92a0a7c56493723e0ae5565676f868cc4008b65c74a12c1928` |
| 2 | `theorem` | [isConjRoot_def](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/isconjroot-def.md) | 64 | `result-track:c66bd1fea17b729ffe3798a450c14551ff5555fbb04ef21fa3cfa7b63b0f98b4` |
| 3 | `theorem` | [refl](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/refl.md) | 71 | `result-track:7d97f9f208f83ca9bb0d2dddd3bad31f940a9ce2b1bdd6be9c4caa4b0dbb9664` |
| 4 | `theorem` | [symm](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/symm.md) | 76 | `result-track:514ff3b0eb853edd23c7333b3465d7cca7b5452caad0a8150ae37bebed50de2d` |
| 5 | `theorem` | [trans](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/trans.md) | 82 | `result-track:5cf8408324d8c373aed0d76ae55b884fb9d1ca1a0bc207a007f60121f1ab6bb7` |
| 6 | `def` | [setoid](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/setoid.md) | 89 | `declaration-track:083c7674580a20f6cd5449e17c0924befff73452434ab641ca33100f8db88b19` |
| 7 | `theorem` | [aeval_eq_zero](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/aeval-eq-zero.md) | 96 | `result-track:4de4738ff53359360c504009d66ce9d14e6cec46e58cd9ae2973b743d7eaac0e` |
| 8 | `theorem` | [add_algebraMap](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/add-algebramap.md) | 103 | `result-track:0f4f960739b99194309d8be68ede5a7920c8c2a9297ac294a26eaa3d2b02029e` |
| 9 | `theorem` | [sub_algebraMap](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/sub-algebramap.md) | 111 | `result-track:82ac02e5f0dff7d4cee24e0544bb047b84a2bd3b24655e5f692fb6dc50812c37` |
| 10 | `theorem` | [neg](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/neg.md) | 118 | `result-track:0363b9f5acb1cd1af9c4f63dfee4db58dca1fc4d38a23269bb9cfd2b8edd7756` |
| 11 | `theorem` | [isConjRoot_algHom_iff_of_injective](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/isconjroot-alghom-iff-of-injective.md) | 132 | `result-track:e2a9ab4612c4b32f566cfc54f74a6657f375c24f1627ae00d3954215addcfe17` |
| 12 | `theorem` | [isConjRoot_algHom_iff](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/isconjroot-alghom-iff.md) | 140 | `result-track:377fc9efffb0062c8597255925115406d4fd52de087391222af5d1ec2988ce0f` |
| 13 | `theorem` | [isConjRoot_of_aeval_eq_zero](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/isconjroot-of-aeval-eq-zero.md) | 148 | `result-track:3ec95b21947659bab61c79f6e4be7e86adb72534059149b3d26644a9f5d63c7a` |
| 14 | `theorem` | [isConjRoot_iff_aeval_eq_zero](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/isconjroot-iff-aeval-eq-zero.md) | 156 | `result-track:1215b782dc84c47e2b1c25866f6016f1b5fe634840cd1b8c8bae6b11fb6c37a3` |
| 15 | `theorem` | [isConjRoot_of_algEquiv](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/isconjroot-of-algequiv.md) | 164 | `result-track:7f4895a6931b7ad7f912fa620ef7107ce5fd3ff0961b8e46219de0b9fefe78a9` |
| 16 | `theorem` | [isConjRoot_of_algEquiv'](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/isconjroot-of-algequiv-source-edition-2.md) | 172 | `result-track:ac4abbf3c6dc40cf49f4df1d7182f874e80c72b2c1ab5ed0f2a012a63f93f7de` |
| 17 | `theorem` | [isConjRoot_of_algEquiv₂](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/isconjroot-of-algequiv-source-edition-3.md) | 179 | `result-track:c16d303cc0087ac35b9ffdafd76794d646483a06af3add23bcd8306cd9d3df7b` |
| 18 | `theorem` | [IsConjRoot.exists_algEquiv](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/isconjroot-exists-algequiv.md) | 187 | `result-track:7de4c906a425ddfaa0380a6406125ba4eb957a8d45c34659c3c5db36aa6bbd7c` |
| 19 | `theorem` | [isConjRoot_iff_exists_algEquiv](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/isconjroot-iff-exists-algequiv.md) | 198 | `result-track:13e6f91a5bf238960426517967ddf5eaecf312fb947ac42dab5186ad0dad0150` |
| 20 | `theorem` | [isConjRoot_iff_orbitRel](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/isconjroot-iff-orbitrel.md) | 207 | `result-track:b31bc9764813eb424dc23b1b1b6310aad43d64eb81c6dea24fb2489aabad590a` |
| 21 | `theorem` | [IsConjRoot.of_isScalarTower](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/isconjroot-of-isscalartower.md) | 218 | `result-track:4f1147cdf222aee9c21486f052abf747f9dc7418efa0f92a2731e37960715e6e` |
| 22 | `theorem` | [isConjRoot_iff_mem_minpoly_aroots](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/isconjroot-iff-mem-minpoly-aroots.md) | 226 | `result-track:801fd79716c23fec09c7dc785391f0165c595c7b6d2ec57e9ab08ce8d980e94e` |
| 23 | `theorem` | [isConjRoot_iff_mem_minpoly_rootSet](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/isconjroot-iff-mem-minpoly-rootset.md) | 236 | `result-track:5fa7fd60b976fad644ae8361bb15e3b881f6f502d6b96ac3723f05e55295e876` |
| 24 | `theorem` | [isIntegral](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/isintegral.md) | 246 | `result-track:0a470294b7418cb7e9218cacf3d71c9a42df4ce5505a0cae4992cfb3444a192e` |
| 25 | `theorem` | [eq_algebraMap_of_injective](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/eq-algebramap-of-injective.md) | 256 | `result-track:a239d692588c6f3579fd1c78731f042d2211315963ad80032b82ceb4b619eef7` |
| 26 | `theorem` | [eq_algebraMap](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/eq-algebramap.md) | 269 | `result-track:890edb241a16eeab4f09d66301cc008a3bb75a764738ccc07224f38d33402135` |
| 27 | `theorem` | [eq_zero_of_injective](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/eq-zero-of-injective.md) | 278 | `result-track:0a375b40bac03da248bf3f73f7ddd55d0522002a564fa0b7f267bd07bb0b2f4f` |
| 28 | `theorem` | [eq_zero](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/eq-zero.md) | 285 | `result-track:23972b35024faf388c72f70c2a8caea982b069c5db78beb5716c4c78a50132b8` |
| 29 | `theorem` | [isConjRoot_iff_eq_algebraMap_of_injective](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/isconjroot-iff-eq-algebramap-of-injective.md) | 296 | `result-track:bffb3d4df4581be458d78dfa0e9d26195c14de7556c824e88b5ed0351d8900fc` |
| 30 | `theorem` | [isConjRoot_iff_eq_algebraMap](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/isconjroot-iff-eq-algebramap.md) | 306 | `result-track:2fa7e86fb2fb6f464cde35750d535c83aac57661a6193fd28ef28beca2e27ab7` |
| 31 | `theorem` | [isConjRoot_iff_eq_algebraMap'](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/isconjroot-iff-eq-algebramap-source-edition-2.md) | 316 | `result-track:8ef7b71d44214b26e5a713a8bdd74ba3965b3c5ad3c7bd207be2934e3840608a` |
| 32 | `theorem` | [isConjRoot_zero_iff_eq_zero_of_injective](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/isconjroot-zero-iff-eq-zero-of-injective.md) | 325 | `result-track:eaeaa302a7a11940d7a59a84d9f5bce7e57243a29179adce60eb62f763b5fd69` |
| 33 | `theorem` | [isConjRoot_zero_iff_eq_zero](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/isconjroot-zero-iff-eq-zero-source-edition-2.md) | 333 | `result-track:9f2caf62f6c286ad4fe66480dfdde3ec9ea714754e225cc2ca32bc76b8196ae9` |
| 34 | `theorem` | [isConjRoot_zero_iff_eq_zero'](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/isconjroot-zero-iff-eq-zero.md) | 340 | `result-track:87e90864f037e9950ab10b1a066a3ccfba6d2df8301aff0e59bb4aaacc01a63d` |
| 35 | `theorem` | [ne_zero_of_injective](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/ne-zero-of-injective.md) | 350 | `result-track:c3a137bf61b118f6c28fe262548b13343fd96884cf8dd27403e6ea706e9cf68d` |
| 36 | `theorem` | [ne_zero](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/ne-zero.md) | 357 | `result-track:60e158368de8a127d53dedc87a9040e01a0e84922d0c8166f61ca92d6f418d63` |
| 37 | `theorem` | [notMem_iff_exists_ne_and_isConjRoot](../../../../FieldTheoryAndPolynomials/IsConjRootNamespaced.lean/declarations/notmem-iff-exists-ne-and-isconjroot.md) | 367 | `result-track:d4ddac051a3ae959e6e31c808d26cf3e4dca6f40ce85e826fc915c360f36be7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b21323a8f2d90a505c9348a08e88edd3df2f11ecf7ec592ca44c5bca18155f91 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/IsConjRoot/Variant559049c4a17e377d61bab6c43c26ebf631f4b81fb56a30793cc2e579d5a12318.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/IsConjRoot/Variant559049c4a17e377d61bab6c43c26ebf631f4b81fb56a30793cc2e579d5a12318.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
