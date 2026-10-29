# Verification target: Kummer Extension Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07592dedf37f522f08eb23616e34353dfaa93528",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/KummerExtension/Variant07e5039fac8867865939e4d5add402de113518c12c210a02e4b1d67bb3a5bcb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07592dedf37f522f08eb23616e34353dfaa93528`.

Source path: `GRWTSK/Algebra/KummerExtension/Variant07e5039fac8867865939e4d5add402de113518c12c210a02e4b1d67bb3a5bcb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/KummerExtension/Variant07e5039fac8867865939e4d5add402de113518c12c210a02e4b1d67bb3a5bcb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.RootsOfUnity.PrimitiveRoots` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Galois.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.KummerPolynomial` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Minpoly` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [X_pow_sub_C_splits_of_isPrimitiveRoot](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/x-pow-sub-c-splits-of-isprimitiveroot.md) | 61 | `result-track:4b4d5a5881fc609023244077bb18b80a305352cc0f76b31e055eea136881c145` |
| 2 | `theorem` | [X_pow_sub_C_eq_prod'](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/x-pow-sub-c-eq-prod-source-edition-2.md) | 73 | `result-track:874996b307d93b682b736e50243eb4e54404e89200523016960c74243effc30d` |
| 3 | `lemma` | [X_pow_sub_C_eq_prod](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/x-pow-sub-c-eq-prod.md) | 80 | `result-track:14d4c7411dc01add7b49ef50d356dfb45815a8e849a5a5149e86464d7feafed2` |
| 4 | `theorem` | [X_pow_mul_sub_C_irreducible](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/x-pow-mul-sub-c-irreducible.md) | 95 | `result-track:fd625c385b2aad9dc9836ca9c5a6f8912fa655267de43cd8792982ee4b3071e0` |
| 5 | `theorem` | [X_pow_sub_C_irreducible_of_odd](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/x-pow-sub-c-irreducible-of-odd.md) | 108 | `result-track:17724f68782a26db957c2a3998c8f649a580e8e189d874c4601142337fef4e2c` |
| 6 | `theorem` | [X_pow_sub_C_irreducible_iff_forall_prime_of_odd](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/x-pow-sub-c-irreducible-iff-forall-prime-of-odd.md) | 129 | `result-track:b28a92b168d571e2fd2ab5b9562085f0c7e2f3f640189154e91f521893b7ef98` |
| 7 | `theorem` | [X_pow_sub_C_irreducible_iff_of_odd](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/x-pow-sub-c-irreducible-iff-of-odd.md) | 134 | `result-track:ee8cd1cb1c8cd4522f5eb36a39a2197b8b220f7da8b722d3f0e615d52e3947f4` |
| 8 | `theorem` | [X_pow_sub_C_irreducible_of_prime_pow](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/x-pow-sub-c-irreducible-of-prime-pow.md) | 140 | `result-track:fd27ea21446b3ec7b20d036f8b0827f604d29659353c37818f1fb653470384a0` |
| 9 | `theorem` | [X_pow_sub_C_irreducible_iff_of_prime_pow](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/x-pow-sub-c-irreducible-iff-of-prime-pow.md) | 147 | `result-track:74bc907910535f964f0bcda7790b2158d2a174b0a31e9d7f8a62e16615d16f0f` |
| 10 | `theorem` | [Polynomial.separable_X_pow_sub_C_of_irreducible](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/polynomial-separable-x-pow-sub-c-of-irreducible.md) | 175 | `result-track:185de282fd5daddaa673c8c4fc2e2d16fdccd5e02cc3715954087260a9905643` |
| 11 | `def` | [autAdjoinRootXPowSubCHom](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/autadjoinrootxpowsubchom.md) | 198 | `declaration-track:26ee39941d0f9d1e48a7cb7b5ea23c6aa31830d38e9770a60c634006d96cd77d` |
| 12 | `def` | [autAdjoinRootXPowSubC](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/autadjoinrootxpowsubc.md) | 211 | `declaration-track:2ce447242d6a2bc9ac1e9d5385251190f2a62e3ce139e64736ddb39c5328577c` |
| 13 | `lemma` | [autAdjoinRootXPowSubC_root](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/autadjoinrootxpowsubc-root.md) | 217 | `result-track:8a45fa4b3ee56932d24005cb46bdad9979abdc99d8f448f37d3ed3f61c4bdb17` |
| 14 | `def` | [AdjoinRootXPowSubCEquivToRootsOfUnity](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/adjoinrootxpowsubcequivtorootsofunity.md) | 227 | `declaration-track:cf01f76bd8fbb6dab30489c06dab71b4645e0dfe7fc40cac7a172bd591c3c20c` |
| 15 | `def` | [autAdjoinRootXPowSubCEquiv](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/autadjoinrootxpowsubcequiv.md) | 244 | `declaration-track:718bbfcf94f9cab5cc8cbf3e4be9df4a841eff3a6eae8f6a6562f7d485e102b5` |
| 16 | `lemma` | [autAdjoinRootXPowSubCEquiv_root](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/autadjoinrootxpowsubcequiv-root.md) | 279 | `result-track:5f34e877a6fe6d72f27e73d021e441ef7242d44c74792c5475587a84ccf3c315` |
| 17 | `lemma` | [autAdjoinRootXPowSubCEquiv_symm_smul](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/autadjoinrootxpowsubcequiv-symm-smul.md) | 283 | `result-track:4d0d69ad45a0a2abfe7031dea273569be81d840f60c8cfbdbc5cac46894dd30c` |
| 18 | `lemma` | [isSplittingField_AdjoinRoot_X_pow_sub_C](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/issplittingfield-adjoinroot-x-pow-sub-c.md) | 305 | `result-track:f7e9d1a01903dd67164c9a800f692f3c2e3c53a72c2f67a5e0ee2b142370fab3` |
| 19 | `def` | [adjoinRootXPowSubCEquiv](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/adjoinrootxpowsubcequiv.md) | 329 | `declaration-track:d542b5c560f7ab6c81ee35b799b206c5eaede4ffb7a384190da5bae1996438b7` |
| 20 | `lemma` | [adjoinRootXPowSubCEquiv_root](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/adjoinrootxpowsubcequiv-root.md) | 339 | `result-track:91215de3fa2017dc10b2a4b3a8fa870bd95c5171da034642a5e50f3cd77af596` |
| 21 | `lemma` | [adjoinRootXPowSubCEquiv_symm_eq_root](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/adjoinrootxpowsubcequiv-symm-eq-root.md) | 343 | `result-track:30777ce38b026e59d1465d2d3a1fc07a84d06849cbfb8d3d2aece09bacc73d2f` |
| 22 | `lemma` | [Algebra.adjoin_root_eq_top_of_isSplittingField](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/algebra-adjoin-root-eq-top-of-issplittingfield.md) | 349 | `result-track:f41047e02e24b8df556edc400dba29b9fa7340430912f06d32c612c3362cc930` |
| 23 | `lemma` | [IntermediateField.adjoin_root_eq_top_of_isSplittingField](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/intermediatefield-adjoin-root-eq-top-of-issplittingfield.md) | 358 | `result-track:19b9df16529b490b02aed5e0d85dcb8034819c159a5d491a939eee50468dddfb` |
| 24 | `abbrev` | [rootOfSplitsXPowSubC](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/rootofsplitsxpowsubc.md) | 367 | `declaration-track:d68c0c6e676adc783c87ab976b27a743a6b861b73350589a469de7c18b1ae705` |
| 25 | `lemma` | [rootOfSplitsXPowSubC_pow](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/rootofsplitsxpowsubc-pow.md) | 372 | `result-track:666db1bfa5c081e2386e4b71dec89997cf608c98725d7187b9df8c6750671618` |
| 26 | `def` | [autEquivRootsOfUnity](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/autequivrootsofunity.md) | 384 | `declaration-track:08acd5f46fb41cdd3784c0af39f565676908a0ab88e73a648305671dc7b6c064` |
| 27 | `lemma` | [autEquivRootsOfUnity_apply_rootOfSplit](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/autequivrootsofunity-apply-rootofsplit.md) | 389 | `result-track:c92968f9d19434ad69955aecb94687fd3866cc00adc92d67cdfe9b8da453229e` |
| 28 | `lemma` | [autEquivRootsOfUnity_smul](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/autequivrootsofunity-smul.md) | 401 | `result-track:3e4bd51f386b231d0c07bf3987b9ad009be0411a1c620f4a644edff80f36438e` |
| 29 | `def` | [autEquivZmod](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/autequivzmod.md) | 417 | `declaration-track:594774f6cf453f95596167040993f5c149eee55393a0faf08e57b222945137f9` |
| 30 | `lemma` | [autEquivZmod_symm_apply_intCast](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/autequivzmod-symm-apply-intcast.md) | 426 | `result-track:57d6c13f88cec9388d9fe926721697a7aa66ebc1e5ae6a4c30914586b83e1990` |
| 31 | `lemma` | [autEquivZmod_symm_apply_natCast](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/autequivzmod-symm-apply-natcast.md) | 433 | `result-track:771938c9abc7c3422b77648129ed0326162264919951b0b1e85f646d691c0243` |
| 32 | `lemma` | [isCyclic_of_isSplittingField_X_pow_sub_C](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/iscyclic-of-issplittingfield-x-pow-sub-c.md) | 438 | `result-track:ecf70c62760676395448e6e36f2dc0fe05386744e775d93b39d353220508ca81` |
| 33 | `lemma` | [isGalois_of_isSplittingField_X_pow_sub_C](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/isgalois-of-issplittingfield-x-pow-sub-c.md) | 444 | `result-track:894d49f3ad6ff874157210028a00b4b6c20f6d00c0b108ba5536ef7222c2a643` |
| 34 | `lemma` | [finrank_of_isSplittingField_X_pow_sub_C](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/finrank-of-issplittingfield-x-pow-sub-c.md) | 448 | `result-track:a488b4fe576cb04d3923178a9ddba1b47e83430c93fa4598b79a2970dc8819c6` |
| 35 | `lemma` | [exists_root_adjoin_eq_top_of_isCyclic](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/exists-root-adjoin-eq-top-of-iscyclic.md) | 471 | `result-track:d22a91add57fde7da07550d130226df609201e866b11834e4564cf064ca89589` |
| 36 | `lemma` | [irreducible_X_pow_sub_C_of_root_adjoin_eq_top](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/irreducible-x-pow-sub-c-of-root-adjoin-eq-top.md) | 509 | `result-track:a8e96e3d46bbe421e75204c136f530198b3a8f44323660fa5128090580cfab5a` |
| 37 | `lemma` | [isSplittingField_X_pow_sub_C_of_root_adjoin_eq_top](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/issplittingfield-x-pow-sub-c-of-root-adjoin-eq-top.md) | 524 | `result-track:9239a1abac9d1d4e3ddf4d711502c71236ac642397850b400764795167ed408c` |
| 38 | `lemma` | [isCyclic_tfae](../../../../FieldTheoryAndPolynomials/KummerExtensionNamespaced.lean/declarations/iscyclic-tfae.md) | 548 | `result-track:3c080a1e683796fb24c7d79a80835d4b82fd839ae4629a1e32876bbf057c0915` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=178c4885881788c49d347f8e70fdf951ee6ab9ca9ee7d6d4bdcf400ed3d3a214 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/KummerExtension/Variant07e5039fac8867865939e4d5add402de113518c12c210a02e4b1d67bb3a5bcb8.lean","GRWTSK/_verification/specifications/Algebra/KummerExtension/Variant07e5039fac8867865939e4d5add402de113518c12c210a02e4b1d67bb3a5bcb8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
