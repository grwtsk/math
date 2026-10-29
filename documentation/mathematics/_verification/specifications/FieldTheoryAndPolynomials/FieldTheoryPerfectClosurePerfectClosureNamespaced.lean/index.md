# Verification target: Field Theory Perfect Closure Perfect Closure Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e2c3a45e4a6356d1feb76bc8bfb787e7690b655",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PerfectClosure/Variant12232e57a0c3b04ba1737b5f94edbd5286b571a3a55faa3130194005597f3ad3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e2c3a45e4a6356d1feb76bc8bfb787e7690b655`.

Source path: `GRWTSK/Algebra/PerfectClosure/Variant12232e57a0c3b04ba1737b5f94edbd5286b571a3a55faa3130194005597f3ad3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PerfectClosure/Variant12232e57a0c3b04ba1737b5f94edbd5286b571a3a55faa3130194005597f3ad3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Perfect` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PerfectClosure.R](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/perfectclosure-r.md) | 69 | `declaration-track:a983ef10c64621e4d19eaf6b1bdba97aa1000d20ae244d34ebc14d77423f9878` |
| 2 | `def` | [PerfectClosure](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/perfectclosure.md) | 73 | `declaration-track:31c2109df9bddfab08abaf3d843f58d9bad36611c5658df762ab828775a49e98` |
| 3 | `def` | [mk](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/mk.md) | 89 | `declaration-track:1504a5a31d82f034d786f10aedc03653af823bbcf919b013d054298703895709` |
| 4 | `theorem` | [mk_surjective](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/mk-surjective.md) | 92 | `result-track:158d42998ce1c232adbdffafec6c2b4f9758eeee0a96355f40810d8cbeb04dab` |
| 5 | `theorem` | [mk_succ_pow](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/mk-succ-pow.md) | 94 | `result-track:5e57e8eca562cf51e49edb58cb292dbda4f98dd3edbda418dad7f9e7cf5872d2` |
| 6 | `theorem` | [quot_mk_eq_mk](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/quot-mk-eq-mk.md) | 98 | `result-track:524177f86476ba22c696653d21d3a7588631127ebe35e76fbd92d92290cc50a9` |
| 7 | `def` | [liftOn](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/lifton.md) | 104 | `declaration-track:ff8ee59273396ed70b80d2f51938f0a31d78f7a83d7cb7ce20c1336643bdb575` |
| 8 | `theorem` | [liftOn_mk](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/lifton-mk.md) | 109 | `result-track:8827abe4c7b4b9d47d63d2beae4fd7f75f0c42407313655970fc9f0c0740f3d1` |
| 9 | `theorem` | [induction_on](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/induction-on.md) | 114 | `result-track:9bcc2a271b8a93c1bd43e61feafda095b59dd8afb0a2aa5b0cad35763e08a721` |
| 10 | `theorem` | [mul_aux_left](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/mul-aux-left.md) | 120 | `result-track:2be12a7fcfe7d95e491651fa5407f55113a3e6fc5ac19942af8df4015066c31b` |
| 11 | `theorem` | [mul_aux_right](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/mul-aux-right.md) | 130 | `result-track:5c1c3cf4e52a2e9a6c489bcd4d2a683956948cf2ed9396c3588ebfc6cb3c718b` |
| 12 | `instance` | [instMul](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/instmul.md) | 139 | `declaration-track:bbfb335925be8a47d09f233d795fc9025ffd242bbf06de53b9a91d3a05eb2ae9` |
| 13 | `theorem` | [mk_mul_mk](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/mk-mul-mk.md) | 150 | `result-track:f41200b6d9f38a3eb368d2bb9f33fbc0ad316182206c06aae75bb9439e3482e3` |
| 14 | `instance` | [instCommMonoid](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/instcommmonoid.md) | 155 | `declaration-track:b0c0c6e13a7703e625e5465ea3f04a28c3274259c025244661399af46ae4f266` |
| 15 | `theorem` | [one_def](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/one-def.md) | 179 | `result-track:3c93e20c4b7f14615036a9104535dd52ffe745c56b58e4d9da2d175dbd67f45f` |
| 16 | `instance` | [instInhabited](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/instinhabited.md) | 182 | `declaration-track:6da07e79031e7d17cca9bb87a6b929832ed7e90bdf69be8333236a8ee93671d7` |
| 17 | `theorem` | [add_aux_left](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/add-aux-left.md) | 185 | `result-track:f70ff479bde5b70817d2145d327731b4b8b48e132fe1fe4a8624b703dd087403` |
| 18 | `theorem` | [add_aux_right](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/add-aux-right.md) | 195 | `result-track:d2b5cd342554b4752a073e3b5f9a4cf867298a43e2b7e4f44ee1130c61643aaa` |
| 19 | `instance` | [instAdd](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/instadd.md) | 204 | `declaration-track:9fe02da279c8901307a7a4df5a3125e29cbc824523eed231241704af49bce019` |
| 20 | `theorem` | [mk_add_mk](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/mk-add-mk.md) | 215 | `result-track:36c24e78c0275f62707e934f470cd01edfeefbd26b98b85faa03fc97009facc0` |
| 21 | `instance` | [instNeg](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/instneg.md) | 220 | `declaration-track:301cf6020a6e07fa4d8c8ab304b9b85a77429ff727e1748d2e26043a75f74452` |
| 22 | `theorem` | [neg_mk](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/neg-mk.md) | 226 | `result-track:7994fa616cf9b1341449bad65146e896aea976dbb9a425e149ed9cf3937b037a` |
| 23 | `instance` | [instZero](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/instzero.md) | 229 | `declaration-track:fae0da1c86b19da0e6f2d6407de4367a08d0803038d015817313dc2cec560a37` |
| 24 | `theorem` | [zero_def](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/zero-def.md) | 232 | `result-track:6ca808912e30ffe125dfe9800f3326d044f03b2548d3e87ef97013c8cbbfce29` |
| 25 | `theorem` | [mk_zero](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/mk-zero.md) | 238 | `result-track:0bbc80ca1381bf6af665a22ab8917e4ea106e41c381aaae585455c015d51752f` |
| 26 | `theorem` | [mk_zero_right](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/mk-zero-right.md) | 242 | `result-track:302acef330255ef916be5c753ee6e310fddcd82101213ef0bb4f1b14de806363` |
| 27 | `theorem` | [R.sound](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/r-sound.md) | 251 | `result-track:db43a38e2c11428d6f600c640a75138d81eee3dcdc137da709fcc48c8ee3d213` |
| 28 | `instance` | [instAddCommGroup](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/instaddcommgroup.md) | 260 | `declaration-track:d7059de02e6d2120f97960148008cd128d73634fdc2bd52f40a1d802122a7b0b` |
| 29 | `instance` | [instCommRing](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/instcommring.md) | 289 | `declaration-track:b180cb84415dea20bb0b120fcd8e32242410d876605cde7998ef09d056e4dff7` |
| 30 | `theorem` | [mk_eq_iff](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/mk-eq-iff.md) | 320 | `result-track:cceebd4abcc0492462325018e7bbf06bb256a087fd5accc915aea828165c6125` |
| 31 | `theorem` | [mk_pow](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/mk-pow.md) | 345 | `result-track:2f2522720e704ab47e8591335f36f711f43dd1cc9830e5a9f50c3e4b9b839218` |
| 32 | `theorem` | [natCast](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/natcast.md) | 355 | `result-track:509e0d73160700ea7c1bcef7133f493dab2cc87c0403df508fd7f80c1230eee1` |
| 33 | `theorem` | [intCast](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/intcast.md) | 366 | `result-track:d9f1f7bf06c990cb3db246646a516cbb57c639bae80218c3f7855ae0db418bb9` |
| 34 | `theorem` | [natCast_eq_iff](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/natcast-eq-iff.md) | 369 | `result-track:07d24f91b3592d2a52950b839a1ef89601b46de709e058127778b2483bf02a14` |
| 35 | `instance` | [instCharP](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/instcharp.md) | 376 | `declaration-track:73a23581bc46c0ddbca6da21ca4c2dae4394fd71e82308981e5521b0a742a5c0` |
| 36 | `theorem` | [frobenius_mk](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/frobenius-mk.md) | 380 | `result-track:85e4af80d0547a1454e359ba3a27d7d17e52445df7ed223234b1b771ec1b8872` |
| 37 | `def` | [of](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/of.md) | 387 | `declaration-track:267817aea7d625527cd693db0e8586d229dc965d45f8de2c790f0e0d8ec35fe3` |
| 38 | `theorem` | [of_apply](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/of-apply.md) | 394 | `result-track:2feec3cad4e1eaa96ba7eb8b179c55f7147cfdccf4b8be014d177646a0a7334c` |
| 39 | `instance` | [instReduced](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/instreduced.md) | 397 | `declaration-track:d06e8a08c41a61dcedbe0ea4d954a06a26ee691519b0b62b1d137e6781f46056` |
| 40 | `instance` | [instPerfectRing](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/instperfectring.md) | 406 | `declaration-track:b5bcd1aea94f8926bc2f09851c5de97c85595bfefd17a50225b6a78b32599c7c` |
| 41 | `theorem` | [iterate_frobenius_mk](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/iterate-frobenius-mk.md) | 417 | `result-track:eebc7b66b3827ff226f8b6923074ed2bebabe721e13334a7d673a7e1fd7821c3` |
| 42 | `def` | [lift](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/lift.md) | 425 | `declaration-track:d835fbb671acf6adf8b722d95c0c33d94e202b02b4d00ecb8af75d71a823673b` |
| 43 | `theorem` | [eq_iff](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/eq-iff.md) | 458 | `result-track:0fb2da19ce4ab1e08e922a64d58ebd6b2418e8744b95805821fa8a648abc637e` |
| 44 | `instance` | [instInv](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/instinv.md) | 468 | `declaration-track:08aeeb9036eb313eb89894c1c94c73f24d98e5ac5ff6a26f58a676b61d07e68d` |
| 45 | `theorem` | [mk_inv](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/mk-inv.md) | 478 | `result-track:a43ea55b27be0483d373dd63986a99007bc3a89b7ea2d95b5dae1c82b9e1f523` |
| 46 | `instance` | [instDivisionRing](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/instdivisionring.md) | 481 | `declaration-track:00637457002f7bd76881549496e98b9d570c1479a43bd7d9eac997d75f4b0d05` |
| 47 | `instance` | [instField](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/instfield.md) | 495 | `declaration-track:e7a4e190333b13d97e5ba1026661564f2976a5d28630b280fb8b58c777bc57be` |
| 48 | `instance` | [instPerfectField](../../../../FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/declarations/instperfectfield.md) | 499 | `declaration-track:0b1a2d10c748f7ee02d47f6a33d27659f27573c9bc2e702125099a029dd5a17e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71dcd408e8b3ee7e20cd74a2a0d167bd6a979544d1afbabeaa59a6f002074230 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/PerfectClosure/Variant12232e57a0c3b04ba1737b5f94edbd5286b571a3a55faa3130194005597f3ad3.lean","GRWTSK/_verification/specifications/Algebra/PerfectClosure/Variant12232e57a0c3b04ba1737b5f94edbd5286b571a3a55faa3130194005597f3ad3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
