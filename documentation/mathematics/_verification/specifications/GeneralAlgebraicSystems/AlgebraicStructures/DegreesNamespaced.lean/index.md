# Verification target: Degrees Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4124500c6ef14e22a331285bb91b4be15be0788",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Degrees/Variantc2b440e3e35baaf7c4cdad8ad6c558b71c34b5ba77fc20959311b00e0acf5069.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4124500c6ef14e22a331285bb91b4be15be0788`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Degrees/Variantc2b440e3e35baaf7c4cdad8ad6c558b71c34b5ba77fc20959311b00e0acf5069.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Degrees/Variantc2b440e3e35baaf7c4cdad8ad6c558b71c34b5ba77fc20959311b00e0acf5069.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Degree` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Rename` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [degrees](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degrees.md) | 84 | `declaration-track:f04168378290576d3550245e0524b92fa41bc9f791f500fc788cb9d377781677` |
| 2 | `theorem` | [degrees_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degrees-def.md) | 88 | `result-track:ea53c43486ebbecc38797f6902dfb8cda45b3680700efb789afc6fcd0bdb668a` |
| 3 | `theorem` | [degrees_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degrees-monomial.md) | 91 | `result-track:b2ebde82d3ffc7df9ff50538a368a1286f7f3fc7f47d15a0fd838f5300a3f36f` |
| 4 | `theorem` | [degrees_monomial_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degrees-monomial-eq.md) | 97 | `result-track:181ccc5fee22d627e3c2ed120b2d859086c2a91c4de37fe961e8515aeadd0771` |
| 5 | `theorem` | [degrees_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degrees-c.md) | 102 | `result-track:b2c35e1e992bf69250d53006c695a2ba82ebd99b56d77dc20b633579c8771134` |
| 6 | `theorem` | [degrees_X'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degrees-x.md) | 105 | `result-track:d4c07d55cb88c333326a2839a99c390af3879895ad18913a2cd4d75476ad53aa` |
| 7 | `theorem` | [degrees_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degrees-x-source-edition-2.md) | 109 | `result-track:e1df52e675274e5dff3dd4429a562e7f84dd1d386029b130ef9f2afe5a62dba9` |
| 8 | `theorem` | [degrees_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degrees-zero.md) | 113 | `result-track:b01394ab21e13bb47950005e69a8d8cf17a20be8c1e5e5fa4ec4acf36a0b653a` |
| 9 | `theorem` | [degrees_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degrees-one.md) | 118 | `result-track:475bb1a52d4eb7f7ae188a62c6c1c7100c09ce84a68526cd85f2cca5ba960618` |
| 10 | `theorem` | [degrees_add_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degrees-add-le.md) | 121 | `result-track:d45c46113de152cc8a0157c668252235573145b41ec1d401f92cd1834bddd08a` |
| 11 | `theorem` | [degrees_sum_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degrees-sum-le.md) | 125 | `result-track:47b1033af493419472273f7bc7c57e824d7f244a42ee481935c1b64a8476e3c7` |
| 12 | `theorem` | [degrees_mul_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degrees-mul-le.md) | 129 | `result-track:91982a9e1343279f4f0c94acf93ed80c4b66e8dd7e6b1bd6ca2bffe31e0a02d3` |
| 13 | `theorem` | [degrees_prod_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degrees-prod-le.md) | 134 | `result-track:e2e125e29dae3d037eef21f0260ed5c4c213421cf70ba5fc6ae5a89ec8469156` |
| 14 | `theorem` | [degrees_pow_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degrees-pow-le.md) | 138 | `result-track:43af8f513648a7b71895d815bf78069ca77a7828ee7e7c15016e6cc7a871bc5e` |
| 15 | `theorem` | [mem_degrees](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/mem-degrees.md) | 147 | `result-track:890d72a7a0abc86377423dea7f123cd09f07a6ab1bc5799ac8823d5212f8d6ce` |
| 16 | `theorem` | [le_degrees_add_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/le-degrees-add-left.md) | 152 | `result-track:842498f565c2bf820141fd963dd22211da4ac520d1e2f6d9d59771f6a11ed8ff` |
| 17 | `lemma` | [le_degrees_add_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/le-degrees-add-right.md) | 171 | `result-track:51c06fe561cf0500655d21f207b9d4b0cddcd44be60eb96515ad79590b1d7068` |
| 18 | `theorem` | [degrees_add_of_disjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degrees-add-of-disjoint.md) | 174 | `result-track:99051472d904bbc97c486d81ea9dc423da52434f0efd32b2f6478033f633746d` |
| 19 | `lemma` | [degrees_map_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degrees-map-le.md) | 178 | `result-track:9a6fb1ca749b74fb3d3c06501f50e17a952a14ee2ae7c4d2e43a6fc01a576c0d` |
| 20 | `theorem` | [degrees_rename](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degrees-rename.md) | 183 | `result-track:f4bf590275041bf9e42f099e261608d52cb120b6dd119b4e76641577ede20cc5` |
| 21 | `theorem` | [degrees_map_of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degrees-map-of-injective.md) | 199 | `result-track:c7ff515e684c13b2a64e4dca3d1fa75c10f6fecaa5062bd733584a329685e128` |
| 22 | `theorem` | [degrees_rename_of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degrees-rename-of-injective.md) | 203 | `result-track:1b645a2f500e30ca69fe105656d6de6af74768aa7339bcf1855ffd8ebce67e8e` |
| 23 | `def` | [degreeOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degreeof.md) | 219 | `declaration-track:ed314ecfd2531a5e3f1debe9d77e4b73d1b0052ec4151d0146342b703bd2084c` |
| 24 | `theorem` | [degreeOf_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degreeof-def.md) | 223 | `result-track:79a075eac505ce72b443bec2a126b6416154a07e39c8cdf1b0a06122f0afa669` |
| 25 | `theorem` | [degreeOf_eq_sup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degreeof-eq-sup.md) | 226 | `result-track:33c230c4b200d39568955ef023bad3f9a868904296b7947bb5f6a787b580a76d` |
| 26 | `theorem` | [degreeOf_lt_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degreeof-lt-iff.md) | 234 | `result-track:a9b78e44034033ca4a98bc295e9e0bd32374a351315bdd08969fc94b31f02479` |
| 27 | `lemma` | [degreeOf_le_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degreeof-le-iff.md) | 238 | `result-track:22ecc0ab032976c48afeb371d6713949bf81a6ede33d113f4571ecc0cac12a90` |
| 28 | `theorem` | [degreeOf_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degreeof-zero.md) | 243 | `result-track:4723643cb52d2717c1c5c5beb0e20a4704399144e71d360a494d3e76dc103d66` |
| 29 | `theorem` | [degreeOf_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degreeof-c.md) | 247 | `result-track:3c80f44bb4a44dbb6c29036ffd55def28a2a1e8ea853034bf74250d910430b2a` |
| 30 | `theorem` | [degreeOf_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degreeof-x.md) | 250 | `result-track:a933e118bd399abc306bb0a6284b40223cb07e2e1b2dc12666a15535bcce5582` |
| 31 | `theorem` | [degreeOf_add_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degreeof-add-le.md) | 257 | `result-track:77dbb8c2389f87b4f367820e71d9d5cfd2f2470ef13d6c5f57ff6136e1efd8cc` |
| 32 | `theorem` | [monomial_le_degreeOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/monomial-le-degreeof.md) | 261 | `result-track:630ab197cae654d3ef5fd502fdaf347f7dadbb2b7d4a4ba6a417feb58bf1b362` |
| 33 | `lemma` | [degreeOf_monomial_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degreeof-monomial-eq.md) | 266 | `result-track:a3e7e18edc0569881b57e38f4655631fa4841ca40c407b9ecc5f7eb1a74ada78` |
| 34 | `theorem` | [degreeOf_mul_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degreeof-mul-le.md) | 271 | `result-track:03f9c63801e50e488f79c611f56856efc1eefa9a94e2ac398d5534064a8646e6` |
| 35 | `theorem` | [degreeOf_sum_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degreeof-sum-le.md) | 278 | `result-track:1a160803c059f640e9da269ffd39481a70136500f5ef70333c73a3b38b1a31d0` |
| 36 | `theorem` | [degreeOf_prod_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degreeof-prod-le.md) | 284 | `result-track:1f29459514f79225f40b48b288308664438c5716420f25ebdf9ae6047b73cd30` |
| 37 | `theorem` | [degreeOf_pow_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degreeof-pow-le.md) | 291 | `result-track:331c256d4b6799f6f708062644e79b4f8ba206294489bb143a4a0b8db145b1a5` |
| 38 | `theorem` | [degreeOf_mul_X_of_ne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degreeof-mul-x-of-ne.md) | 295 | `result-track:ac088712474d422623da4067035ba80f54abda7f39c72498e0a41a76b8c8c244` |
| 39 | `theorem` | [degreeOf_mul_X_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degreeof-mul-x-self.md) | 306 | `result-track:a62dcc522e279590f34d1d40c8261dca6539c533e9c654663c9c486a7f1b546b` |
| 40 | `theorem` | [degreeOf_mul_X_eq_degreeOf_add_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degreeof-mul-x-eq-degreeof-add-one-iff.md) | 317 | `result-track:415b1e6ea760b0e873f0e78034b79932b803619c5b125252a46deed80641477d` |
| 41 | `theorem` | [degreeOf_C_mul_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degreeof-c-mul-le.md) | 330 | `result-track:a92078bd8e95119147d2afdb7b7458bacb6b5a53349a0ee6d5e73bfec7a5ae95` |
| 42 | `theorem` | [degreeOf_mul_C_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degreeof-mul-c-le.md) | 336 | `result-track:7676065e2f29a2ff6f7907cc371c86cfd35253588eeac1bb8ee454c1793ab8ab` |
| 43 | `theorem` | [degreeOf_rename_of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degreeof-rename-of-injective.md) | 342 | `result-track:c4ce42ecaa622d1a35e71b8746c6a4dae7a481798260728bc9a312c2c75accef` |
| 44 | `def` | [totalDegree](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/totaldegree.md) | 355 | `declaration-track:779df89b3e4b75aad42b8d78d237f598af0674b2aa0d0ae82b0ab81ab21fcee1` |
| 45 | `theorem` | [totalDegree_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/totaldegree-eq.md) | 358 | `result-track:efc4bf58472c8bf1567f5643cffa3a864a2398b3978b1ee6f6849f62ca0b8e01` |
| 46 | `theorem` | [le_totalDegree](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/le-totaldegree.md) | 364 | `result-track:1f940a081a8b3b30b35482036be2816556caf2b34db07dffe3aef94888ebb8d2` |
| 47 | `theorem` | [totalDegree_le_degrees_card](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/totaldegree-le-degrees-card.md) | 368 | `result-track:2e4aae2535cd261038175a17a52e6116ffe4a6a82df1ac413fef57d1dc08b313` |
| 48 | `theorem` | [totalDegree_le_of_support_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/totaldegree-le-of-support-subset.md) | 374 | `result-track:6ab305ab8197488408bb9dda540ffa1fe8f07e049573bfa53802e5d7b1964bca` |
| 49 | `theorem` | [totalDegree_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/totaldegree-c.md) | 379 | `result-track:0f790d6d1e969e2dfd189c6583e1c0435fecf059fc50b132dfd88c11173e514e` |
| 50 | `theorem` | [totalDegree_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/totaldegree-zero.md) | 383 | `result-track:d534f06d26cb4ff31880c1799b4fd3308685a92ea1d219e4374ed791da180890` |
| 51 | `theorem` | [totalDegree_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/totaldegree-one.md) | 387 | `result-track:ca8bd6736c1a32e79613737a83be15ef364cec0ce9247550ec5b073ecceb2959` |
| 52 | `theorem` | [totalDegree_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/totaldegree-x.md) | 391 | `result-track:00c633310fcf4c464bc13785bba69b2df8125ff4d66be6ea069206b8648099e2` |
| 53 | `theorem` | [totalDegree_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/totaldegree-add.md) | 396 | `result-track:517dd7604fb42a323ad3e85255f34f12e9beb8bad32d0f1faa8a504a948a9cc4` |
| 54 | `theorem` | [totalDegree_add_eq_left_of_totalDegree_lt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/totaldegree-add-eq-left-of-totaldegree-lt.md) | 400 | `result-track:c6aac7fda8d8769313845d20fa9633e4a1bdc3d54739ffda860ffe0774e4f77f` |
| 55 | `theorem` | [totalDegree_add_eq_right_of_totalDegree_lt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/totaldegree-add-eq-right-of-totaldegree-lt.md) | 422 | `result-track:ca015039671c0bb7df2ecb331a24b69caa1a43b175c2696d1c0a995d222c36a2` |
| 56 | `theorem` | [totalDegree_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/totaldegree-mul.md) | 426 | `result-track:5550a1cb4041c2416ee81710185677046f1099da98a552d59a211b81ca457c84` |
| 57 | `theorem` | [totalDegree_smul_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/totaldegree-smul-le.md) | 430 | `result-track:46beb5ed9514ace8156db553512c34c5b1a8e2f6f7699f01aa16a54a4d3ce1e2` |
| 58 | `theorem` | [totalDegree_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/totaldegree-pow.md) | 434 | `result-track:66201b0bec6efae7e0b1dcfd205654ca041e2dfc816222554941a27453097142` |
| 59 | `theorem` | [totalDegree_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/totaldegree-monomial.md) | 441 | `result-track:f7477bf009444689db260ffc57dcfad1d7fcaa84dce211209095ef50aeaabc94` |
| 60 | `theorem` | [totalDegree_monomial_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/totaldegree-monomial-le.md) | 445 | `result-track:27c7158a6f63f7bffb3e1c8dd69f9a5ab131864a460d6ec6478d91453d4da96f` |
| 61 | `theorem` | [totalDegree_X_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/totaldegree-x-pow.md) | 453 | `result-track:5581c6f1672ca3aecd45340c23de0d096264cb50d40729d146d3de10244bff78` |
| 62 | `theorem` | [totalDegree_list_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/totaldegree-list-prod.md) | 456 | `result-track:eec0dcc2f531539fd96eeb46848a497fe245f01b4931ccfffe96ea329d3a4353` |
| 63 | `theorem` | [totalDegree_multiset_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/totaldegree-multiset-prod.md) | 463 | `result-track:422474d7f6441b1ff4a7ef8b4543514db8bfcf73ffc808baac7f86b450991ca5` |
| 64 | `theorem` | [totalDegree_finset_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/totaldegree-finset-prod.md) | 469 | `result-track:af3fdb94a7308408ef9dbfc282ca2e85d734e5761aae0a597e3af36fea4208aa` |
| 65 | `theorem` | [totalDegree_finset_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/totaldegree-finset-sum.md) | 474 | `result-track:5b618180aad11f478f5a133b4a3abe4f34bc28a583fd7771a720db3fa27f2a02` |
| 66 | `lemma` | [totalDegree_finsetSum_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/totaldegree-finsetsum-le.md) | 481 | `result-track:d12baf2c617d037fa7842d80f284314fb5e3efadc9575fe0202ea2a9959c4af0` |
| 67 | `lemma` | [degreeOf_le_totalDegree](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degreeof-le-totaldegree.md) | 485 | `result-track:669e4131d9be78d5a2c2a2232504af803f1c2236c821396bc8c815cf4e4b19a2` |
| 68 | `theorem` | [exists_degree_lt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/exists-degree-lt.md) | 490 | `result-track:91609e878373a0786dc948e158f413a3ec490d2433ba3c26a829cc0d1834d9ea` |
| 69 | `theorem` | [coeff_eq_zero_of_totalDegree_lt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/coeff-eq-zero-of-totaldegree-lt.md) | 503 | `result-track:ea2c36977a32a4d7e021b02007d5f7b2415b315971d650992214cdc5382b77dd` |
| 70 | `theorem` | [totalDegree_eq_zero_iff_eq_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/totaldegree-eq-zero-iff-eq-c.md) | 513 | `result-track:d4289e1adf7bb3d7254dbdef6129fba4b3d5260a9b4e992cb6ad92416277eec5` |
| 71 | `theorem` | [totalDegree_rename_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/totaldegree-rename-le.md) | 522 | `result-track:a0a5d60874e04f9755b98ead0fa2bbcbe07b380a1b006949962c23086c9cbe3e` |
| 72 | `lemma` | [totalDegree_renameEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/totaldegree-renameequiv.md) | 533 | `result-track:759faeb265da795b64cd537830e1e63a0735593e127cd5b1230a578b710d0676` |
| 73 | `def` | [degreesLE](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degreesle.md) | 544 | `declaration-track:44880e102de8703ca8eea251a8a8cebe1ef9fec37d18e6cb709d45375b57e8cd` |
| 74 | `lemma` | [mem_degreesLE](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/mem-degreesle.md) | 554 | `result-track:a719156f6e10976d8bf18aa0fa95bdbde5b0d512cb2472cd1ece8611198a1228` |
| 75 | `lemma` | [degreesLE_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degreesle-add.md) | 557 | `result-track:79b4b20392f6de4c526168015f91a4ba19404b5136aec6a69d29e149cfa7c785` |
| 76 | `lemma` | [degreesLE_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degreesle-zero.md) | 571 | `result-track:f56606f27c3c0918c25c8057f4b05929e047bec5001e57ba7bf7304d1cda1149` |
| 77 | `lemma` | [degreesLE_nsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreesNamespaced.lean/declarations/degreesle-nsmul.md) | 579 | `result-track:b8a38ca96e43a3338e434ddc35bee509a42fab8469b2381a7eee5ed2d5ece93b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3df068e541287793afed78ed2f6d993ae64cf0a388333f8067bdfbe1540135d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Degrees/Variantc2b440e3e35baaf7c4cdad8ad6c558b71c34b5ba77fc20959311b00e0acf5069.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Degrees/Variantc2b440e3e35baaf7c4cdad8ad6c558b71c34b5ba77fc20959311b00e0acf5069.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
