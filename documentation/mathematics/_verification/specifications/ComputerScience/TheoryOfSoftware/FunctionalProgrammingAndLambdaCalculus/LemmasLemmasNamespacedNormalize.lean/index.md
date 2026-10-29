# Verification target: Lemmas Lemmas Namespaced Normalize

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69d6e26d7a99e3732d5f9564681a76dc93f23fb5",
  "lexical_observation_count": 84,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variante52394838f6104716ea2593eacc7dc18b16d7de13fa80d90795cf3753577511c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69d6e26d7a99e3732d5f9564681a76dc93f23fb5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variante52394838f6104716ea2593eacc7dc18b16d7de13fa80d90795cf3753577511c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variante52394838f6104716ea2593eacc7dc18b16d7de13fa80d90795cf3753577511c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Int.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Data.Rat.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_num](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/zero-num.md) | 16 | `result-track:984160c85293c5b560e474a4532f5d0ce4c7fd5a123d90b1857ef388d0ef7ca9` |
| 2 | `theorem` | [zero_den](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/zero-den.md) | 17 | `result-track:ff42620b1eeb112ec4b8c80102bee721972be13c8de191a7c03119acd62fa6fc` |
| 3 | `theorem` | [one_num](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/one-num.md) | 18 | `result-track:bc1e2c44994d3e275112b0f2a2d7d2f6f9aa83b5bcff0454d162990ed3db8f97` |
| 4 | `theorem` | [one_den](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/one-den.md) | 19 | `result-track:44bbafd7e88814e023fc7b4314a76eed3a3fd7ca4a6bbb848161a53031911ecf` |
| 5 | `theorem` | [maybeNormalize_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/maybenormalize-eq.md) | 21 | `result-track:88d51096a3d66fa5e8bab7c6d952f036a083ce84df2c7c9bb59987bfba16a6e7` |
| 6 | `theorem` | [normalize.reduced'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/normalize-reduced.md) | 28 | `result-track:68a4042cdb75ae022666de395674d9831962947fd4c6d6cf67119d62b45324b2` |
| 7 | `theorem` | [normalize_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/normalize-eq.md) | 33 | `result-track:fe58d14fd3cadc1ea5bf1245983a96830f13dadb62e671d8972e1216734937a0` |
| 8 | `theorem` | [normalize_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/normalize-zero.md) | 41 | `result-track:b2a9c3c25b810817c7520885c9cc39af22b7fac5336af3b36cfca28b35708a44` |
| 9 | `theorem` | [mk_eq_normalize](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/mk-eq-normalize.md) | 44 | `result-track:22599b6dc2154b34ac8fda0581f9d1089e6232913c6ac56bd785dd161a0a5638` |
| 10 | `theorem` | [normalize_self](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/normalize-self.md) | 47 | `result-track:107cfc14390557e9d72f0e9c2fa0a61b094ccee26e49a8c27edadcf49655609b` |
| 11 | `theorem` | [normalize_mul_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/normalize-mul-left.md) | 49 | `result-track:dd572776583faf274c93b40cce25d304fc45c804353bae5fdea6978c4a97781a` |
| 12 | `theorem` | [normalize_mul_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/normalize-mul-right.md) | 55 | `result-track:e032a047ce65ea08256fb4c8f8b5210c09565ebd845bdae2cb2a2a4b0a514884` |
| 13 | `theorem` | [normalize_eq_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/normalize-eq-iff.md) | 59 | `result-track:732eb3631dcb2ed12fd243b644b6d06dd2c1f6002420bc3b49c961e7be30ad7e` |
| 14 | `theorem` | [maybeNormalize_eq_normalize](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/maybenormalize-eq-normalize.md) | 73 | `result-track:19fe032a979fb65abed57ea40d651253fdacb97b14ab4e79e96e46acb8983ffc` |
| 15 | `theorem` | [normalize_eq_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/normalize-eq-zero.md) | 81 | `result-track:9f9c7dcd97d6ad038ddb2c7deb0c2f252c451b34f73ae8d7ada343ae8a9df5dc` |
| 16 | `theorem` | [normalize_num_den'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/normalize-num-den-source-edition-2.md) | 85 | `result-track:7404491135095869338b5eb599b100f40d79419272a8f0b84b16f42e3c70fa23` |
| 17 | `theorem` | [normalize_num_den](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/normalize-num-den.md) | 91 | `result-track:42011d0e7bd1ca4663b57de858bf330b6fe2f8ed47093fb59f3181ced56b3c91` |
| 18 | `theorem` | [normalize_eq_mkRat](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/normalize-eq-mkrat.md) | 95 | `result-track:2b948e93fc57d276058c1ca3ef831db46e27cfe26d7015491f6fab3ca25bd3f6` |
| 19 | `theorem` | [mkRat_num_den](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/mkrat-num-den.md) | 98 | `result-track:4ec747b6775483de70f37775919c6f4909af6b2e22f8b5032a2a1680a9438f87` |
| 20 | `theorem` | [mkRat_def](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/mkrat-def.md) | 102 | `result-track:7e5fa9aab8b71a23db69a106b903c99f7b5f16abdf591f2ef6c522219806321a` |
| 21 | `theorem` | [mkRat_self](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/mkrat-self.md) | 104 | `result-track:4165e8c0a641cf800bafafd05c31009c1c487efe478d99d491fb5f8322ce8acf` |
| 22 | `theorem` | [mk_eq_mkRat](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/mk-eq-mkrat.md) | 107 | `result-track:4fab1b82f5932a384442dc8671cfd41a7e8015947078b4f8473db8057f5a6a17` |
| 23 | `theorem` | [zero_mkRat](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/zero-mkrat.md) | 110 | `result-track:915a6ad690f6c9184b724c3eedf7c5d307424aa8382e5166191a3bf4c2c186e9` |
| 24 | `theorem` | [mkRat_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/mkrat-zero.md) | 112 | `result-track:dc5aee51f8060db9b8acbc3e2f8133d8068e6692c386b33865eaea80ddeb0110` |
| 25 | `theorem` | [mkRat_eq_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/mkrat-eq-zero.md) | 114 | `result-track:3e69f6b8c21fbb4e3b0b636f32efc8850529320a1b867814722edd1b9f273178` |
| 26 | `theorem` | [mkRat_ne_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/mkrat-ne-zero.md) | 116 | `result-track:d0a0845f177cb101d4f107bc9f5cc865951a6f2c39985ced67f5c9997f088ead` |
| 27 | `theorem` | [mkRat_mul_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/mkrat-mul-left.md) | 118 | `result-track:ea9621854ba5ba754156201394c1e540ed8715a2e9ade832314367a1bd5fedcd` |
| 28 | `theorem` | [mkRat_mul_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/mkrat-mul-right.md) | 122 | `result-track:ce0d4df4e620477db94322b521c10ab23ab7a59a3fd76c5e2ecceca7c229ab27` |
| 29 | `theorem` | [mkRat_eq_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/mkrat-eq-iff.md) | 125 | `result-track:7f69e38b01968dd273ff8b3204bd131a6a1498f6dc79f2229cb437a0a15ab813` |
| 30 | `theorem` | [divInt_ofNat](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/divint-ofnat.md) | 129 | `result-track:b4acc565d3f919f5670b1fa82d01b7ebab5ddcd553af619ba9b65400289a8688` |
| 31 | `theorem` | [mk_eq_divInt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/mk-eq-divint.md) | 132 | `result-track:dc604e983a5d3c259768b632b5fac44abff0139d6d8cdf8a0dd2f312fbf3248b` |
| 32 | `theorem` | [divInt_self](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/divint-self.md) | 135 | `result-track:cfea386a74f6ce02b4e52f4aed10b14e479ff7ffd851439ab4bd084de2fb9f58` |
| 33 | `theorem` | [zero_divInt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/zero-divint.md) | 137 | `result-track:db29804e82f854d5ffd14d8864aecdce1bd1e967ed3a8e238c3d086713036340` |
| 34 | `theorem` | [divInt_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/divint-zero.md) | 139 | `result-track:266994ef1eef43ecc9f62520c608a491a98bd1039cff8ed4734aa05e03a23818` |
| 35 | `theorem` | [neg_divInt_neg](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/neg-divint-neg.md) | 141 | `result-track:e4611eeadee0ce8288cb9cdfd3d43d17c42730b2641cc83039377109daf38a3a` |
| 36 | `theorem` | [divInt_neg'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/divint-neg.md) | 147 | `result-track:3edcf007a452729b86783b1d844933a8028996f80c4db4a6b8d70bc97f70abd5` |
| 37 | `theorem` | [divInt_eq_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/divint-eq-iff.md) | 149 | `result-track:7d2687d7f8f1fbd75b11746150246846b214b7eab2661b72919fb40fb0d6f4a8` |
| 38 | `theorem` | [divInt_mul_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/divint-mul-left.md) | 156 | `result-track:e7c9c73c9235eb02d67aa2d0a1a36f80893bdf295c7a68d19eb67c2693bcd44d` |
| 39 | `theorem` | [divInt_mul_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/divint-mul-right.md) | 160 | `result-track:75ff28fa21c0ed7c1a7ab2497368f92a67021e68f3a31c88296a4b2fdf57b535` |
| 40 | `theorem` | [divInt_num_den](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/divint-num-den.md) | 163 | `result-track:ef246da6d77e0d960c400c000ab2a04b78a9865f46f0ada3cb91c2b43f960329` |
| 41 | `theorem` | [ofInt_ofNat](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/ofint-ofnat.md) | 173 | `result-track:9230de20b606f59a72995b1a63582767efde9ee1e13e9f94fa15efcd5bb55c5b` |
| 42 | `theorem` | [ofInt_num](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/ofint-num.md) | 175 | `result-track:d0b96890910ede4f7019fa6aad6248e7872710bddfb67ba51994a5994d5230ad` |
| 43 | `theorem` | [ofInt_den](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/ofint-den.md) | 176 | `result-track:260cddd448de91c99dc54ab4a1ac1c64ce6ff72bb1f7c4e496f4ac6ccf85e569` |
| 44 | `theorem` | [ofNat_num](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/ofnat-num.md) | 178 | `result-track:0c53b9a449f008bc4d2fa1646364245c88f3dd075f1ebd19f7dde06a3b3acfad` |
| 45 | `theorem` | [ofNat_den](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/ofnat-den.md) | 179 | `result-track:d9441784f91b40c4880f67eb446a7e87301041a4c3aaec34a339b1319f7b4ece` |
| 46 | `theorem` | [add_def](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/add-def.md) | 181 | `result-track:90e7a340609bd20c01f386f82b2fd327a2fd7312b30f51d63bf21d521a0122f8` |
| 47 | `theorem` | [add_def'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/add-def-source-edition-2.md) | 196 | `result-track:b99a5799ca343cb3d9b557dd9a1a068aac3628b8865191c272a567e513792326` |
| 48 | `theorem` | [normalize_add_normalize](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/normalize-add-normalize.md) | 199 | `result-track:fd748d5b13ae0f60529247bc74d03987441f1f76fc99fabb3ef7cfa5d15532b7` |
| 49 | `theorem` | [mkRat_add_mkRat](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/mkrat-add-mkrat.md) | 208 | `result-track:2f31a00d96aee03200377f9eed11df449a1375db93e901104f0e731ecfd19f62` |
| 50 | `theorem` | [divInt_add_divInt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/divint-add-divint.md) | 212 | `result-track:51608257f9040c2787c54953bd8cd7071ea37b86d3881158910267d0a668ae9c` |
| 51 | `theorem` | [neg_num](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/neg-num.md) | 219 | `result-track:7c634ceb0f2a7e1d2a17ff4d64f8575bb6437f1d978779dbdcaf955131f3748a` |
| 52 | `theorem` | [neg_den](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/neg-den.md) | 220 | `result-track:6e4ddee7a2e704d110843a8fff6a11440a37116d4d5c1a5ddc438a4b35b0268b` |
| 53 | `theorem` | [neg_normalize](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/neg-normalize.md) | 222 | `result-track:49253a512fbeb7ce558704c5282b960056fa0b2f9913bc09988dece5e49aa8f0` |
| 54 | `theorem` | [neg_mkRat](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/neg-mkrat.md) | 225 | `result-track:344c20ec943800f327fa4a55a21772759b9427b10692d8f704df374b465ac05d` |
| 55 | `theorem` | [neg_divInt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/neg-divint.md) | 228 | `result-track:4db080f6f38d63fb8bf0b848861c2a2902133ae9f371fc8c105f3c0d260e028b` |
| 56 | `theorem` | [sub_def](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/sub-def.md) | 231 | `result-track:4583239d21c0a18b58a6368ecffe90914058a8619264ad0e7f8376688c9aa7bb` |
| 57 | `theorem` | [sub_def'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/sub-def-source-edition-2.md) | 246 | `result-track:b7389993762d328ad305585bfff205ec6bcb84fc33bfaa38c51bc9a3e1583fc2` |
| 58 | `theorem` | [sub_eq_add_neg](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/sub-eq-add-neg.md) | 249 | `result-track:57042f6bd9cb5b2718c2a1e4e89cfebbd92c3c939c4891889baec571bb98a5e3` |
| 59 | `theorem` | [divInt_sub_divInt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/divint-sub-divint.md) | 252 | `result-track:eaaf77950adfc8f47060d2b6837ec108082b15cad7719783eb577fa09d203831` |
| 60 | `theorem` | [mul_def](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/mul-def.md) | 257 | `result-track:7438a673d8f882c5a42bc2848c02717f5e887a15c164f76f54c488d2ce064430` |
| 61 | `theorem` | [mul_comm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/mul-comm.md) | 270 | `result-track:d79999e3e395751fb686adeb4bf042a9325733897e833c7e6caeb7bac11c1f72` |
| 62 | `theorem` | [zero_mul](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/zero-mul.md) | 273 | `result-track:61916b82d19cfde9baeecb851c901ecd27e7e5a1c263537abb2ebd24d7ac51fb` |
| 63 | `theorem` | [mul_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/mul-zero.md) | 274 | `result-track:1ca55a5435001fbe2f71e7b6d31dc2e492fff914c52d721f79a113041e5dfbb2` |
| 64 | `theorem` | [one_mul](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/one-mul.md) | 275 | `result-track:a9c7fd3f7de664ca0a61417ff6e3e3cebb41f33b4c9f1622900921e3fa9202dd` |
| 65 | `theorem` | [mul_one](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/mul-one.md) | 276 | `result-track:7425786a386f2e9458b59ba80358c176323d1d7e45380fe7a442fc1b8a012111` |
| 66 | `theorem` | [normalize_mul_normalize](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/normalize-mul-normalize.md) | 278 | `result-track:cd13fd16c31d0ffc4e89fdee50c90af357988a3676f5272549bcff4d87c1ae5a` |
| 67 | `theorem` | [mkRat_mul_mkRat](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/mkrat-mul-mkrat.md) | 287 | `result-track:c34fb3f572227c293edabbe397ac15ecdc8dc675abf85beaa4340905f7d63973` |
| 68 | `theorem` | [divInt_mul_divInt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/divint-mul-divint.md) | 292 | `result-track:da11bdec74976d4e05702a0e6a6c106ff55c57996e060d3efe81eb59d8020f3f` |
| 69 | `theorem` | [inv_def](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/inv-def.md) | 299 | `result-track:6262620f615cd5aa99677a0327031a3238eb9c23c8d3964ee3348fd19502a377` |
| 70 | `theorem` | [inv_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/inv-zero.md) | 309 | `result-track:b189313544e811c06c30ccf64c1a8a8937a222c837bb6a49f3d2868173e8abab` |
| 71 | `theorem` | [inv_divInt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/inv-divint.md) | 311 | `result-track:9dba2adbbaa3768aafefc89bd8fcdbcc86ff4eef6a25710d3735dd2146d6d517` |
| 72 | `theorem` | [div_def](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/div-def.md) | 316 | `result-track:b28bc07921a37d491e6f8cf6c91279da37d5d3f853c9f39813f6c678cdd05174` |
| 73 | `theorem` | [ofScientific_true_def](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/ofscientific-true-def.md) | 318 | `result-track:90c327730482a2651477b0641a268c2d844fec5426ffe76f2fafb57a6d167693` |
| 74 | `theorem` | [ofScientific_false_def](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/ofscientific-false-def.md) | 321 | `result-track:9aab0b704f62a21fad86788001b71b8f5a8adafdececc174ba448fe97af02179` |
| 75 | `theorem` | [ofScientific_def](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/ofscientific-def.md) | 324 | `result-track:33e7773ca0b9810b1f3e0f34f32889f5aeb494935dde53782e67877641a7f659` |
| 76 | `theorem` | [intCast_den](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/intcast-den.md) | 328 | `result-track:8364cc3af59719022c4e6dac831a7abe1146f6bf11f73a784bd76f92b58eef90` |
| 77 | `theorem` | [intCast_num](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/intcast-num.md) | 330 | `result-track:33a2ab952c3999224d63fcdc3a18eb2f100b4ce39158d3c006cf55201c9c0a7a` |
| 78 | `theorem` | [intCast_inj](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/intcast-inj.md) | 337 | `result-track:801cc819e7f6f8d2eb73c2e24aaa826a8a5f817554399962d3a79ba2aa9e0b57` |
| 79 | `theorem` | [intCast_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/intcast-zero.md) | 342 | `result-track:faa70169a563b684dc05d2f7bb36fe675a69227945f9ec60c98119b22d320cda` |
| 80 | `theorem` | [intCast_one](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/intcast-one.md) | 344 | `result-track:e1473d2f8e696353fb15cfe65c4684379098c551eb70254f8d5bd47d949b1dde` |
| 81 | `theorem` | [intCast_add](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/intcast-add.md) | 346 | `result-track:2b69c44f5b52e67b10e6938daa7f2fa8aa2635a6852365f68ef0b28f944c5aeb` |
| 82 | `theorem` | [intCast_neg](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/intcast-neg.md) | 351 | `result-track:e13e5482608175fb34d5a7f682d2fe70d43650240923baa33e4364aebec68bef` |
| 83 | `theorem` | [intCast_sub](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/intcast-sub.md) | 354 | `result-track:d3ee59f2b59f01a4af7f182b1e46167d3489d9a19d763cd89cc75a0e44452080` |
| 84 | `theorem` | [intCast_mul](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedNormalize.lean/declarations/intcast-mul.md) | 359 | `result-track:5bf2e0bbbc7f87be36633912c4653a7b33ff1581aa6e29469a68149fc5b1a8d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=318bd032ac3518c0b6ada8973597ddb1f7c3bbac6055cca3334084c7fca23a4a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variante52394838f6104716ea2593eacc7dc18b16d7de13fa80d90795cf3753577511c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variante52394838f6104716ea2593eacc7dc18b16d7de13fa80d90795cf3753577511c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
