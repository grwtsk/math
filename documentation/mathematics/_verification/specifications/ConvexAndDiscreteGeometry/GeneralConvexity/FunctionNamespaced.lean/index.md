# Verification target: Function Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "710aeb7d655bc7e9675819cc21837e4de7c9ab09",
  "lexical_observation_count": 136,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Function/Variant0d7cdf6d44f21bb965c728d1b121c7588a3eed3ce8a2d0123502d50bf50f9724.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `710aeb7d655bc7e9675819cc21837e4de7c9ab09`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Function/Variant0d7cdf6d44f21bb965c728d1b121c7588a3eed3ce8a2d0123502d50bf50f9724.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Function/Variant0d7cdf6d44f21bb965c728d1b121c7588a3eed3ce8a2d0123502d50bf50f9724.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Extr` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ConvexOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon.md) | 58 | `declaration-track:fac91696afe5a5c4052a7ba9367cac0d0059159f928614332317fc52b876172f` |
| 2 | `def` | [ConcaveOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon.md) | 63 | `declaration-track:d8ef22bdca1d3131da7897898ef0666d688235d97f996dd617ee0d20b0e1d6a6` |
| 3 | `def` | [StrictConvexOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconvexon.md) | 68 | `declaration-track:fe8fe2cd95cd1dfe8c3c41c6c5a8ce29bcd964e1efcb7c3054d21a732bba022a` |
| 4 | `def` | [StrictConcaveOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconcaveon.md) | 73 | `declaration-track:92846f85b2bbdab02d0f47aba17ddabc23d0c365188938fe530eb1b9c098916c` |
| 5 | `theorem` | [ConvexOn.dual](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-dual.md) | 81 | `result-track:7747a1c2f8cc88928b004445cacc175869b4cb256beff68136b93c8a99fabc14` |
| 6 | `theorem` | [ConcaveOn.dual](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-dual.md) | 83 | `result-track:0dae16d893848e3d283472261b44bf005fcd54aa36de28206e684785d6c033e4` |
| 7 | `theorem` | [StrictConvexOn.dual](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconvexon-dual.md) | 85 | `result-track:d165910e9017c442fc9b1d09d8c03c184c55f5bd393e25eebe90cda2de905b67` |
| 8 | `theorem` | [StrictConcaveOn.dual](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconcaveon-dual.md) | 87 | `result-track:9a9d03e9ae1de885f9ea8c1201d73546ad4cf9a96f6c7e2eb732c8f3dcf00586` |
| 9 | `theorem` | [convexOn_id](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-id.md) | 89 | `result-track:06f8ed436841168a1e65c77b260c5244aead60b286a468820497e9d8201bd469` |
| 10 | `theorem` | [concaveOn_id](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-id.md) | 94 | `result-track:2fa1912456a48dda356bc98a6c64d6a46dd381c0789080729c3ebf6ec8e917a7` |
| 11 | `theorem` | [ConvexOn.congr](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-congr.md) | 103 | `result-track:fd1310916623388b988be906073be5adde117132f5e6c9021a6cc49964904995` |
| 12 | `theorem` | [ConcaveOn.congr](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-congr.md) | 107 | `result-track:424f5e15dd77ac98e677ddfac1f8d0e280959681df8611cd5c262d3abd00a36b` |
| 13 | `theorem` | [StrictConvexOn.congr](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconvexon-congr.md) | 111 | `result-track:5670fd5b3ce03d1874adc7f89eb82635b974add68ba08e8451b022c789db1b8e` |
| 14 | `theorem` | [StrictConcaveOn.congr](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconcaveon-congr.md) | 117 | `result-track:90cd5dbc8f27ebc0d34a61183fac01f6d699ce20433e5af5d3b556804573d735` |
| 15 | `theorem` | [ConvexOn.subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-subset.md) | 125 | `result-track:abca4122533e5e1750d06b2df12efe6831bff98c8c99e7f868c75ae8913c304a` |
| 16 | `theorem` | [ConcaveOn.subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-subset.md) | 129 | `result-track:a1cad693014eac987117d13f563cb4990499e861b2477130d372d7c02ae253af` |
| 17 | `theorem` | [StrictConvexOn.subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconvexon-subset.md) | 133 | `result-track:8617d751f8235e746ea46c0d4129a72920738f570e19b34e2e21249c290820ff` |
| 18 | `theorem` | [StrictConcaveOn.subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconcaveon-subset.md) | 137 | `result-track:a0f800e5ad295c7794fd9cc1e459b58510254964664a9a49c6a2d5d89ab84fb3` |
| 19 | `theorem` | [ConvexOn.comp](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-comp.md) | 141 | `result-track:250cbb06c652a5470a5f723174e63f8a63f3d4a65c36016cdd5d03e804ff047e` |
| 20 | `theorem` | [ConcaveOn.comp](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-comp.md) | 149 | `result-track:121e7cd04d18f27d27d1bc723c02da0b70b0ecfc656523adcb1c18ca2ab170be` |
| 21 | `theorem` | [ConvexOn.comp_concaveOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-comp-concaveon.md) | 157 | `result-track:62a52383e309df6f01474fdc7e46024345ef69fb88ad3d3ecb8e04a881ed4b92` |
| 22 | `theorem` | [ConcaveOn.comp_convexOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-comp-convexon.md) | 161 | `result-track:3f71397c45bf42175881c651d0cc40f6c2808cfcc60a1d94cc1346e0cd01d122` |
| 23 | `theorem` | [StrictConvexOn.comp](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconvexon-comp.md) | 165 | `result-track:aad5e46df2928fbc3dc657ee99f295d230f52cda4eab9cde695028eaed461360` |
| 24 | `theorem` | [StrictConcaveOn.comp](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconcaveon-comp.md) | 173 | `result-track:6893fec99b0de784a5aca9624ba05cb3edbf5544833864ae5ebcf53e295bb903` |
| 25 | `theorem` | [StrictConvexOn.comp_strictConcaveOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconvexon-comp-strictconcaveon.md) | 181 | `result-track:784f339e6828a245bf5aaf07a8c2e8f7d6b48ae0d3c4fed1ba894724a8cf5d1a` |
| 26 | `theorem` | [StrictConcaveOn.comp_strictConvexOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconcaveon-comp-strictconvexon.md) | 186 | `result-track:a22ad05bbf5dd67e1cf45df2bbc020294bc153ca0588b91ff9f46d0bfcc98846` |
| 27 | `theorem` | [ConvexOn.add](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-add.md) | 197 | `result-track:fc1587c7375eb6481c2f83349ca65e16ac063e6990d54d8db6a6afd1b294cbb9` |
| 28 | `theorem` | [ConcaveOn.add](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-add.md) | 205 | `result-track:a97db4f6aabf51434c08a04814b0711eccaa0002e87221cb3bd94d6d3a252778` |
| 29 | `theorem` | [convexOn_const](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-const.md) | 214 | `result-track:b6d8299b651fa255f311caf727af7b250d1b2c8acd0a55a9082f122742b5b7d0` |
| 30 | `theorem` | [concaveOn_const](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-const.md) | 217 | `result-track:2773c1ccec95b4fb3c5dd5d6db3fea32c2b228428671b1579e4aa35d394b0179` |
| 31 | `theorem` | [ConvexOn.add_const](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-add-const.md) | 220 | `result-track:422761df854311ce111e33052b95a486bde11d4bb5afad34284d1b5bb1f97f3a` |
| 32 | `theorem` | [ConcaveOn.add_const](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-add-const.md) | 224 | `result-track:280a80cf960ae6aa584df7c7a37dd8c53c11b38dc3fea68e3b76f9f32f807abd` |
| 33 | `theorem` | [convexOn_of_convex_epigraph](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-of-convex-epigraph.md) | 228 | `result-track:cdab735e9c359ef84165d54448f103b7e1e8aa20cd2ea2a7f9157505e89bdd57` |
| 34 | `theorem` | [concaveOn_of_convex_hypograph](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-of-convex-hypograph.md) | 233 | `result-track:cf65b2066806bceb2e99188ece476535d243c6004db0de659a616e5738075b3c` |
| 35 | `theorem` | [ConvexOn.convex_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-convex-le.md) | 243 | `result-track:369c249124d1798aab732ee4308629f2b4e75d9a086370d536bff02b6b61f26f` |
| 36 | `theorem` | [ConcaveOn.convex_ge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-convex-ge.md) | 255 | `result-track:ad91b272b4096ccd66ddec78651a3628e5089313fe404bcc7a6576cd261edd1d` |
| 37 | `theorem` | [ConvexOn.convex_epigraph](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-convex-epigraph.md) | 258 | `result-track:66a27ca4d3a75434b484cac26c130228849e19ce0a88b6fa7af6d50ab3cff01e` |
| 38 | `theorem` | [ConcaveOn.convex_hypograph](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-convex-hypograph.md) | 266 | `result-track:4c7a90de33b9aafa48fa70aa03379229752266b9f518580d0dd41e0f04c11918` |
| 39 | `theorem` | [convexOn_iff_convex_epigraph](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-iff-convex-epigraph.md) | 270 | `result-track:940764a908cee64468c4807084f1035fee3d8a45af0a547d49775da88a51479e` |
| 40 | `theorem` | [concaveOn_iff_convex_hypograph](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-iff-convex-hypograph.md) | 274 | `result-track:42bcdad03aee8b74a961b1f092a6688d766ee07000f1f724414e56a7d31d7df1` |
| 41 | `theorem` | [ConvexOn.translate_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-translate-right.md) | 285 | `result-track:214b236cdfde42d4bb7cb26bb0c20c95631eb9d02398ce945eef09bea2db1dce` |
| 42 | `theorem` | [ConcaveOn.translate_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-translate-right.md) | 295 | `result-track:11176d3226fedc6796518eb1b9b9d0b299e1e485e94553b5c0a836a4263e74bd` |
| 43 | `theorem` | [ConvexOn.translate_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-translate-left.md) | 300 | `result-track:fafc23224398cc3aab0e85f45deaab7989833e36733ce54c45812252437ad164` |
| 44 | `theorem` | [ConcaveOn.translate_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-translate-left.md) | 305 | `result-track:2a6aa8fa0b99bd32f5b8d59ecf45bbbca5a1869b2278c307aa2e84a356ca0a91` |
| 45 | `theorem` | [convexOn_iff_forall_pos](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-iff-forall-pos.md) | 315 | `result-track:40d12c509c12ffbcec8edd759c273f76cd273f8b161900e5121759f96699718e` |
| 46 | `theorem` | [concaveOn_iff_forall_pos](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-iff-forall-pos.md) | 330 | `result-track:27ccd6698e4a11d9f1edc2661af93265d820991c04819cf298856e3db97726da` |
| 47 | `theorem` | [convexOn_iff_pairwise_pos](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-iff-pairwise-pos.md) | 336 | `result-track:3e6ebfe19d7b483756ab65220b67bc632f27b4de1807f64dccf21cb7eded110c` |
| 48 | `theorem` | [concaveOn_iff_pairwise_pos](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-iff-pairwise-pos.md) | 349 | `result-track:e9135d7c118c9497ca7db57b255004821be2cf4abb5ea3e13482d602809e3838` |
| 49 | `theorem` | [LinearMap.convexOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/linearmap-convexon.md) | 357 | `result-track:1baa63a9bf4f5430a78e4c92089860b4f9aaf3f68a17acfd41f5b182a4c47abd` |
| 50 | `theorem` | [LinearMap.concaveOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/linearmap-concaveon.md) | 361 | `result-track:9668649929f3626e00f1227e8107cc69198301e6ac3c4ff4d34a98aa8f4d1fe7` |
| 51 | `theorem` | [StrictConvexOn.convexOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconvexon-convexon.md) | 364 | `result-track:4e036ff9f83da5f635b9d74a77fdaf38b3a5c0741c853a02875c6b9c2c31698f` |
| 52 | `theorem` | [StrictConcaveOn.concaveOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconcaveon-concaveon.md) | 369 | `result-track:7d3baca7a4bbbd43627f11267abe08d1abea2c7c720d604693119e7349047780` |
| 53 | `theorem` | [StrictConvexOn.convex_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconvexon-convex-lt.md) | 377 | `result-track:582baccb270d5bc7e3dc3c5d062b54b3e9772d62f6c9d4959c71852d854f1ef8` |
| 54 | `theorem` | [StrictConcaveOn.convex_gt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconcaveon-convex-gt.md) | 390 | `result-track:a077b4e062e28697976859bba2d1ad20c3dd7b8ec8570eb89aa82c13bffb116d` |
| 55 | `theorem` | [LinearOrder.convexOn_of_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/linearorder-convexon-of-lt.md) | 405 | `result-track:9f7516e480c985967516049a594fb747cbe7bb731ce97ae1d851d13014443050` |
| 56 | `theorem` | [LinearOrder.concaveOn_of_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/linearorder-concaveon-of-lt.md) | 420 | `result-track:bae3220e49301516307228f06ee43596c1912ba1efe2e90737b7bd34bb33334b` |
| 57 | `theorem` | [LinearOrder.strictConvexOn_of_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/linearorder-strictconvexon-of-lt.md) | 430 | `result-track:5f9a04bac78d91ee3edb46bb86b037dc676c4eae4a4f3fe988233cb769f4b660` |
| 58 | `theorem` | [LinearOrder.strictConcaveOn_of_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/linearorder-strictconcaveon-of-lt.md) | 445 | `result-track:f567f4f15400e75c1cff5155f9e50f699952b25f9a23f2f061bd8de6e95ecab7` |
| 59 | `theorem` | [ConvexOn.comp_linearMap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-comp-linearmap.md) | 460 | `result-track:faf125c74ad413ba7d2cef10ae119265ebbc1447f8af07f5711c3b63c0a1eb4f` |
| 60 | `theorem` | [ConcaveOn.comp_linearMap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-comp-linearmap.md) | 468 | `result-track:49a22e36f416bcbe19e3e25166d95c7cea012da5f095f76cff3d151db2a36da8` |
| 61 | `theorem` | [StrictConvexOn.add_convexOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconvexon-add-convexon.md) | 484 | `result-track:f4ff5f59932a420e70cbfbc6bd548234db3efbc84898276bf15eee0b92043807` |
| 62 | `theorem` | [ConvexOn.add_strictConvexOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-add-strictconvexon.md) | 492 | `result-track:47815376d9fd21ca84eafd663e918bac86a60fbbd33338cc125a0d7cabb2eddb` |
| 63 | `theorem` | [StrictConvexOn.add](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconvexon-add.md) | 496 | `result-track:359e40271b5b9c2970fe472980b2994eddc76f7fd32d0db084ff449abadbbc95` |
| 64 | `theorem` | [StrictConcaveOn.add_concaveOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconcaveon-add-concaveon.md) | 504 | `result-track:dc64e20e3c45642ff1d97849e698ad1ccbb71e3cf88ac424b07eed8bb96118a6` |
| 65 | `theorem` | [ConcaveOn.add_strictConcaveOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-add-strictconcaveon.md) | 508 | `result-track:22683e4c82fb56d76b8c7c46884e3d4ea4c160ac9e7b5b177cc964df6c21cca9` |
| 66 | `theorem` | [StrictConcaveOn.add](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconcaveon-add.md) | 512 | `result-track:0ff55a3a7e41bfbe868594c86934671a1f64777e8accc22580e341d7d13206ea` |
| 67 | `theorem` | [StrictConvexOn.add_const](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconvexon-add-const.md) | 516 | `result-track:8e75b5538d0fa54793e0a6353f5849e91297ed33f4b9ca6a9cd40702246994ec` |
| 68 | `theorem` | [StrictConcaveOn.add_const](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconcaveon-add-const.md) | 521 | `result-track:b1f51bccb5a4585909350cb6b7f324fa1123237038e3e69de1e97a6d6dfa6bca` |
| 69 | `theorem` | [ConvexOn.convex_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-convex-lt.md) | 532 | `result-track:a54f016e93faa7f554a30b27350d82b2c9025888bd4b2408be8343dff2d56857` |
| 70 | `theorem` | [ConcaveOn.convex_gt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-convex-gt.md) | 542 | `result-track:a9d05a24535c225157d86e474bf56d9214f6c43f132a0ff8db7693671290f9d0` |
| 71 | `theorem` | [ConvexOn.openSegment_subset_strict_epigraph](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-opensegment-subset-strict-epigraph.md) | 545 | `result-track:5ba15df34ab038eb365d365a7c5845194e9588719b8366116dda65daf58b662f` |
| 72 | `theorem` | [ConcaveOn.openSegment_subset_strict_hypograph](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-opensegment-subset-strict-hypograph.md) | 555 | `result-track:14ecc24cf7f4950357df16b64d48ce277ef6dbefdd171b8873522cb1884308ab` |
| 73 | `theorem` | [ConvexOn.convex_strict_epigraph](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-convex-strict-epigraph.md) | 560 | `result-track:fd347410b245a26dfadd49f9e5b4c7e51dcd1f57911b0034b23bafd7c0d90d37` |
| 74 | `theorem` | [ConcaveOn.convex_strict_hypograph](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-convex-strict-hypograph.md) | 565 | `result-track:7524e0ace105be945a383e4c93f36236e189dbc844767f3722a44ca49ca67bb2` |
| 75 | `theorem` | [ConvexOn.sup](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-sup.md) | 580 | `result-track:4e2708808ca539101a5cf8183e6ed0d43bec8b421cb42af699af92bb795df5d9` |
| 76 | `theorem` | [ConcaveOn.inf](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-inf.md) | 590 | `result-track:09c4a5c97a8acb90a5889690bb8c4e35f8ff9376d45f68568d8db07d50f008ff` |
| 77 | `theorem` | [StrictConvexOn.sup](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconvexon-sup.md) | 594 | `result-track:3b1e7da481995b5b4f73f53f4ad38b36adcb46e7168a56e99b0baa971d783ee7` |
| 78 | `theorem` | [StrictConcaveOn.inf](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconcaveon-inf.md) | 606 | `result-track:664b477a9fa6b6813646611eb00e9e71fce0393b1b4d0d93aa9fcbc3590ff42e` |
| 79 | `theorem` | [ConvexOn.le_on_segment'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-le-on-segment-source-edition-2.md) | 611 | `result-track:bcc90414206eb86260642406a0b607de74c8ad7367a89ee2ff283125ba444e1e` |
| 80 | `theorem` | [ConcaveOn.ge_on_segment'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-ge-on-segment-source-edition-2.md) | 622 | `result-track:fdf824ada95fcf86098fd31d1c07c3d8b56cfa020338a8cbef0b5330db6b985e` |
| 81 | `theorem` | [ConvexOn.le_on_segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-le-on-segment.md) | 627 | `result-track:34368d1c195fbe9c78dae9ddc1cf471df7701eb1e69425128674e3dae3a75f4d` |
| 82 | `theorem` | [ConcaveOn.ge_on_segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-ge-on-segment.md) | 633 | `result-track:a396540e4cf68539101031b0594038d710692ecf5982b73f7c48bca91c9fb80a` |
| 83 | `theorem` | [StrictConvexOn.lt_on_open_segment'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconvexon-lt-on-open-segment.md) | 639 | `result-track:d50b68bd2e33a9edc379cb5ba1f13598856f67346881a256a2bfd195b68445bb` |
| 84 | `theorem` | [StrictConcaveOn.lt_on_open_segment'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconcaveon-lt-on-open-segment.md) | 652 | `result-track:ca05ce39f37546476b296f3076ab26556250c44a279814f63a1d63ab294bd1fc` |
| 85 | `theorem` | [StrictConvexOn.lt_on_openSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconvexon-lt-on-opensegment.md) | 659 | `result-track:a9aa6daa0c80e1bd3e0862042c08c15277de91771bd253e5014350b1eb77e805` |
| 86 | `theorem` | [StrictConcaveOn.lt_on_openSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconcaveon-lt-on-opensegment.md) | 666 | `result-track:15b674487f1edbf514caef73ed30cd530a1323fca528badb74fda10e2f0ae64d` |
| 87 | `theorem` | [ConvexOn.le_left_of_right_le'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-le-left-of-right-le-source-edition-3.md) | 680 | `result-track:c5c70f0a5713327026b6289f9683564c085a19e16ced97b0c3f8f32d4e1e981d` |
| 88 | `theorem` | [ConcaveOn.left_le_of_le_right'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-left-le-of-le-right-source-edition-2.md) | 690 | `result-track:becacabd817db4788860eb616558d4b2bf5dd89ee07e6917583af6a63121dd98` |
| 89 | `theorem` | [ConvexOn.le_right_of_left_le'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-le-right-of-left-le-source-edition-2.md) | 695 | `result-track:348eda5154274bba9ad94cefcc42359826cd6a2290066ab14a8bf4e8e0cac92f` |
| 90 | `theorem` | [ConcaveOn.right_le_of_le_left'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-right-le-of-le-left.md) | 701 | `result-track:3309fd3842ef247eb9cfdefa0ef426700301ce60a17e96026867ba2d35686fe5` |
| 91 | `theorem` | [ConvexOn.le_left_of_right_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-le-left-of-right-le-source-edition-2.md) | 706 | `result-track:5fbc80356042f67478ad2d45564155ebfb2dec15e2b8607b83f3374abc5aed81` |
| 92 | `theorem` | [ConcaveOn.left_le_of_le_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-left-le-of-le-right-source-edition-3.md) | 711 | `result-track:f9d75396bc29ca43cb92c68a277bbe0f730572acaa041847150855b07b952c51` |
| 93 | `theorem` | [ConvexOn.le_right_of_left_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-le-right-of-left-le-source-edition-3.md) | 715 | `result-track:45640f6bca499727dc8215d6099074670400ba57ad00861e3a9ecd0ee3cb7fa0` |
| 94 | `theorem` | [ConcaveOn.right_le_of_le_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-right-le-of-le-left-source-edition-2.md) | 720 | `result-track:494f75bad19a5841f3fe138ddb182178625bd0cf9f6a1f16c8dedaea25c471b3` |
| 95 | `theorem` | [ConvexOn.lt_left_of_right_lt'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-lt-left-of-right-lt-source-edition-2.md) | 732 | `result-track:ebe750b0ce6cbff82cdc8ec25e51954ab14ef18b8f7196ac56500444e4a969f1` |
| 96 | `theorem` | [ConcaveOn.left_lt_of_lt_right'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-left-lt-of-lt-right-source-edition-2.md) | 742 | `result-track:aa2df597b85305235f6689b837b5afedd4e8dcd80f1799c8650502d949ddf9fd` |
| 97 | `theorem` | [ConvexOn.lt_right_of_left_lt'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-lt-right-of-left-lt-source-edition-2.md) | 747 | `result-track:ca6dfedc5ccb9b3f9120cb54c12aa42650b8bc8d96ae048be08cc201e379f9ad` |
| 98 | `theorem` | [ConcaveOn.lt_right_of_left_lt'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-lt-right-of-left-lt-source-edition-2.md) | 753 | `result-track:a3ccf88549cd6afbf7559f725f31409cf304b84485ca8510a2905d79af0d592a` |
| 99 | `theorem` | [ConvexOn.lt_left_of_right_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-lt-left-of-right-lt.md) | 758 | `result-track:2a5bfcdccd060de1a12fe2412d0512a43a092e9d03fa4cae299ccb5efa51899e` |
| 100 | `theorem` | [ConcaveOn.left_lt_of_lt_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-left-lt-of-lt-right.md) | 763 | `result-track:7fc8e8235b3cfa3173943aa8041535900cf56a61ebbb57c05cfe426b4bde1bae` |
| 101 | `theorem` | [ConvexOn.lt_right_of_left_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-lt-right-of-left-lt.md) | 767 | `result-track:05db919b00f11d247e35c5e6cecd1a2d5e8bdb9bb043411a396b2afe85c10fc2` |
| 102 | `theorem` | [ConcaveOn.lt_right_of_left_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-lt-right-of-left-lt.md) | 772 | `result-track:402c07093e6945f5327753e5d44296676b1b8903c4aa429f569742c84631480c` |
| 103 | `theorem` | [neg_convexOn_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/neg-convexon-iff.md) | 787 | `result-track:9c116306d04ab801411e48bc58a13d48980a7158c4d85f4fd207e6bc79c5a779` |
| 104 | `theorem` | [neg_concaveOn_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/neg-concaveon-iff.md) | 803 | `result-track:5c77253c2f795c220d34da62b5cc0e085d3d5cc8d37c8bc72fe89ce10e8adfde` |
| 105 | `theorem` | [neg_strictConvexOn_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/neg-strictconvexon-iff.md) | 808 | `result-track:194abb1a5b1d88f4ddb2eb7c02bdad9f16af1a94c704baebdfc41f04e904b794` |
| 106 | `theorem` | [neg_strictConcaveOn_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/neg-strictconcaveon-iff.md) | 823 | `result-track:d6904d7a60d1f9c9cfe19a4002a4d1628a7bfc4bef1f4e8bd481f6bc17d1a2c4` |
| 107 | `theorem` | [ConvexOn.sub](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-sub.md) | 834 | `result-track:0721915bd4db01e6668369b470b7a09064d0be9a186f98ad536442e762813708` |
| 108 | `theorem` | [ConcaveOn.sub](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-sub.md) | 837 | `result-track:d474598926a35c3be0d7dff96ed116132c6f3e6287c8819a519da51f31bb228f` |
| 109 | `theorem` | [StrictConvexOn.sub](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconvexon-sub.md) | 840 | `result-track:d57235d34397440043b70e4613fa882a2749ffa4eb5632d62ff6cc0af48f4773` |
| 110 | `theorem` | [StrictConcaveOn.sub](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconcaveon-sub.md) | 844 | `result-track:1e067a1981b887cb4a75bb6fb99a42493afa821f8a3f71bd0de353579cb3b456` |
| 111 | `theorem` | [ConvexOn.sub_strictConcaveOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-sub-strictconcaveon.md) | 848 | `result-track:d74f90dcaa16e4bf6131bf96f821c938f11b831d195f1f17fe0de649ec51b0c5` |
| 112 | `theorem` | [ConcaveOn.sub_strictConvexOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-sub-strictconvexon.md) | 852 | `result-track:6694d23f79957e19c09941659518d79669c6171e3570b41e317faf71cee46e70` |
| 113 | `theorem` | [StrictConvexOn.sub_concaveOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconvexon-sub-concaveon.md) | 856 | `result-track:d54e12f81bc85fa91d8eb1e21b8e979daf1bb0356c80ea4d18b04945d3d8397f` |
| 114 | `theorem` | [StrictConcaveOn.sub_convexOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconcaveon-sub-convexon.md) | 860 | `result-track:3669ce904230045fe5c428ac7f0c68858fc58ca814dc842b2d765f416223674d` |
| 115 | `theorem` | [StrictConvexOn.translate_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconvexon-translate-right.md) | 875 | `result-track:65e4d728f8632ad7ee5216f74df4acded62f026b314ce22742e6902987f14aa1` |
| 116 | `theorem` | [StrictConcaveOn.translate_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconcaveon-translate-right.md) | 884 | `result-track:12a8a2bf4d5bb0832f1be16128f70a11a0b59ec6471e5ed6abfdd89fe226f9f3` |
| 117 | `theorem` | [StrictConvexOn.translate_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconvexon-translate-left.md) | 889 | `result-track:760462ac16c1ba17fde1955039b259488e25a17248f15ebeb146dbbbd37e033e` |
| 118 | `theorem` | [StrictConcaveOn.translate_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconcaveon-translate-left.md) | 894 | `result-track:0e36431f624b72e2de5df13531ec1525244b0006487a20e54673070dd9d9d164` |
| 119 | `theorem` | [ConvexOn.smul](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-smul.md) | 914 | `result-track:e2647c728dd3695e93abfb56438b9272019964b22a4968f2867687dfbe9f41c2` |
| 120 | `theorem` | [ConcaveOn.smul](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-smul.md) | 921 | `result-track:325c45e23d43f6b02bd335e6cd5449ba4ee5ba4b228b75a20dce72069bb55467` |
| 121 | `theorem` | [ConvexOn.comp_affineMap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-comp-affinemap.md) | 944 | `result-track:61d473bfd0bd97e127e56d4787298b51941de5dc4fa8a78efe3690d06dcea620` |
| 122 | `theorem` | [ConcaveOn.comp_affineMap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-comp-affinemap.md) | 953 | `result-track:c8536971b486a9dd8d23b96a29654283b38c230fd727155ffb6f87113e699f3c` |
| 123 | `theorem` | [convexOn_iff_div](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-iff-div.md) | 975 | `result-track:41fef5c358a35432bcff1f23464a6ccf40adb76949d859f25c63e5b079d9613f` |
| 124 | `theorem` | [concaveOn_iff_div](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-iff-div.md) | 986 | `result-track:70f25873117f08d09cb1129094e5e2a7560fcb5befb284c41b0a866b02cc4b20` |
| 125 | `theorem` | [strictConvexOn_iff_div](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconvexon-iff-div.md) | 992 | `result-track:cbddbc11195f8350f20f9224a73e2cedf74dd05a87d2fbb05cf1b9c2b2878b4a` |
| 126 | `theorem` | [strictConcaveOn_iff_div](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconcaveon-iff-div.md) | 1004 | `result-track:0445de0b0880bf3b3c29526175b376ff6e032d712b0f6b05812feca175164416` |
| 127 | `theorem` | [OrderIso.strictConvexOn_symm](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/orderiso-strictconvexon-symm.md) | 1022 | `result-track:b99672db3c9b3bcfa052aac1638c8b5a9ccca3559d96f47ff246093eb5880d48` |
| 128 | `theorem` | [OrderIso.convexOn_symm](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/orderiso-convexon-symm.md) | 1032 | `result-track:551c83b70a1cac8d42f3b1f976f0f98145c298f3977c89d9b3d1fe51caf483da` |
| 129 | `theorem` | [OrderIso.strictConcaveOn_symm](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/orderiso-strictconcaveon-symm.md) | 1041 | `result-track:daf9d139d2cabfa770b539dea0835647ba8f8eccc6234b861082d596e50d89d6` |
| 130 | `theorem` | [OrderIso.concaveOn_symm](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/orderiso-concaveon-symm.md) | 1051 | `result-track:f74f08bbc5777d7aade93201ce4fff650a0f0510ba92bbdb091d1ea2e04ba573` |
| 131 | `lemma` | [StrictConvexOn.eq_of_isMinOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconvexon-eq-of-isminon.md) | 1072 | `result-track:e03f8ffa849f08019b16b98edd1a5ba15903a0cbc427a03c89958adc53b80f00` |
| 132 | `lemma` | [StrictConcaveOn.eq_of_isMaxOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/strictconcaveon-eq-of-ismaxon.md) | 1084 | `result-track:9e9e1c1d2f9fe3a925775625b714f8ce88a143d825f99732872dc4dc0dcc874f` |
| 133 | `theorem` | [ConvexOn.le_right_of_left_le''](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-le-right-of-left-le.md) | 1095 | `result-track:08cb93a2a9fb8c3bf573cb4043ddc1ca5de9f0084dadea8830813ab99cb6fe3d` |
| 134 | `theorem` | [ConvexOn.le_left_of_right_le''](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/convexon-le-left-of-right-le.md) | 1100 | `result-track:33cca01f9109b00bd4391c4257319c63e5582748fdee6a93f7fb9569dd46895a` |
| 135 | `theorem` | [ConcaveOn.right_le_of_le_left''](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-right-le-of-le-left-source-edition-3.md) | 1105 | `result-track:fee08e4fe6e84fec6cc563f8fa91ee08d140617bb101c5989044b74debbc009c` |
| 136 | `theorem` | [ConcaveOn.left_le_of_le_right''](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespaced.lean/declarations/concaveon-left-le-of-le-right.md) | 1109 | `result-track:4d9c957defee4a6a501e3d517c6a5ecf82ddf20fd10d11c4f09225759f625319` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3fc9b6a85df82256282c1dcba072d29e0c93b9536c366e98319f55d745c01563 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Function/Variant0d7cdf6d44f21bb965c728d1b121c7588a3eed3ce8a2d0123502d50bf50f9724.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Function/Variant0d7cdf6d44f21bb965c728d1b121c7588a3eed3ce8a2d0123502d50bf50f9724.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
