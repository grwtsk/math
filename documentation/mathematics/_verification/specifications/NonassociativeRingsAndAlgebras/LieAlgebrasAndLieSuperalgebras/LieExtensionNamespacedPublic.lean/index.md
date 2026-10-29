# Verification target: Lie Extension Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab9ba471259a2b2625021c90af021e73648d061d",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Extension/Variantcc9dfd4481d4bff0e3af92c1f6fb5731f4bc6345de7e343f61adbbb8e1fa1ba0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab9ba471259a2b2625021c90af021e73648d061d`.

Source path: `GRWTSK/Algebra/Extension/Variantcc9dfd4481d4bff0e3af92c1f6fb5731f4bc6345de7e343f61adbbb8e1fa1ba0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Extension/Variantcc9dfd4481d4bff0e3af92c1f6fb5731f4bc6345de7e343f61adbbb8e1fa1ba0.lean.json)

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
| 1 | `class` | [IsExtension](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/isextension.md) | 67 | `declaration-track:c7761285fa92052a4571579c74fdf0c434a2b997d6999fd31bf173a40a2b18ca` |
| 2 | `lemma` | [Lie Extension Namespaced Public](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/range-eq-ker-iff.md) | 72 | `result-track:73085d54af5ae7b70c2ebe412f13ef49d37099d6cea4acbf4f4c4ea36d6b898b` |
| 3 | `def` | [IsExtension.kerEquivRange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/isextension-kerequivrange.md) | 77 | `declaration-track:29d047e0fbac8b5294ab706f063ef6b7fbb9c3dbcc3656d6a7af56cd7960e674` |
| 4 | `structure` | [Extension](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/extension.md) | 84 | `declaration-track:186b5f3d787c681c23fe7bda188f6abfd73d8d1a4ba53fcd53835492bea2d84a` |
| 5 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 97 | `declaration-track:b61654279ec9feedf612772725eafb67e45a83d5296b0b46e54d54b953d874c1` |
| 6 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 98 | `declaration-track:53dfffcf23ba13f16abb82aefd1c2e8eee2e7eefbd468bcbee932b8518f420e0` |
| 7 | `def` | [IsExtension.extension](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/isextension-extension.md) | 101 | `declaration-track:a7ad612b9ccbe2e9374c37763cfa5ba7e1652f489276675d2a6dc0346ffab5de` |
| 8 | `lemma` | [isExtension_of_surjective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/isextension-of-surjective.md) | 106 | `result-track:d1aca66f6b7384b929951694aa6f10d66995213338279295bf851760ca5b4340` |
| 9 | `lemma` | [incl_apply_mem_ker](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/incl-apply-mem-ker.md) | 118 | `result-track:99721c8010d23ce28771c8659ad68c4cdeecd0d7e0c8b444d7e09343b6579ef8` |
| 10 | `lemma` | [proj_incl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/proj-incl.md) | 122 | `result-track:98737e39c0e16684dbc6a4d9d1be3ca462efc4a7f9e4a039dffdf2dfca8bdc16` |
| 11 | `lemma` | [incl_injective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/incl-injective.md) | 126 | `result-track:6b880bf8095a4e649e675a25b3a25d3b04b80102ab50c967511596d104c14c33` |
| 12 | `lemma` | [proj_surjective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/proj-surjective.md) | 130 | `result-track:7d62a0f68bdb98ab18b0a185b4f8b7656f369904be0cee5586b7b2712cf1689e` |
| 13 | `structure` | [ofTwoCocycle](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/oftwococycle-source-edition-2.md) | 144 | `declaration-track:db5e1fb1f7b245f63657fc25be9525314c3eaf39d423ee81baaff5665fd9c6a0` |
| 14 | `def` | [ofProd](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/ofprod.md) | 156 | `declaration-track:f76ec921626a2cdbd328be735f1e27da1fc57cb7f7a1b4cdbac766f26cad83f6` |
| 15 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 161 | `declaration-track:db97005fef41506fe6a82fd8853258c723ebf7372ffab85bab710ad37ef20ffe` |
| 16 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 162 | `declaration-track:3868ebfbf74e6d20cd140a1af554cd59af7c7c4ea97b049a5a039b3d1f3012c2` |
| 17 | `lemma` | [of_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/of-zero.md) | 165 | `result-track:9be593cda5682ef2c02a6effee231cb04b7d067458882b5d9933efaee7040a2d` |
| 18 | `lemma` | [of_add](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/of-add.md) | 166 | `result-track:ce37f62fa43590a6042242bdf19619d931d2425cb95a4dfc806accccc8afb8d1` |
| 19 | `lemma` | [of_smul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/of-smul.md) | 167 | `result-track:7fade8cabc59620fe7976a0c054088d7f135d66da038aa2e1701e16d087590dc` |
| 20 | `lemma` | [of_symm_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/of-symm-zero.md) | 169 | `result-track:3de590341030ebce86f6deb3721f1c70753909ca86b06c3bd6c91a1334ee33eb` |
| 21 | `lemma` | [of_symm_add](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/of-symm-add.md) | 170 | `result-track:a42318ccad958a8eee340a52c66d98630f2f03a1b33d936884cb96b0bd02442b` |
| 22 | `lemma` | [of_symm_smul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/of-symm-smul.md) | 172 | `result-track:c79f63a9be51ddaea42ed6af9aefe1bc2935882555f2e2172a3240a94fbc1804` |
| 23 | `lemma` | [of_nsmul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/of-nsmul.md) | 175 | `result-track:de228c432bb55b9b3be689a9ab1ea32c0bde559c703e16f26db7aa958f4c5612` |
| 24 | `lemma` | [of_symm_nsmul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/of-symm-nsmul.md) | 176 | `result-track:13a4ec838b9b89b41960e895a54f6455756950296cbbeaee3aca1e3bdeefcc34` |
| 25 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/instance.md) | 179 | `declaration-track:25e805c634c783f950a47caa1469ae2ed74619aa917b3edfbd94447e811ebde9` |
| 26 | `lemma` | [bracket_ofTwoCocycle](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/bracket-oftwococycle.md) | 211 | `result-track:36b9dd67394395aba85abc6baea5fb1674bd94f37030a51a194f89dcc4c16066` |
| 27 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 217 | `declaration-track:fbadad928b399e2f6bbe4041ce6b1d133a278fbdb62589dc23550eee20ee1847` |
| 28 | `def` | [LieEquiv.ofCoboundary](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/lieequiv-ofcoboundary.md) | 224 | `declaration-track:eccb90bfdd13d7c14e9acbf098f50ddeae7c4c5423d7fdddcc5126f046dfbc06` |
| 29 | `def` | [ofTwoCocycle](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/oftwococycle.md) | 252 | `declaration-track:d377499487b1c533ea2633a403cde5c931f83a47d5f2badffe58bacaa41c7bce` |
| 30 | `def` | [ofAlg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/ofalg.md) | 291 | `declaration-track:76d55d624bf6125fc87e5649132f47eb3a0cdf29b576b4e77fce6863d6f76dde` |
| 31 | `lemma` | [bracket](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/bracket.md) | 293 | `result-track:9c3129a95b8a6ee519c027e7f0f303d4b35e98bb2cf7e2c3c31ccd7c0eaa364d` |
| 32 | `lemma` | [ofTwoCocycle_incl_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/oftwococycle-incl-apply.md) | 298 | `result-track:22de665b4a238dc8d01585a84acb4bc91a987c7b1da72647b17923a238fc3365` |
| 33 | `lemma` | [ofTwoCocycle_proj_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/oftwococycle-proj-apply.md) | 302 | `result-track:899d25eacd9509a91cd6646bdeab057dee5e386468658f45bdaf04af3ff174ee` |
| 34 | `lemma` | [lie_incl_mem_ker](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/lie-incl-mem-ker.md) | 307 | `result-track:0fc43aee97738f57e12074fcdfe101aadd4844b56e8f06f7bc05f26a6790a709` |
| 35 | `def` | [toKer](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/toker.md) | 313 | `declaration-track:2dff96173d2cafffb8a2e8a7d1b76f54310aa949a3583ba024d586469d21094b` |
| 36 | `lemma` | [lie_toKer_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/lie-toker-apply.md) | 325 | `result-track:46c0f658eae26ab8e6d9a62268fa028d4fa335d4767a8a400aa93f4177e3cefa` |
| 37 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 329 | `declaration-track:4d5534e16bebb649ea47e44ed4fb688b791ea1a7740ec8c0ef01ad6b95c1789a` |
| 38 | `def` | [ringModuleOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/ringmoduleof.md) | 336 | `declaration-track:3d434f3d1fd1fe91eacf1014f9970f8e492cb1cb0c4b318e063194120eb65f0e` |
| 39 | `lemma` | [ringModuleOf_bracket_proj](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/ringmoduleof-bracket-proj.md) | 351 | `result-track:28cf15ab524ab6e67dbdba6ee016fd640d02a41d26fba8f4b05a3e0b25c15eba` |
| 40 | `lemma` | [lieModuleOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/liemoduleof.md) | 365 | `result-track:8411bb612544324bd47c8bcbac1900c6007fbb505aadb9efdb21b77906b56315` |
| 41 | `lemma` | [toKer_bracket](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/toker-bracket.md) | 377 | `result-track:bcec1ecd60c62264697726b1dd227f3556b8c749c8ab7b41479340116c44b15c` |
| 42 | `lemma` | [lie_apply_proj_of_leftInverse_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/lie-apply-proj-of-leftinverse-eq.md) | 382 | `result-track:732d65380ae2eaaecb9d2fb638f88e9081d4f8751df98f73be7cc5a8fff250c0` |
| 43 | `abbrev` | [twoCocycleAux](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/twococycleaux.md) | 390 | `declaration-track:24454ec83b68d04839c14d23155f1fed88ffec00e20804b1dda794f80446f120` |
| 44 | `def` | [twoCocycleOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/twococycleof.md) | 404 | `declaration-track:ab7f69d43403ad377943eaad6e91a43fd11851e39c8f1716b3b4e8466d1e3703` |
| 45 | `def` | [oneCochainOfTwoSplitting](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/onecochainoftwosplitting.md) | 436 | `declaration-track:d7bcda146f749b1e41c1a4049d053bd643d7acaf21463d016e11ba77c0dc14a3` |
| 46 | `lemma` | [d₁₂_oneCochainOfTwoSplitting](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionNamespacedPublic.lean/declarations/d-onecochainoftwosplitting.md) | 448 | `result-track:6c9282ef889be0a77d99ebb4dd4671f3e3fbb7734a7dd1c28e0573672126abfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e50dd6de884c99a44d3dadcfc3d562db4782de2d9815b37578010cc1b1645f6f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Extension/Variantcc9dfd4481d4bff0e3af92c1f6fb5731f4bc6345de7e343f61adbbb8e1fa1ba0.lean","GRWTSK/_verification/specifications/Algebra/Extension/Variantcc9dfd4481d4bff0e3af92c1f6fb5731f4bc6345de7e343f61adbbb8e1fa1ba0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
