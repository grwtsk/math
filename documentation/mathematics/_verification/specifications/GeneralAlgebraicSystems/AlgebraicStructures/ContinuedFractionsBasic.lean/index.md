# Verification target: Continued Fractions Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5196332454ed6561750c58b001a8615193a4193d",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantfb160a56f132f81024cc390a4f814d51c0d72f60b8a74d448719d1b548a5d5e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5196332454ed6561750c58b001a8615193a4193d`.

Source path: `GRWTSK/Algebra/Basic/Variantfb160a56f132f81024cc390a4f814d51c0d72f60b8a74d448719d1b548a5d5e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantfb160a56f132f81024cc390a4f814d51c0d72f60b8a74d448719d1b548a5d5e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Seq.Seq` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GenContFract.Pair](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/gencontfract-pair.md) | 47 | `declaration-track:56e72432518941c70eafd1ac966b89c720e89d5e0f3588bbb226564170f35272` |
| 2 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/instance-source-edition-5.md) | 63 | `declaration-track:937d8f82cb96368bb0d0074957e4841328d61683d7bffdca5f72ccb95fe24974` |
| 3 | `def` | [map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/map.md) | 67 | `declaration-track:f2f524a3d6743ed1250a83e8709c424c508650508a4d2621a2587a0158a9c5d2` |
| 4 | `def` | [coeFn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/coefn-source-edition-2.md) | 77 | `declaration-track:fbc6d0bebdf97ab5b0b5a45a44106807d7e17eb9be580e3c7536e9460578a4d8` |
| 5 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/instance-source-edition-2.md) | 80 | `declaration-track:1bd2e41b03f3c7dc149e8f618fb742e20fa23607478d268c7417e467cee60765` |
| 6 | `theorem` | [coe_toPair](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/coe-topair.md) | 84 | `result-track:6aa6e51d19a1d8c9a0a26cba1597edf459abc25b876bea1bffb7c23606a04e3a` |
| 7 | `structure` | [GenContFract](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/gencontfract.md) | 105 | `declaration-track:2d12b6850f0171a96db5f9bd8f3eabd69e2c706ef5261a22fb5f5244ae987685` |
| 8 | `def` | [ofInteger](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/ofinteger.md) | 116 | `declaration-track:73a5d3960da0ac09345e3437e346a74be2ccc303e5a7aece869045b86a1cbe00` |
| 9 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/instance-source-edition-9.md) | 119 | `declaration-track:ff26bcb2a541733ae67261b02b7ceae65cd71a415c9d21c789676f1cb1239f9e` |
| 10 | `def` | [partNums](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/partnums.md) | 123 | `declaration-track:21a5cbea768f191b8f62148499c5d18f44502059b2eda6e79ee7407503c9f93e` |
| 11 | `def` | [partDens](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/partdens.md) | 127 | `declaration-track:0f25b4c4dd1b51e22be5c5b61c99e19ce834236203657307da440f13f7a09030` |
| 12 | `def` | [TerminatedAt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/terminatedat.md) | 131 | `declaration-track:654e38aaaed2527f0d8bfc86f3d12f8ca4158ec77da52ae58a8a2927d9c2e026` |
| 13 | `instance` | [terminatedAtDecidable](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/terminatedatdecidable.md) | 135 | `declaration-track:90cc475408f1404c2cf033b2fcee2e9e15f2e6d839e635264efee7767cbe595d` |
| 14 | `def` | [Terminates](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/terminates.md) | 141 | `declaration-track:29b22010f79a02bf2ad37f760e0d977816b13537d88b3c8e515e5844f644c691` |
| 15 | `def` | [coeFn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/coefn.md) | 154 | `declaration-track:271a88a880cadfe96ea015b085e661dc80af2e1abb6e07cf3bf32112166a5910` |
| 16 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/instance-source-edition-8.md) | 158 | `declaration-track:f7384fde5f97f4c72495dd27ffb4963b2c4e6d2cc67d43bab9285d7f582c4b16` |
| 17 | `theorem` | [coe_toGenContFract](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/coe-togencontfract.md) | 162 | `result-track:b7b13c2120fc053354e3dc2d78c66972270524ad6707a3d0ab570f5f529bd916` |
| 18 | `def` | [GenContFract.IsSimpContFract](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/gencontfract-issimpcontfract.md) | 180 | `declaration-track:30a9bcd1c254c8adc32d3f7b024ab0159457982631f17344cbaeab83080c65ea` |
| 19 | `def` | [SimpContFract](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/simpcontfract.md) | 197 | `declaration-track:e1c15d907956fb0988525c8e64cb0e910c58120e427824c99770d37dd42c3f06` |
| 20 | `def` | [ofInteger](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/ofinteger-source-edition-3.md) | 206 | `declaration-track:ed5be1b244a116771130db538c06eda0a376c4934d00fcb1e5c112426b038d8c` |
| 21 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/instance-source-edition-3.md) | 209 | `declaration-track:235228f38584fa37f367d9e1a41b03a7e0e492d8e0daea2cd35f88d9a445ea46` |
| 22 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/instance.md) | 213 | `declaration-track:1420f25cdf6dd349dc5fc596760302410476d4ee3e1b0f21288ed2f4bc123042` |
| 23 | `def` | [SimpContFract.IsContFract](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/simpcontfract-iscontfract.md) | 222 | `declaration-track:0fbdcf27a60d0a6ecb3df76f0385fc188ec69433a0566067f5dbdc3e2ae07cfc` |
| 24 | `def` | [ContFract](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/contfract.md) | 231 | `declaration-track:ece4cc716e5fbaaef85755c786d3165ccc23d11fb03ce46add0939a0b1435f0f` |
| 25 | `def` | [ofInteger](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/ofinteger-source-edition-2.md) | 241 | `declaration-track:a8e3184fb35d8f4fc4858a7cacc166e3d120c5ae0da591dc81fa9b53e3485dc2` |
| 26 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/instance-source-edition-6.md) | 244 | `declaration-track:99401e7c756b6aed67019b4a33084402a0449e8f7a09b13bbbf9dfe9c7dfe439` |
| 27 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/instance-source-edition-4.md) | 248 | `declaration-track:9075f332c62acd145af99bd7918055e66b498b40ff0b3b4e9aa70ec8d868ba65` |
| 28 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/instance-source-edition-7.md) | 252 | `declaration-track:da0151200969545c210a059805d94414708d4650677015f02656c5dc49d0b613` |
| 29 | `def` | [nextNum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/nextnum.md) | 283 | `declaration-track:ff70ac8f250e9c2aacd647c5944cb53f03846a488a0002d5f178c0b456ce3635` |
| 30 | `def` | [nextDen](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/nextden.md) | 289 | `declaration-track:659190e4c7bf1f15c4e6b4e55a321f64c1930124d0c429ac6873e5f94692b0f0` |
| 31 | `def` | [nextConts](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/nextconts.md) | 296 | `declaration-track:a843db17308c099dcf591ef10bf98cab0c4101cc704fb560f8147e66e4bd6642` |
| 32 | `def` | [contsAux](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/contsaux.md) | 300 | `declaration-track:21c75d98f84b0d9553a6d7262de813b221c5661d93f1f837964218a1eeba7fdb` |
| 33 | `def` | [conts](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/conts.md) | 309 | `declaration-track:3328a665336338d1f3d0e8b05de6c3b992a53146da6b39763c4aae2f711a0035` |
| 34 | `def` | [nums](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/nums.md) | 313 | `declaration-track:e6da47275b71940ed07cd4518749f47f20aa1d79642178ceef59d51c27e1730a` |
| 35 | `def` | [dens](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/dens.md) | 317 | `declaration-track:4aea8042212357747f133bdf686139e61aaec920a38a6a938c9e377c6c51aa8d` |
| 36 | `def` | [convs](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/convs-source-edition-2.md) | 321 | `declaration-track:6c6c3ce5e1ffbc2faa876d5144a0871ae6bfc247b7654b7a2043931390af34e4` |
| 37 | `def` | [convs'Aux](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/convs-aux.md) | 329 | `declaration-track:db9717b0cb237565d3a643bc1119b248eb69badfc79812cd51b57ab5f71e7797` |
| 38 | `def` | [convs'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsBasic.lean/declarations/convs.md) | 340 | `declaration-track:3cce0f844b207ea9c977dd1a497c548b0a56de5ab5719a1ca344c2ba26f0311f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b66506c4178306c5084a7853585a680ac41beed681ccade00881d2aa06d28e21 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variantfb160a56f132f81024cc390a4f814d51c0d72f60b8a74d448719d1b548a5d5e1.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variantfb160a56f132f81024cc390a4f814d51c0d72f60b8a74d448719d1b548a5d5e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
