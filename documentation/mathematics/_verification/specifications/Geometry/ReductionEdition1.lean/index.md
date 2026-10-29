# Verification target: Reduction Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66dc2acb88044e8a73e6ed38e7794d91f27bd237",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Reduction/Variantb47cfa5c73ea3cf687bfcfc76285297ab71835982eecd41a44167a783040904e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Geometry/ReductionEdition1.lean/index.md) · [Full source](../../../../Geometry/ReductionEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66dc2acb88044e8a73e6ed38e7794d91f27bd237`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Reduction/Variantb47cfa5c73ea3cf687bfcfc76285297ab71835982eecd41a44167a783040904e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Reduction/Variantb47cfa5c73ea3cf687bfcfc76285297ab71835982eecd41a44167a783040904e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Parallel](../../../../Geometry/ReductionEdition1.lean/declarations/parallel-source-edition-2.md) | 22 | `declaration-track:a7400f18362a87f8d17f2cce761b073f9d3f61772e60fe534975f5251442cf4c` |
| 2 | `theorem` | [refl](../../../../Geometry/ReductionEdition1.lean/declarations/refl.md) | 38 | `result-track:7bedc5662202eed7750bd3d7dd43910ed1b1cc2918af5a5e6121b27a340588a3` |
| 3 | `theorem` | [of_beta](../../../../Geometry/ReductionEdition1.lean/declarations/of-beta.md) | 46 | `result-track:ec2a887c67e3b88af2579a803ea08484d4cdd49ac2b3c0f1b9d9fbf9ab6c4553` |
| 4 | `theorem` | [rename](../../../../Geometry/ReductionEdition1.lean/declarations/rename.md) | 56 | `result-track:3c5bb5861cedd6f96bbb7ace4e0882f88e76477784f9a05373a20e7ec5aead8a` |
| 5 | `theorem` | [subst](../../../../Geometry/ReductionEdition1.lean/declarations/subst-source-edition-2.md) | 68 | `result-track:46a80f89bbe05932ac4f7df8e4cc26eb3eed62e3333bd4a383a824ea6ff0224a` |
| 6 | `theorem` | [instantiate](../../../../Geometry/ReductionEdition1.lean/declarations/instantiate.md) | 86 | `result-track:5348da30512afd086cd6d216de42bd0bd8d706976c0d0d7258339529485b0a1c` |
| 7 | `def` | [develop](../../../../Geometry/ReductionEdition1.lean/declarations/develop.md) | 101 | `declaration-track:f1d0198deb30a7c39202c62dfb10e1dadbd86101e8b8e610b5c9fa330e430670` |
| 8 | `theorem` | [triangle](../../../../Geometry/ReductionEdition1.lean/declarations/triangle.md) | 115 | `result-track:5b9ae711736eb790a978ea914d1af80a3487cac9f9708af7b1987e25d148f6e4` |
| 9 | `theorem` | [diamond](../../../../Geometry/ReductionEdition1.lean/declarations/diamond.md) | 134 | `result-track:272872133bbf4b67a2463bb9d81514bcc7f43760e379e2f5b255dfcea9e23961` |
| 10 | `abbrev` | [Reduces](../../../../Geometry/ReductionEdition1.lean/declarations/reduces-source-edition-3.md) | 140 | `declaration-track:c8f610065e76b0426d5d5a1cff65e98776dcf352781009f686de2aea30095353` |
| 11 | `theorem` | [app](../../../../Geometry/ReductionEdition1.lean/declarations/app.md) | 146 | `result-track:dc070d21206a5e43e7a38e3cd0fbc2b5ed58322b1c69343f2a9815df7115af5a` |
| 12 | `theorem` | [lam](../../../../Geometry/ReductionEdition1.lean/declarations/lam.md) | 151 | `result-track:383073b18f2c64ff7724cc6ab482f4913961db884a632bfe25724d819d980324` |
| 13 | `theorem` | [pi](../../../../Geometry/ReductionEdition1.lean/declarations/pi.md) | 156 | `result-track:86a9c803e2a120c4b5326702a70fa5a566bfb6ff58aed04df1622b9c95de367d` |
| 14 | `theorem` | [rename](../../../../Geometry/ReductionEdition1.lean/declarations/rename-source-edition-2.md) | 161 | `result-track:e03eb7d357687f7e168989f30354dabf3113cbf5172d080cd6eafa043b0b841c` |
| 15 | `theorem` | [subst](../../../../Geometry/ReductionEdition1.lean/declarations/subst.md) | 164 | `result-track:2f2d7d2e19655819ecc444bdad7fd2f61288db505ada74d5659bf47546c9bf97` |
| 16 | `theorem` | [reduces](../../../../Geometry/ReductionEdition1.lean/declarations/reduces-source-edition-2.md) | 173 | `result-track:64e8715bdb49040f74c7e1c785927911c66e046f3d5d6cd4b22b699e80e6817e` |
| 17 | `theorem` | [rtc_reduces](../../../../Geometry/ReductionEdition1.lean/declarations/rtc-reduces.md) | 183 | `result-track:96eeeee57322105b249d4fa1b1b92e1c991525a0a50e2662eeff8e7e4747825a` |
| 18 | `theorem` | [parallel](../../../../Geometry/ReductionEdition1.lean/declarations/parallel.md) | 192 | `result-track:98e7b96521abcd0cb65ca38dcfc39440f0aa66f984a38f4e1ce5e64ab3cde154` |
| 19 | `theorem` | [confluent](../../../../Geometry/ReductionEdition1.lean/declarations/confluent.md) | 195 | `result-track:aed2f85aad60921df0fa9b73c581768639ab3afc494e83a8c8eb238809babb1d` |
| 20 | `theorem` | [join](../../../../Geometry/ReductionEdition1.lean/declarations/join.md) | 211 | `result-track:9b00002b02552d7de54711a42ba20e3c1edee2e1db9b2664194501fa27957bd4` |
| 21 | `theorem` | [reduces_eq](../../../../Geometry/ReductionEdition1.lean/declarations/reduces-eq.md) | 230 | `result-track:8a0e08cf02273ee2340bb96d2c0e0aa22d39ec9789b01392132cc813984d90e8` |
| 22 | `theorem` | [eq_of_converts](../../../../Geometry/ReductionEdition1.lean/declarations/eq-of-converts.md) | 235 | `result-track:d4f8a89d618b02f51ca210d36840090995180c7d0f67a414133649578013edec` |
| 23 | `theorem` | [pi_inv](../../../../Geometry/ReductionEdition1.lean/declarations/pi-inv.md) | 245 | `result-track:0796235255d3ad1425ea2793d39a4f7636bd5cfd47d8709a0293fb005144493b` |
| 24 | `theorem` | [converts](../../../../Geometry/ReductionEdition1.lean/declarations/converts.md) | 255 | `result-track:3d682591335cf9431365d00b4cdee0e02b8c3251c804130989429c010fafdf0d` |
| 25 | `theorem` | [product_compatibility](../../../../Geometry/ReductionEdition1.lean/declarations/product-compatibility.md) | 264 | `result-track:9d836dec593d9834e0e697b32596cdf09b5ccdf5e56af44f05cd82ef4ac0f769` |
| 26 | `theorem` | [var](../../../../Geometry/ReductionEdition1.lean/declarations/var.md) | 280 | `result-track:f4046f8b9bd94fe0669e1fdcba64b11d5ea4a59cd90c30e7f0fc1f3d8dbde952` |
| 27 | `theorem` | [sort](../../../../Geometry/ReductionEdition1.lean/declarations/sort.md) | 284 | `result-track:e537249aa239808dfe8f862e66fb3a66e52ad96ddbf93461578a88d4c2a7f530` |
| 28 | `theorem` | [stronglyNormalizing](../../../../Geometry/ReductionEdition1.lean/declarations/stronglynormalizing.md) | 288 | `result-track:6047a24bef1cb2cd5790718b1f555827c3f26c078c296f5f7e4a5f76b3bef314` |
| 29 | `theorem` | [step](../../../../Geometry/ReductionEdition1.lean/declarations/step.md) | 297 | `result-track:6e19c7919dfac9fccd4871c0432eec0b80b4468b3a6df6dfa054b6b017fcc3c6` |
| 30 | `theorem` | [reduces](../../../../Geometry/ReductionEdition1.lean/declarations/reduces.md) | 300 | `result-track:30fc75a74ae149c29e884213fb0be5ce7a40d7774b1a56761809aefd1b7419e8` |
| 31 | `theorem` | [of_map](../../../../Geometry/ReductionEdition1.lean/declarations/of-map.md) | 306 | `result-track:e05f4ec5c43a97334877d1db57d31430862c52df84b64bcb56be26749099f458` |
| 32 | `theorem` | [app_left](../../../../Geometry/ReductionEdition1.lean/declarations/app-left.md) | 319 | `result-track:a6dba766f4322508671503a656be9420879033c96b1a648bf1216ea2d4bf77bc` |
| 33 | `theorem` | [app_right](../../../../Geometry/ReductionEdition1.lean/declarations/app-right.md) | 322 | `result-track:3fcc4108a9c6d7cf58cabd55c23a1d232db58d09708ed2cf581bad21089ece0a` |
| 34 | `theorem` | [lam_domain](../../../../Geometry/ReductionEdition1.lean/declarations/lam-domain.md) | 325 | `result-track:5295ca060a99ce08f11489b724222d4b61bbd58c9c6b68ed5929d53127cb20d1` |
| 35 | `theorem` | [lam_body](../../../../Geometry/ReductionEdition1.lean/declarations/lam-body.md) | 328 | `result-track:a1dd3c6842e591b8caa7f253a03b59ecf66b76553c0640db63e2d4ea75bd7244` |
| 36 | `theorem` | [pi_domain](../../../../Geometry/ReductionEdition1.lean/declarations/pi-domain.md) | 331 | `result-track:48c60be5518a42851a1cd46672936095f859d0e0ae79703cc48fbd1540974b5f` |
| 37 | `theorem` | [pi_body](../../../../Geometry/ReductionEdition1.lean/declarations/pi-body.md) | 334 | `result-track:a81a19b2e3ccea2a4e48142c522ccfdf3694fa233013a2d5579fa2ea30963006` |
| 38 | `theorem` | [of_subst](../../../../Geometry/ReductionEdition1.lean/declarations/of-subst.md) | 337 | `result-track:9bcd1becb643720ee933a50fca713fa52e08bc89c25bc21a635d097802f64270` |
| 39 | `theorem` | [of_rename](../../../../Geometry/ReductionEdition1.lean/declarations/of-rename.md) | 340 | `result-track:f67a189128077ea6f318be9c47d567e49787a096a1c318ff89280f18925993b4` |
| 40 | `theorem` | [lam](../../../../Geometry/ReductionEdition1.lean/declarations/lam-source-edition-2.md) | 343 | `result-track:8ca5426e53f5fd15edd20398051153bb18b76eed62670dd4f1f702c6cc2b298e` |
| 41 | `theorem` | [pi](../../../../Geometry/ReductionEdition1.lean/declarations/pi-source-edition-2.md) | 355 | `result-track:b9955ca70e5c162d89bec0c16f36788119dc5058ac0beca93ee1aa30ea86c263` |
| 42 | `def` | [apps](../../../../Geometry/ReductionEdition1.lean/declarations/apps-source-edition-4.md) | 374 | `declaration-track:fa4c19e16b8d1942ec2e74a0ec0225642683bcabfb49b9a341c17ce48e04ef7f` |
| 43 | `theorem` | [apps_nil](../../../../Geometry/ReductionEdition1.lean/declarations/apps-nil.md) | 378 | `result-track:096ad2e2c8285b02f2441248e3b49f9da865baa74156b74331a9cd134ac6215d` |
| 44 | `theorem` | [apps_cons](../../../../Geometry/ReductionEdition1.lean/declarations/apps-cons.md) | 379 | `result-track:64ec0427892418d1d1a44f5a1abf86dad9358841d92fb3cff322f84d0bcd5357` |
| 45 | `theorem` | [apps_append](../../../../Geometry/ReductionEdition1.lean/declarations/apps-append.md) | 382 | `result-track:0750a5e1a9448ea5c507bf1cb921e817418634841aa80e0d03aa4cce727f15e3` |
| 46 | `inductive` | [ArgsStep](../../../../Geometry/ReductionEdition1.lean/declarations/argsstep.md) | 391 | `declaration-track:3b275c5ab01154995cab4ca7c52d0b05fc0a0be92f4c215622ae6ed3ce7f64ac` |
| 47 | `def` | [StronglyNormalizingArgs](../../../../Geometry/ReductionEdition1.lean/declarations/stronglynormalizingargs.md) | 396 | `declaration-track:957202e8d1189367353e236f295dc719f473ce16650ba435527bf21276dbd1aa` |
| 48 | `theorem` | [apps](../../../../Geometry/ReductionEdition1.lean/declarations/apps-source-edition-3.md) | 403 | `result-track:b87475e52984830189bbc486463aad0e94ce4758450e582f344087dd8589eb6a` |
| 49 | `theorem` | [apps_inv](../../../../Geometry/ReductionEdition1.lean/declarations/apps-inv.md) | 410 | `result-track:508dfe6f724195273c0db53ca8e2fbacea264328711a27e5649ae7aac6bd88ba` |
| 50 | `theorem` | [apps](../../../../Geometry/ReductionEdition1.lean/declarations/apps-source-edition-2.md) | 431 | `result-track:852aeb08179c553bb3d7713af8703ac77ada55b5d65156a3343c279952d3bbbd` |
| 51 | `theorem` | [apps](../../../../Geometry/ReductionEdition1.lean/declarations/apps.md) | 442 | `result-track:2fed6a131fa4ebf79679fe3e257a49c8d3512990cd7c6f30345fe793cabae100` |
| 52 | `theorem` | [nil](../../../../Geometry/ReductionEdition1.lean/declarations/nil.md) | 451 | `result-track:ba4a0a5b6093d115c10e3d62decc67a59382942193661642b8c446e9425f96fd` |
| 53 | `theorem` | [cons](../../../../Geometry/ReductionEdition1.lean/declarations/cons.md) | 456 | `result-track:d55b02fe841ec39cb35e69bdb737b5809b9d2e567e809ddf481add82995877aa` |
| 54 | `theorem` | [of_forall](../../../../Geometry/ReductionEdition1.lean/declarations/of-forall.md) | 468 | `result-track:09a170e23eb35d790d2ffca506b29a09179ed776fe55a21d2b6e5c0c9302c9f3` |
| 55 | `theorem` | [head](../../../../Geometry/ReductionEdition1.lean/declarations/head.md) | 475 | `result-track:f7480c9b5ba6be0d9827c19f4d23fffc5dcbf75ae4df10d127f383736254cae9` |
| 56 | `theorem` | [tail](../../../../Geometry/ReductionEdition1.lean/declarations/tail.md) | 480 | `result-track:0451e3b47eff5a554db660a6c00305fc07b935e15c90423dcebe6559a45bcd79` |
| 57 | `theorem` | [of_mem](../../../../Geometry/ReductionEdition1.lean/declarations/of-mem.md) | 485 | `result-track:5a236ccf77a86fa001dd3b52d15c871e2cfe274086f2a2e072d2fefa749aafc6` |
| 58 | `theorem` | [apps_head](../../../../Geometry/ReductionEdition1.lean/declarations/apps-head.md) | 500 | `result-track:927ba3a918680759cc1f2dbfe207b938106cebed39d3f80f347ab0916ffc04f1` |
| 59 | `theorem` | [var_apps](../../../../Geometry/ReductionEdition1.lean/declarations/var-apps.md) | 504 | `result-track:3ed07ddcc90dda39e08d658c7dd871e90ea096f266acfb4ff5b9eca8173228da` |
| 60 | `theorem` | [head_expansion](../../../../Geometry/ReductionEdition1.lean/declarations/head-expansion.md) | 518 | `result-track:fae89e920cb9d0d31371c7391181a5c94c0a95cdd03536c4be0fc6d6e65f6427` |
| 61 | `inductive` | [Child](../../../../Geometry/ReductionEdition1.lean/declarations/child.md) | 556 | `declaration-track:cb12aaab1b2448f9fa5d48f84498d35a66d073e9a6b87f580f2030a2a1d491f9` |
| 62 | `inductive` | [Subterm](../../../../Geometry/ReductionEdition1.lean/declarations/subterm.md) | 565 | `declaration-track:b0866aabb30e0d63349c87543ecf221f793632d46535ff08c90171f010bc5225` |
| 63 | `theorem` | [beta_lift](../../../../Geometry/ReductionEdition1.lean/declarations/beta-lift-source-edition-2.md) | 571 | `result-track:889e117a8f964f9e237447b7b6dab38f8423398b169c5f1067d1d31d3abc807f` |
| 64 | `theorem` | [sn](../../../../Geometry/ReductionEdition1.lean/declarations/sn.md) | 581 | `result-track:7be3d535970f16dc5eb3fa41bcf4469357e988490840176d2586572f40aad510` |
| 65 | `theorem` | [trans](../../../../Geometry/ReductionEdition1.lean/declarations/trans.md) | 593 | `result-track:82f8d401f028f1d1bad2b611ec9550a4ebe253f78acca85871d20c087cd3caba` |
| 66 | `theorem` | [of_child](../../../../Geometry/ReductionEdition1.lean/declarations/of-child.md) | 598 | `result-track:0b323ec09d7686ba1918dcae5db5e84d2ad41549f426b4dc90b445bc5431eca4` |
| 67 | `theorem` | [beta_lift](../../../../Geometry/ReductionEdition1.lean/declarations/beta-lift.md) | 600 | `result-track:508a22db614ed56ef25c791fcd65a09f0954cd59cc2a42e7f235e827739d6328` |
| 68 | `theorem` | [sn](../../../../Geometry/ReductionEdition1.lean/declarations/sn-source-edition-2.md) | 609 | `result-track:cb1f1f229f2b3ea21f8ee572930c8bb19299f884c943985f52156adc96a6d05e` |
| 69 | `theorem` | [induction_subterms](../../../../Geometry/ReductionEdition1.lean/declarations/induction-subterms.md) | 620 | `result-track:d488d1f95af37047c1bf79d6baedfa4058fa5fbe43ab4a25875011871e65ecbc` |
| 70 | `theorem` | [induction_descendants](../../../../Geometry/ReductionEdition1.lean/declarations/induction-descendants.md) | 663 | `result-track:a1aafaf93dca3c2f95771b05fcf7657ef3e42e40c5248625e3053917bf41c53c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=520ca3f3e04535d263136de3d313dd76304935e06c9c1d54b5533862354b6386 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Reduction/Variantb47cfa5c73ea3cf687bfcfc76285297ab71835982eecd41a44167a783040904e.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/Reduction/Variantb47cfa5c73ea3cf687bfcfc76285297ab71835982eecd41a44167a783040904e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
