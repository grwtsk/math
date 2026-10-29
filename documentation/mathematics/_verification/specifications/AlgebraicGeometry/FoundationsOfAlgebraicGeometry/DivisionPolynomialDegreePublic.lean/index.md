# Verification target: Division Polynomial Degree Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ddec9bf5baf69d4c2fba16ce28fa69283ca83f9",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Degree/Variant011128eefca0f00f777fbf22bbc9638347f8c302145a631ff8ef8c04378bdc57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ddec9bf5baf69d4c2fba16ce28fa69283ca83f9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Degree/Variant011128eefca0f00f777fbf22bbc9638347f8c302145a631ff8ef8c04378bdc57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Degree/Variant011128eefca0f00f777fbf22bbc9638347f8c302145a631ff8ef8c04378bdc57.lean.json)

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
| 1 | `lemma` | [natDegree_Ψ₂Sq_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/natdegree-sq-le.md) | 65 | `result-track:d982b83ab3493c31225c211b2095f7731e2b258154d80bf154915445759c92a3` |
| 2 | `lemma` | [coeff_Ψ₂Sq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/coeff-sq-source-edition-2.md) | 70 | `result-track:bf78adad659a0b3948c4f674c583af2f935b01fa84e0d891582f6667c61eefc7` |
| 3 | `lemma` | [coeff_Ψ₂Sq_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/coeff-sq-ne-zero.md) | 74 | `result-track:f5e1914d802520aad2b80f6e84ebdcde871d73e32b10282cbecb52fa9b6c3d11` |
| 4 | `lemma` | [natDegree_Ψ₂Sq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/natdegree-sq-source-edition-2.md) | 78 | `result-track:71d27aafcc9d0a548e6dc07eb8e91c49162243b3c1fa45f489a26d03f5622518` |
| 5 | `lemma` | [natDegree_Ψ₂Sq_pos](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/natdegree-sq-pos.md) | 81 | `result-track:6bea762508cfcf060c676037a3c930cf44684887362f908051530e2f385b2744` |
| 6 | `lemma` | [leadingCoeff_Ψ₂Sq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/leadingcoeff-sq.md) | 85 | `result-track:73c1963c25fc4417bc4f5a0c12309f3696a48a3e9cc7aa37f6129cf48417d1f9` |
| 7 | `lemma` | [Ψ₂Sq_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/sq-ne-zero-source-edition-2.md) | 88 | `result-track:52490c9298313f713f8549f0d0b950ce5a19b5401046631f5d936b086a159d3b` |
| 8 | `lemma` | [natDegree_Ψ₃_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/natdegree-le.md) | 95 | `result-track:0cdbeb71a1acb7929399a111295e006f382a7c2748faeef50c5e9748b08fe3f3` |
| 9 | `lemma` | [coeff_Ψ₃](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/coeff-source-edition-2.md) | 100 | `result-track:bc311307a39897895fa6c0e801197ebd0a730f3782553a22b37af42988e2bbbd` |
| 10 | `lemma` | [coeff_Ψ₃_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/coeff-ne-zero-source-edition-2.md) | 104 | `result-track:f0761f8c5aadebbed27d80575b4701cfe5ea2ad44f9b11c67d8886e29c891e98` |
| 11 | `lemma` | [natDegree_Ψ₃](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/natdegree-source-edition-2.md) | 108 | `result-track:d4a512d784a0095fcac3e50f8b5fa039315bf08e758b420497b5daaef76dbb29` |
| 12 | `lemma` | [natDegree_Ψ₃_pos](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/natdegree-pos-source-edition-2.md) | 111 | `result-track:97adcabee7e6446310c4b1983b868ef13e73261cba3138677560104cbc6aed92` |
| 13 | `lemma` | [leadingCoeff_Ψ₃](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/leadingcoeff.md) | 115 | `result-track:18372b010dcdf0d428683120daee75cf853cc7976cfdc17e8f22c591b31b6ded` |
| 14 | `lemma` | [Ψ₃_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/ne-zero.md) | 118 | `result-track:cd3bbebfa6cc03740b3e13078fe72edc37b266c54a062920f43349f50c83b797` |
| 15 | `lemma` | [natDegree_preΨ₄_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/natdegree-pre-le-source-edition-3.md) | 125 | `result-track:e984fed613ffaa19de862996182e2285ce545990b85e0cd5d0df9547dd87254c` |
| 16 | `lemma` | [coeff_preΨ₄](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/coeff-pre-source-edition-3.md) | 130 | `result-track:f6531eb2d84e63f59350ce2fe0282dc92659edccbef896ffbce22217148a7659` |
| 17 | `lemma` | [coeff_preΨ₄_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/coeff-pre-ne-zero.md) | 134 | `result-track:871d264c74bfa241c45d62cce79b82d028d36a90f1b86e799ca8684000cc4143` |
| 18 | `lemma` | [natDegree_preΨ₄](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/natdegree-pre-source-edition-2.md) | 138 | `result-track:4a2b08197a2e39c34264473ab8836403111edbf5232037738f72676d1fdb5606` |
| 19 | `lemma` | [natDegree_preΨ₄_pos](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/natdegree-pre-pos-source-edition-2.md) | 141 | `result-track:70468f082c3c1effb8249aeadbeee9410aeffd2b512b9ca20486d49b45790723` |
| 20 | `lemma` | [leadingCoeff_preΨ₄](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/leadingcoeff-pre-source-edition-2.md) | 145 | `result-track:7e85e4a5f3ad1f9ed4e5e06be676a8a7d49cd355d531852fc83009c6e9a2bba2` |
| 21 | `lemma` | [preΨ₄_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/pre-ne-zero.md) | 148 | `result-track:16c9b1ba80937fef843cc9f7a1440cd563f273055f2f84ee06cebb841e52842e` |
| 22 | `def` | [expDegree](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/expdegree.md) | 155 | `declaration-track:6f24a255dfda3884e4720ff864f40b0398e0e19ded9a2020ad255c6b948a9941` |
| 23 | `lemma` | [expDegree_cast](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/expdegree-cast.md) | 158 | `result-track:25fd4d6ff1e712d89cb752cc5e0951fb47f76be475453ef5ef4cec2dc9d53e07` |
| 24 | `lemma` | [expDegree_rec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/expdegree-rec.md) | 170 | `result-track:aadbaa2520a64b893d48fe04c185c57c996dee10e6a592262261228a2d51692f` |
| 25 | `def` | [expCoeff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/expcoeff.md) | 183 | `declaration-track:d364af3a0713d962826f4de82b92050c7eedf01024739a392b64480610d09168` |
| 26 | `lemma` | [expCoeff_cast](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/expcoeff-cast.md) | 186 | `result-track:67e626aba35bf8f23e57ed7586a7be0499f740f28860d28ae4eb491d007bbaf0` |
| 27 | `lemma` | [expCoeff_rec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/expcoeff-rec.md) | 189 | `result-track:088144ae6df3751d85a2e0d6d20c53e215f909476c91005fd808cc4f52156e81` |
| 28 | `lemma` | [natDegree_coeff_preΨ'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/natdegree-coeff-pre.md) | 200 | `result-track:a9da11c5517a33b3fa41ab1287537d3bafaf142c9521d26b9c44ca144915eec7` |
| 29 | `lemma` | [natDegree_preΨ'_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/natdegree-pre-le.md) | 234 | `result-track:9b9a17742ccf191b9a2109cebce51c9c67749937108ff6b6dd1123ad1486c309` |
| 30 | `lemma` | [coeff_preΨ'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/coeff-pre.md) | 238 | `result-track:439b85768e0a44ba0e2ee63d8d19bbbdacaec7534e5b192e55ff0f06bbaa40e6` |
| 31 | `lemma` | [coeff_preΨ'_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/coeff-pre-ne-zero-source-edition-3.md) | 243 | `result-track:d58aa3e9d24952117cf7b403f4033d2264a29526e770d5142c97d4ebb498c78c` |
| 32 | `lemma` | [natDegree_preΨ'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/natdegree-pre-source-edition-3.md) | 251 | `result-track:f0e7a33a5e22f763787506f295b26765f7b23eeb9709e92ff88f292fa35760f7` |
| 33 | `lemma` | [natDegree_preΨ'_pos](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/natdegree-pre-pos.md) | 255 | `result-track:4950e406a1f4c3aec9f4d2d24fed85472746a155b2a102667c9f5a672253bb7c` |
| 34 | `lemma` | [leadingCoeff_preΨ'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/leadingcoeff-pre-source-edition-3.md) | 260 | `result-track:bf559a1e97fbe9c2d550dd1f26123cc5632572a1d3b9e0b8b41598d1214b6d05` |
| 35 | `lemma` | [preΨ'_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/pre-ne-zero-source-edition-2.md) | 264 | `result-track:961f68e7b85ff1516c026779c09457b2cf81c3e6deff449bd523df69f7d92971` |
| 36 | `lemma` | [natDegree_preΨ_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/natdegree-pre-le-source-edition-2.md) | 273 | `result-track:d4f54f33b3743394e88413ed3468d748e69e36b73a999553345a54175620589a` |
| 37 | `lemma` | [coeff_preΨ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/coeff-pre-source-edition-2.md) | 280 | `result-track:c797c4759a549b69337e2a141563c9774b08235a52c90d5e0ce3869964d4d8f6` |
| 38 | `lemma` | [coeff_preΨ_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/coeff-pre-ne-zero-source-edition-2.md) | 290 | `result-track:d2287d9ff8a6cda8ac7cc10d1e52cf4f7ff5b531419c621d223831f2b90b0651` |
| 39 | `lemma` | [natDegree_preΨ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/natdegree-pre.md) | 299 | `result-track:031d256e3e6c4d9a8dfeea4dfd6efa217d3240dcd3c988b4457e591622e87a18` |
| 40 | `lemma` | [natDegree_preΨ_pos](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/natdegree-pre-pos-source-edition-3.md) | 303 | `result-track:ee4019a8513b94d6523239ffe9c7bd9c65c3b2d287b238231a310d1aa2ea84de` |
| 41 | `lemma` | [leadingCoeff_preΨ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/leadingcoeff-pre.md) | 311 | `result-track:762e7aa60b36e148a881cc98ba2afbe34cd8a1247f04b0c33f9dd7baa25cc4d6` |
| 42 | `lemma` | [preΨ_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/pre-ne-zero-source-edition-3.md) | 315 | `result-track:d89f81c25833d47f791017cc171ed4e8e329ed534b00ca023b951d3274b46117` |
| 43 | `lemma` | [natDegree_coeff_ΨSq_ofNat](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/natdegree-coeff-sq-ofnat.md) | 325 | `result-track:51757ca80afb45df4bdb9bd8e60ff09e004e56546b020a3110dd40acc83d77b6` |
| 44 | `lemma` | [natDegree_ΨSq_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/natdegree-sq-le-source-edition-2.md) | 346 | `result-track:da5f5742c449bb081abb826abe131188755e94f28efd3ed355e08a506cfa7959` |
| 45 | `lemma` | [coeff_ΨSq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/coeff-sq.md) | 352 | `result-track:7ca79aebd7c04b53ad8c06fcd5c6d5815ba09d0087c424133a50cfbc198ecfc4` |
| 46 | `lemma` | [coeff_ΨSq_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/coeff-sq-ne-zero-source-edition-2.md) | 357 | `result-track:f96933e20f648c74b67a31a700e77ad2a308beb04eabc6077bdd469592d2279e` |
| 47 | `lemma` | [natDegree_ΨSq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/natdegree-sq.md) | 362 | `result-track:0da059c913f3b76af461fd6f780b39354c65b7c40b5d0056c73e07274d585d1e` |
| 48 | `lemma` | [natDegree_ΨSq_pos](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/natdegree-sq-pos-source-edition-2.md) | 366 | `result-track:7a19826df3004cc8cfab11f2c99b05481a8214764d3427be7b92c7e41b83b4f0` |
| 49 | `lemma` | [leadingCoeff_ΨSq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/leadingcoeff-sq-source-edition-2.md) | 371 | `result-track:aa8d4211ae60ce4cda015a34e839a37b401ef596cb39861d41027de28c602094` |
| 50 | `lemma` | [ΨSq_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/sq-ne-zero.md) | 375 | `result-track:2445a7e1903f9f1fcbcc7df941b730b9c0f742971b1401a672b9de16babab1a8` |
| 51 | `lemma` | [natDegree_coeff_Φ_ofNat](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/natdegree-coeff-ofnat.md) | 389 | `result-track:764fb343ca33334e7b888ddc0b422984d2b7264092d81e5a78dfd37aeaa85b01` |
| 52 | `lemma` | [natDegree_Φ_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/natdegree-le-source-edition-2.md) | 422 | `result-track:349e3d1b51841e314e8effbe1155d2cf804f8726455589def3858b8f1816eca3` |
| 53 | `lemma` | [coeff_Φ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/coeff.md) | 428 | `result-track:8a52872b35917927fda7ad7fe133763d69b52fb5b95e2c377732a7ae089c2796` |
| 54 | `lemma` | [coeff_Φ_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/coeff-ne-zero.md) | 433 | `result-track:8d654bd55182104d93c3baaacef78efcbaac2538d3a1dad2d7456b9b37ff790c` |
| 55 | `lemma` | [natDegree_Φ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/natdegree.md) | 437 | `result-track:a6a851e1d0b46deb7a5c0bafa9dafb437f0ef4a9b36c5770d1501328a0b1ce37` |
| 56 | `lemma` | [natDegree_Φ_pos](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/natdegree-pos.md) | 440 | `result-track:525cd173ac3780c3250190d08475c523d41b6e8c8fee9cf3a15bfa5c01ed84fa` |
| 57 | `lemma` | [leadingCoeff_Φ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/leadingcoeff-source-edition-2.md) | 444 | `result-track:206c6d74edff5d4cad88ec8c01df68845159b09831dcf226b2645fdc8eeadbae` |
| 58 | `lemma` | [Φ_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreePublic.lean/declarations/ne-zero-source-edition-2.md) | 447 | `result-track:cdebe7d20acfebf3c7edce01de7680858ef0dd14260f3e6276ea53eadd1cf333` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=386d947bdb3593847fb4ef8318cbc9a07cf2e3911ee5a65611391049f227244a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Degree/Variant011128eefca0f00f777fbf22bbc9638347f8c302145a631ff8ef8c04378bdc57.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Degree/Variant011128eefca0f00f777fbf22bbc9638347f8c302145a631ff8ef8c04378bdc57.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
