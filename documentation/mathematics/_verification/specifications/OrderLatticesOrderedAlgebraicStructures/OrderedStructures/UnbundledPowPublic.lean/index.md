# Verification target: Unbundled Pow Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea19183fd6b18f3ffb78d10fa5e0c3d0cd02904b",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pow/Variantad2a7c372fb3a21e4bae54f421dd83fb4a8aa7079a46372e2da970452d7df2e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea19183fd6b18f3ffb78d10fa5e0c3d0cd02904b`.

Source path: `GRWTSK/Algebra/Pow/Variantad2a7c372fb3a21e4bae54f421dd83fb4a8aa7079a46372e2da970452d7df2e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pow/Variantad2a7c372fb3a21e4bae54f421dd83fb4a8aa7079a46372e2da970452d7df2e1.lean.json)

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
| 1 | `theorem` | [one_le_pow_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/one-le-pow-of-le.md) | 34 | `result-track:b28bbb8cdff8787e9348ab53505f0d5d4d96c4a39219008829a41cafc3097875` |
| 2 | `theorem` | [pow_le_one_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/pow-le-one-of-le.md) | 41 | `result-track:444d3f8886f6a1b341f978dda664a74e72454dfc85a281f2cafea45283db781a` |
| 3 | `theorem` | [pow_lt_one_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/pow-lt-one-of-lt.md) | 44 | `result-track:971df508139170ca9e689d89048674e259e6f44c75825537dd65cb55735582d0` |
| 4 | `theorem` | [pow_right_monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/pow-right-monotone.md) | 60 | `result-track:618064b29ce8613c5096504769d6387ac7ac310b5ca670cf86f2e764e9551b6a` |
| 5 | `theorem` | [pow_le_pow_right'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/pow-le-pow-right.md) | 65 | `result-track:e67acafb472a431cd35572f8eb3a76e580882721ab0deefb3f6b579636c06d8b` |
| 6 | `theorem` | [pow_le_pow_right_of_le_one'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/pow-le-pow-right-of-le-one.md) | 69 | `result-track:bb4d1fc46ae40dd5538f8155f936a52eca8b14e3c8d5266e609ece1f01c8dbb3` |
| 7 | `theorem` | [one_lt_pow'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/one-lt-pow.md) | 73 | `result-track:1f2b588c640f47101c21dd8d64b79608d8ea201d2b5b2c90621636d5c79233e6` |
| 8 | `lemma` | [le_self_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/le-self-pow.md) | 77 | `result-track:8ce31bc54fb52316776dbe38fac9fd6dd00bebba4ddb6b3ce8672bf1131ddd18` |
| 9 | `theorem` | [pow_right_strictMono'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/pow-right-strictmono.md) | 87 | `result-track:3bace408b6a211f29be86ed301b60fb909c08f29495e3c52506506dbc29bbb4f` |
| 10 | `theorem` | [pow_lt_pow_right'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/pow-lt-pow-right.md) | 91 | `result-track:94d6db831d1818cbcefb521ac91e62909c21c214a7eceef2476928f5de0d9081` |
| 11 | `theorem` | [Right.one_le_pow_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/right-one-le-pow-of-le.md) | 101 | `result-track:cf933468d18699e503674b229be172876703685244d93533ea53b67907694b2e` |
| 12 | `theorem` | [Right.pow_le_one_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/right-pow-le-one-of-le.md) | 108 | `result-track:e2151348dd7d1fe99dc3091683c6e612751ba483bb9390bb75f1e3172102221f` |
| 13 | `theorem` | [Right.pow_lt_one_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/right-pow-lt-one-of-lt.md) | 112 | `result-track:818c2c21f2877671bc736524d90bf76b8a807559a40b26f81266ec9fdd0ca4da` |
| 14 | `lemma` | [pow_le_pow_mul_of_sq_le_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/pow-le-pow-mul-of-sq-le-mul.md) | 120 | `result-track:b075ea8c090fc37e3481d28f627fd4532fb89c6afe4193ede5a831e7cabd6cd6` |
| 15 | `theorem` | [StrictMono.pow_const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/strictmono-pow-const.md) | 138 | `result-track:d4191c61e0ac64c805ab9b736d11de27a7a89b7c8dbb3f2b41d6019277e29ff4` |
| 16 | `theorem` | [pow_left_strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/pow-left-strictmono.md) | 146 | `result-track:860e204d07ae7edf88c054cda04202837548cc46d68e1fd0a98d72ebca359e90` |
| 17 | `lemma` | [pow_lt_pow_left'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/pow-lt-pow-left.md) | 149 | `result-track:c489e0b5628e6c6b7466c55401b26bb432b2f63a8d1f8ff9d411d1014a19a01e` |
| 18 | `theorem` | [pow_le_pow_left'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/pow-le-pow-left.md) | 159 | `result-track:b4f9a80de15a61e30155b8b95a167dc24a4cf2840ca251057a50877a54319c9f` |
| 19 | `theorem` | [Monotone.pow_const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/monotone-pow-const.md) | 166 | `result-track:8c74d99065e850c2a6d74eec709984eea59d2c7a3673e7fe6824bc56f614bd02` |
| 20 | `theorem` | [pow_left_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/pow-left-mono.md) | 173 | `result-track:74eab34d90ffa472ace7ee39f79d6f8ed66d7a37f0119df80df14188ece6a84b` |
| 21 | `lemma` | [pow_le_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/pow-le-pow.md) | 177 | `result-track:707962d2da174b71f04b5e62ea8b81bb0960ad9a51248ee6cce7a17410460441` |
| 22 | `lemma` | [le_pow_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/le-pow-sup.md) | 187 | `result-track:27ca742aee081789d5f9bf22c12043f888877eea708b00c5d7d0b5fadc01c47b` |
| 23 | `lemma` | [pow_inf_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/pow-inf-le.md) | 195 | `result-track:97c184ff26b7f50ffc40f7abdd5365d33abadbd3cad38b3d28e1f099858419f5` |
| 24 | `theorem` | [one_le_pow_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/one-le-pow-iff.md) | 210 | `result-track:a02949098500294c46b5556b5efa3727e8b253aae7d4bb28210f6cb8ac0d86af` |
| 25 | `theorem` | [pow_le_one_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/pow-le-one-iff.md) | 214 | `result-track:9ae4e0deb817ebb6a5cad80f6e19924835db00401619aacf3b22c609e8ec3a2a` |
| 26 | `theorem` | [one_lt_pow_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/one-lt-pow-iff.md) | 218 | `result-track:54613247089f0e551b52938a031c5c40b49e7f756f7a0cf3cccbfe6537852de6` |
| 27 | `theorem` | [pow_lt_one_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/pow-lt-one-iff.md) | 222 | `result-track:0c43c40d1c924978a2cd9621c20a073e053062fa901a6abca2426cbd85f77bfc` |
| 28 | `theorem` | [pow_le_pow_iff_right'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/pow-le-pow-iff-right.md) | 232 | `result-track:ab898f92ce317938357a1d917c9cff874dabcf689515e994cff02d7449e6aec7` |
| 29 | `theorem` | [pow_lt_pow_iff_right'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/pow-lt-pow-iff-right.md) | 236 | `result-track:482c16139879043b419a4784e595393ebc5df08d70fd15ea34003314aad26dc0` |
| 30 | `theorem` | [lt_of_pow_lt_pow_left'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/lt-of-pow-lt-pow-left.md) | 246 | `result-track:b0754620cd41823cdb9fd53b14766b5be173aae08137f570debe24dfcb8d762f` |
| 31 | `theorem` | [min_lt_of_mul_lt_sq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/min-lt-of-mul-lt-sq.md) | 250 | `result-track:a496d2cd24f4582e0ddc6b01d965a07f7a0da86abaabd83de6297c8ca0dedeaa` |
| 32 | `theorem` | [lt_max_of_sq_lt_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/lt-max-of-sq-lt-mul.md) | 254 | `result-track:173f94956addeceae7ae1f1b0569f88ab1c3498301869ddba086ec99cbd8f07c` |
| 33 | `theorem` | [pow_le_pow_iff_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/pow-le-pow-iff-left.md) | 264 | `result-track:cc62fe054375f7c5c3513c6730b9f52a8bb4b351a5f1fcaf36720e3265ce7a14` |
| 34 | `theorem` | [min_le_of_mul_le_sq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/min-le-of-mul-le-sq.md) | 271 | `result-track:e9c2320a49f9f20da60165cd30c93fa138ef5654284f56922cb5f3a310ff0f5f` |
| 35 | `theorem` | [le_max_of_sq_le_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/le-max-of-sq-le-mul.md) | 275 | `result-track:f239b7634e4e50371c2958c88f4947963002da467196804dae191ed6fef33d21` |
| 36 | `theorem` | [Left.pow_lt_one_iff'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/left-pow-lt-one-iff-source-edition-2.md) | 281 | `result-track:fa030a514343348895a96509d8690bd925db0898ba3dccaaf85b70006c84dc74` |
| 37 | `theorem` | [Left.pow_lt_one_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/left-pow-lt-one-iff.md) | 286 | `result-track:1e7517fcca6d3c917cf9cdd355b8c99159352f18741af70337197553a3701f90` |
| 38 | `theorem` | [Right.pow_lt_one_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/right-pow-lt-one-iff.md) | 290 | `result-track:82dac19798aed003220fdfd59bff63b1b29e8fe8232123296ad1f9effd812f40` |
| 39 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/instance.md) | 296 | `declaration-track:eea005470412f02bd3d15285a1553f83e8ce8b44843922fa8f148b5c001a6c60` |
| 40 | `theorem` | [one_le_zpow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/one-le-zpow.md) | 308 | `result-track:9b0478c69ba10883fc2492a6be9284c6cc1e1739f6793f284c60ddd011b7899e` |
| 41 | `lemma` | [one_lt_zpow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledPowPublic.lean/declarations/one-lt-zpow.md) | 314 | `result-track:ed7576d0bc703114fd9f61c9c86f7f1931fe6fd7b88287dfb50f68fdff50c59b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc9c2791c0e36ac5da2c5aa890ec294bbb45448cf1e3bb71d37075e7c9588038 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Pow/Variantad2a7c372fb3a21e4bae54f421dd83fb4a8aa7079a46372e2da970452d7df2e1.lean","GRWTSK/_verification/specifications/Algebra/Pow/Variantad2a7c372fb3a21e4bae54f421dd83fb4a8aa7079a46372e2da970452d7df2e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
