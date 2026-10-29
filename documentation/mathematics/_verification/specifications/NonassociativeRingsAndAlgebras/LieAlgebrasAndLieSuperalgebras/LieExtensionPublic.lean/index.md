# Verification target: Lie Extension Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3004ea302df468384135cd2540eb5c44bba4a8f4",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Extension/Variante0f98c03529588821104cd2c9db72cbf5798a3b8f8763dd797128f9298efc69c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3004ea302df468384135cd2540eb5c44bba4a8f4`.

Source path: `GRWTSK/Algebra/Extension/Variante0f98c03529588821104cd2c9db72cbf5798a3b8f8763dd797128f9298efc69c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Extension/Variante0f98c03529588821104cd2c9db72cbf5798a3b8f8763dd797128f9298efc69c.lean.json)

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
| 1 | `class` | [IsExtension](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/isextension.md) | 59 | `declaration-track:05cf0a7c974a0d1502cd82708098748efb9ba4671726f1e02568746eee7fb4df` |
| 2 | `lemma` | [_root_.LieHom.range_eq_ker_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/root-liehom-range-eq-ker-iff.md) | 64 | `result-track:510dce2535bce2292d8f260bd630a9fce9c5fce55e9fc6cf8cd8917cc1b6206d` |
| 3 | `def` | [IsExtension.kerEquivRange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/isextension-kerequivrange.md) | 69 | `declaration-track:212fff013e083dc0cb7d82881e527e5d99a84d2ac246c51ba292b4206a6a0795` |
| 4 | `structure` | [Extension](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/extension.md) | 76 | `declaration-track:94e37e7cc85fd602bc19af052e16d5c7e8b5c313924cbdc3b6b6ce9c2478ef22` |
| 5 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/instance-source-edition-7.md) | 89 | `declaration-track:e973e5cb07725c0c91455896797ea58979bbf03cec056b12b3926301bb9cb2ae` |
| 6 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/instance-source-edition-2.md) | 90 | `declaration-track:5e22779de053634399e075b1140417b25fb3f970cfed3b196e83c67b42f9ec9e` |
| 7 | `def` | [IsExtension.extension](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/isextension-extension.md) | 93 | `declaration-track:9727b81b00e0a82b4f8e337fe700f0ee645de369563218850c793da05c807946` |
| 8 | `lemma` | [isExtension_of_surjective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/isextension-of-surjective.md) | 98 | `result-track:fd4eae5e99041e4fb0c3be7699973f1239bb8a4b1479583dbe6189be5d878e33` |
| 9 | `lemma` | [incl_apply_mem_ker](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/incl-apply-mem-ker.md) | 110 | `result-track:4d691aa82abac902299e33df77edd7326cc7fa8e31fb5b05c776765e707b3440` |
| 10 | `lemma` | [proj_incl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/proj-incl.md) | 114 | `result-track:f0bb31a724073fec567c8b93dc598dab168a607cea7f0daed72b9400608f7de5` |
| 11 | `lemma` | [incl_injective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/incl-injective.md) | 118 | `result-track:d87a4b6b333ecf27604883368dc7c5ac6a795ca0f92f63e9907d26757343a890` |
| 12 | `lemma` | [proj_surjective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/proj-surjective.md) | 122 | `result-track:b82f3179c4c712f444ebcf246797bede7647bfd3df41451ce85b675b690f4074` |
| 13 | `structure` | [ofTwoCocycle](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/oftwococycle-source-edition-2.md) | 136 | `declaration-track:8422db5ec8a44c9bb5ca1fbce33a553d851aaf7705a72ee6497e5f138b82135a` |
| 14 | `def` | [ofProd](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/ofprod.md) | 148 | `declaration-track:826072c5ed06bb5c9a83561f93d34c53905d46d7e5c9911de507b9387ae0e9d4` |
| 15 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/instance.md) | 153 | `declaration-track:2c36928d2cb3b8a3a2e954f6540cd6149cd335aa3ae4537d76d809c7393ee9ae` |
| 16 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/instance-source-edition-4.md) | 154 | `declaration-track:b75984100422b9695212ad7b0bb48b93e118d48bfba106a31a576df3e887557a` |
| 17 | `lemma` | [of_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/of-zero.md) | 157 | `result-track:a5460436201261bbbe9f506c4c0d8c075114e46bf322d03e482628803193d868` |
| 18 | `lemma` | [of_add](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/of-add.md) | 158 | `result-track:c274f9b0d834afebfda153ea033099607c45e6a33d2fdd3f17d183cdaa6ab064` |
| 19 | `lemma` | [of_smul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/of-smul.md) | 159 | `result-track:83fa3ef277deca371d478c3c9395b406a0e7b5bb08c2296e29f459089349dc59` |
| 20 | `lemma` | [of_symm_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/of-symm-zero.md) | 161 | `result-track:12e660242c6178adf1c72f7460c26285a3adc0dde33b22c56c3e21d6ca846a4a` |
| 21 | `lemma` | [of_symm_add](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/of-symm-add.md) | 162 | `result-track:0551dc06606fdf141b74974ba15a220062ff325b92f584ff6905b6f5c9072a02` |
| 22 | `lemma` | [of_symm_smul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/of-symm-smul.md) | 164 | `result-track:189b73d2d5b7785b7692eafa60b1657fa626e2429fa92cb74ab6b9956592aecb` |
| 23 | `lemma` | [of_nsmul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/of-nsmul.md) | 167 | `result-track:ad5d736427542b1c8f18d89e0464da13ec630a56ec4d8e699479ff5c8fe69c19` |
| 24 | `lemma` | [of_symm_nsmul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/of-symm-nsmul.md) | 168 | `result-track:25caa0df4711cbe45148e4b12f30e45134030984b2fb8eba33f7cae4610ba5cd` |
| 25 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/instance-source-edition-6.md) | 171 | `declaration-track:cef10014c7827329c9008e419ff12eda70ab10588ab402e04de7082cf4050ca0` |
| 26 | `lemma` | [bracket_ofTwoCocycle](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/bracket-oftwococycle.md) | 203 | `result-track:8a78b920789d204267e7b835f8b7b6d71b530bcd3ef4667e2e9c3d111e9d0f27` |
| 27 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/instance-source-edition-3.md) | 209 | `declaration-track:ad639536bb764cb17e4faea6f0205d1728a4bb9f0a814fc4e852089f6d54770a` |
| 28 | `def` | [LieEquiv.ofCoboundary](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/lieequiv-ofcoboundary.md) | 216 | `declaration-track:ee81ca928d4fa6b76e4eb2d6cd15c23d3f0fbbde3515a8f279d9412244f3af30` |
| 29 | `def` | [ofTwoCocycle](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/oftwococycle.md) | 244 | `declaration-track:2d064cd64ca9c57c1392c89892885f1bc28521a4ad4b1ae6b40c6ccca778424b` |
| 30 | `def` | [ofAlg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/ofalg.md) | 283 | `declaration-track:4aab44bdd8f2efe6b256efb3e8e1f3f1e34fdc05f82bd42e2c7d795d80affce4` |
| 31 | `lemma` | [bracket](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/bracket.md) | 285 | `result-track:43307582381d860b6026efe4deb9a761006eaf75a0a0dbaa649df9a7ec1d3c8f` |
| 32 | `lemma` | [ofTwoCocycle_incl_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/oftwococycle-incl-apply.md) | 290 | `result-track:b3a5feda9301a3e24008a8ef2404d090f1921d3272ce44b1d03fd90988f615ec` |
| 33 | `lemma` | [ofTwoCocycle_proj_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/oftwococycle-proj-apply.md) | 294 | `result-track:b8f5116eca07a2b6735c992b2fb0240876774431f07d0b5e0fae7e09bb317684` |
| 34 | `lemma` | [lie_incl_mem_ker](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/lie-incl-mem-ker.md) | 299 | `result-track:de326a3b6fd19cb88c306b9be4af4ec0da32168e94891e0aec9429c65e0debdd` |
| 35 | `def` | [toKer](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/toker.md) | 305 | `declaration-track:965ec5e947ef75a6a5cb682b40ab282881efbb32eb1823d348000f20971f53ef` |
| 36 | `lemma` | [lie_toKer_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/lie-toker-apply.md) | 317 | `result-track:4e4c0b083f31aa310af38509326e967326842532d3790d13a7584f46ea64c3e5` |
| 37 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/instance-source-edition-5.md) | 321 | `declaration-track:c512403acac401adf661e33a23d43303a420e27855465e52d6a42cb0da6e65b5` |
| 38 | `def` | [ringModuleOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/ringmoduleof.md) | 328 | `declaration-track:38de3a01a1e41c16e484bb25ef0bbba43eccb8018ea0a6c78a90b9a818c6c046` |
| 39 | `lemma` | [ringModuleOf_bracket_proj](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/ringmoduleof-bracket-proj.md) | 343 | `result-track:affd9b7afaafcd8a030fa0fd0870006e776dbe71260191bff114fd8868d06c18` |
| 40 | `lemma` | [lieModuleOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/liemoduleof.md) | 357 | `result-track:59f75b4ff9302edbae65ce766050d50c1a6457548748a3bdd84bf2d1e2bf55f4` |
| 41 | `lemma` | [toKer_bracket](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/toker-bracket.md) | 369 | `result-track:b7b65a3d4fc1ee03259dc51d8e40f2c62c0a574f433d8582b05f10f939c9fd91` |
| 42 | `lemma` | [lie_apply_proj_of_leftInverse_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/lie-apply-proj-of-leftinverse-eq.md) | 374 | `result-track:dbf2a4eccf8bf895ccc9831b0eecab34972f26a11e127dd2d77769674cab0ca7` |
| 43 | `abbrev` | [twoCocycleAux](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/twococycleaux.md) | 382 | `declaration-track:2569514d23ee28040901dffcd01a6be9c14222c1b837b94674bc73a98616330f` |
| 44 | `def` | [twoCocycleOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/twococycleof.md) | 396 | `declaration-track:18af77e58a361eed7d3ad97096cf4da6b41572d7903fd3597aae5564c855ba35` |
| 45 | `def` | [oneCochainOfTwoSplitting](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/onecochainoftwosplitting.md) | 428 | `declaration-track:815c99fd2aa6ca35d5f760832e4f731c4250bcf4e17e29fe00cb0bd595fe0a71` |
| 46 | `lemma` | [d₁₂_oneCochainOfTwoSplitting](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieExtensionPublic.lean/declarations/d-onecochainoftwosplitting.md) | 440 | `result-track:22237dd86557b13025d5fd3aaae4a1176feda294a17506606161a59a6a98653c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9bdc0c0cceb394f037f740c76007fa6ba4eca702f455ef53ed1190ac9771db67 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Extension/Variante0f98c03529588821104cd2c9db72cbf5798a3b8f8763dd797128f9298efc69c.lean","GRWTSK/_verification/specifications/Algebra/Extension/Variante0f98c03529588821104cd2c9db72cbf5798a3b8f8763dd797128f9298efc69c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
