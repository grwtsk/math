# Verification target: Padic Norm Not Int Of Not Padic Int

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e8647a2a1598588725b54aa1784dcd9f9666a56",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant80eea15b05dd40259f5842d370cda883fbcb1ed63ead16e161a3823725d66607.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e8647a2a1598588725b54aa1784dcd9f9666a56`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant80eea15b05dd40259f5842d370cda883fbcb1ed63ead16e161a3823725d66607.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant80eea15b05dd40259f5842d370cda883fbcb1ed63ead16e161a3823725d66607.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Padics.PadicVal.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [padicNorm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/padicnorm.md) | 39 | `declaration-track:b9a0b3d5c0a70ec96c24a2c3eed3715c1cbac1c0dfcd3e198dcf94f2a38c8108` |
| 2 | `theorem` | [eq_zpow_of_nonzero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/eq-zpow-of-nonzero.md) | 50 | `result-track:dc0cb8711cb32a66b3df0863c146207556f98807130f88678e8218453c42612e` |
| 3 | `theorem` | [nonneg](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/nonneg.md) | 54 | `result-track:2319e027a58367cad256267db3ffcbdf175f435c671206d1e6900ab2774fc80c` |
| 4 | `theorem` | [zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/zero.md) | 64 | `result-track:190a3b129da2d07899101a7979b1b11e111145bd253ca7b6f04dd482b8b2349a` |
| 5 | `theorem` | [one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/one.md) | 67 | `result-track:4435238c989d7da4d31bd4d1bd8b861ba6d0834d849ac4ae134d97fe39cb8720` |
| 6 | `theorem` | [padicNorm_p](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/padicnorm-p.md) | 72 | `result-track:610034583a0a84cf01b7b6020c78dfb521015bd9ca11de607ad52c2763d6c29f` |
| 7 | `theorem` | [padicNorm_p_of_prime](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/padicnorm-p-of-prime.md) | 79 | `result-track:f99bfd402a6a7ed9ceddd0cf5dae7062235b26f2a72156e3374b9ff31ac71973` |
| 8 | `theorem` | [padicNorm_of_prime_of_ne](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/padicnorm-of-prime-of-ne.md) | 83 | `result-track:087997f30f269b0c96f8d929334bfeb6fbd7d5e55f9700e0d875cab80bbc2658` |
| 9 | `theorem` | [padicNorm_p_lt_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/padicnorm-p-lt-one.md) | 92 | `result-track:509d2f6f31f08cb1c2702aca5f6cc03e038a9802946e8d0a38f3982fc899f0bb` |
| 10 | `theorem` | [padicNorm_p_lt_one_of_prime](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/padicnorm-p-lt-one-of-prime.md) | 99 | `result-track:ab428f7a054883a2fdf82e44ffe2fe2d77d193a2ff5774af7cd5007f41dde268` |
| 11 | `theorem` | [values_discrete](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/values-discrete.md) | 103 | `result-track:2b34881c16808febd1b3be599107a2a3d9f595709418d52c1945eb21fd4e493a` |
| 12 | `theorem` | [neg](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/neg.md) | 108 | `result-track:1bd7727110789b9d802590fe0920db1f7719f110de23647066dc3618a441b1a3` |
| 13 | `theorem` | [nonzero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/nonzero.md) | 114 | `result-track:1c4f5eb53ad2c67880f3a0ffea064a9293b8e55b583c486d95aca4254511a462` |
| 14 | `theorem` | [zero_of_padicNorm_eq_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/zero-of-padicnorm-eq-zero.md) | 120 | `result-track:78d19c82890790ef6a4fc0473324b259b3f298a2cb77a61d76ef0cdb2049bc4e` |
| 15 | `theorem` | [mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/mul.md) | 129 | `result-track:5f2b19746cddddb558ce15ea6b3b91f9fe23bdb5d3cf78c57687837e6207e9d3` |
| 16 | `theorem` | [div](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/div.md) | 139 | `result-track:3b51a3ebeea434f5164909dcd5e7e96f6066f9acbea76b9043f327ae2adfcbc7` |
| 17 | `theorem` | [of_int](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/of-int.md) | 144 | `result-track:4ddc71cbec115352c202d0d6781ca2878d0a9a741c87ee1cad74e69b137cd2ef` |
| 18 | `theorem` | [nonarchimedean_aux](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/nonarchimedean-aux.md) | 150 | `result-track:2e20190d043f1e071a17da8928300413836e6b67c3e624e020b7af914aaa27c8` |
| 19 | `theorem` | [nonarchimedean](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/nonarchimedean.md) | 172 | `result-track:356780374f0339f51f4a7fcfc7483dc182c0b44f248f168a3cd8735fac9e97ba` |
| 20 | `theorem` | [triangle_ineq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/triangle-ineq.md) | 181 | `result-track:68b5cbc2251e5a5cbd91bcf621c69fff6a26725e7fdbd3f2ba712be01a560b53` |
| 21 | `theorem` | [sub](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/sub.md) | 189 | `result-track:6f5b986a02ef4df715dccb391fb9da0c64985e8e57a462a4f98d3d03f578363c` |
| 22 | `theorem` | [add_eq_max_of_ne](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/add-eq-max-of-ne.md) | 195 | `result-track:ddc86cc1298e27cb4165878c8951fc84286b8c5adb71280cec491438ebc1066f` |
| 23 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/instance.md) | 217 | `declaration-track:2b42ac267050656878adea71d340cb79a00d0a4bb17244b83c32206623924bc1` |
| 24 | `theorem` | [dvd_iff_norm_le](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/dvd-iff-norm-le.md) | 223 | `result-track:4ffb9f5e6fa951a3a8151eb9a09ff505a64fd0468be80efa2a753deed217c89c` |
| 25 | `theorem` | [int_eq_one_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/int-eq-one-iff.md) | 237 | `result-track:7e755cb092fd7052e57b1d4ef255ffb4d76ffd8747934435ad18c82003fde195` |
| 26 | `theorem` | [int_lt_one_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/int-lt-one-iff.md) | 256 | `result-track:263bdc39e6e8d162ff2fec0eefe41bc7855a4e3abd0fbd2bf051d393078d70af` |
| 27 | `theorem` | [of_nat](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/of-nat.md) | 260 | `result-track:7a94e8e054811eead4472b1145d6c25b890697df6a86f083f344eea1197dc5f4` |
| 28 | `theorem` | [nat_eq_one_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/nat-eq-one-iff.md) | 264 | `result-track:49b40f40c09a1768febbfff0798fceb3772bfaeb6c5eb0bb2003fb031f749ad9` |
| 29 | `theorem` | [nat_lt_one_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/nat-lt-one-iff.md) | 267 | `result-track:f3a4b7f1e915baabf81f64b291b491f45443da866314530e044d06ea7bbce04a` |
| 30 | `theorem` | [not_int_of_not_padic_int](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/not-int-of-not-padic-int.md) | 271 | `result-track:4422b8f3d300a915cc9fb1e4148512946adbcfa1254206fd34608c5795b519c1` |
| 31 | `theorem` | [sum_lt](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/sum-lt-source-edition-2.md) | 277 | `result-track:ce422ada480e06b60a6fa4279c23e542f00e01ca391a4569bf0ed2a9f8fd3eb4` |
| 32 | `theorem` | [sum_le](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/sum-le.md) | 290 | `result-track:779a3e97c5fc7128a373042de092a0c0ec0c6c90b8a72ae51e7e015b3b1e15e1` |
| 33 | `theorem` | [sum_lt'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/sum-lt.md) | 303 | `result-track:853bb976d5a6e860b8c30fec711f67e8c55b4db0effe99d42eded65a462757c0` |
| 34 | `theorem` | [sum_le'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNotIntOfNotPadicInt.lean/declarations/sum-le-source-edition-2.md) | 309 | `result-track:df24d8e010a50a98d76ea268ed11dc4868ac46f494ea14f55c7c5b7c65c1d313` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4caa168eeba61c786c740d85453e17d88319652ae4797a1c0ea9a2e253b4d865 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant80eea15b05dd40259f5842d370cda883fbcb1ed63ead16e161a3823725d66607.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant80eea15b05dd40259f5842d370cda883fbcb1ed63ead16e161a3823725d66607.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
