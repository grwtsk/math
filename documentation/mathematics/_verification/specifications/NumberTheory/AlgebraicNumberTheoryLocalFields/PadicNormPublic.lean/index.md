# Verification target: Padic Norm Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af3aebef1ba82d7fbc7ff188892320ccb4b73947",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant8589f823d9853d3c62f82ebf8a574c62a5c239209632af2ab2975130292b9bd2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af3aebef1ba82d7fbc7ff188892320ccb4b73947`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant8589f823d9853d3c62f82ebf8a574c62a5c239209632af2ab2975130292b9bd2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant8589f823d9853d3c62f82ebf8a574c62a5c239209632af2ab2975130292b9bd2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.IsNonarchimedean` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [padicNorm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/padicnorm.md) | 45 | `declaration-track:31e99565a9429192a07b3b1960fd56e275b74c8d866d9ebb06f38394bd99a742` |
| 2 | `theorem` | [eq_zpow_of_nonzero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/eq-zpow-of-nonzero.md) | 56 | `result-track:bf59e86b72784667178969807534789238b9530114b6e1809845f9c0201e16cf` |
| 3 | `theorem` | [nonneg](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/nonneg.md) | 60 | `result-track:a60e24d8c0056b3dbff34ff098180a487ef2c4eefe5cb11baaeca945f0f33bc6` |
| 4 | `theorem` | [zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/zero.md) | 70 | `result-track:f8536197b1b9a14a24fc24660614254d571742d686bfa046a975c1700c896b21` |
| 5 | `theorem` | [one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/one.md) | 73 | `result-track:5a5a725f2e2a8f438fd964d50dad40e66f5625ef7a5232299d82bd6ba08e1bee` |
| 6 | `theorem` | [padicNorm_p](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/padicnorm-p.md) | 78 | `result-track:d8da91cd78365b392e53227cb4fae48bcbdf595b81f2b17829fd315a1bb0ff4a` |
| 7 | `theorem` | [padicNorm_p_of_prime](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/padicnorm-p-of-prime.md) | 85 | `result-track:c356c26d65ed73784d882c21544f1c209ae34152f82593625a82c51a56fd7cb9` |
| 8 | `theorem` | [padicNorm_of_prime_of_ne](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/padicnorm-of-prime-of-ne.md) | 89 | `result-track:917bcdbdfd0a501140688c9a2e6382df02ac420765a8db5428a4d63f61e968ba` |
| 9 | `theorem` | [padicNorm_p_lt_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/padicnorm-p-lt-one.md) | 98 | `result-track:f3b861659137e4f808eacb45d5e351f264d0e5c6a789e65203ef21b1e92add39` |
| 10 | `theorem` | [padicNorm_p_lt_one_of_prime](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/padicnorm-p-lt-one-of-prime.md) | 105 | `result-track:6d8b5fa96a2b4ee64510090b98b1e76b1caec8db2979714b501ea6989f477722` |
| 11 | `theorem` | [values_discrete](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/values-discrete.md) | 109 | `result-track:d960b18839306004118def4760ce3f8005363673e17a9a50d8fb590c1af839c9` |
| 12 | `theorem` | [neg](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/neg.md) | 114 | `result-track:171726be2473caf81b00f4015cbaea408c76c8933cd0f53c0bce0bf656df3fac` |
| 13 | `theorem` | [nonzero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/nonzero.md) | 120 | `result-track:9c5a6b86b88de8815365b08e311bc50cf8246beab1094cfa3a2e9c08fac931f8` |
| 14 | `theorem` | [zero_of_padicNorm_eq_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/zero-of-padicnorm-eq-zero.md) | 126 | `result-track:0a3eb19d7babb981b2171730bfbf97426f8338b4e662740c67e960196088f47c` |
| 15 | `theorem` | [mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/mul.md) | 135 | `result-track:ab8663529812e19532b18c3e6bc385d885a3c1d6d378f5042a4bbfd24f9ce82c` |
| 16 | `theorem` | [div](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/div.md) | 145 | `result-track:f82b92a19bc0550ade0653845027076dacd61a19102fd443ebd5163ff9e06ed8` |
| 17 | `theorem` | [of_int](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/of-int.md) | 150 | `result-track:8c03d188860bdb59827eeea90351f9473417b0bf551e6de5bd2894aa3b2ecdaa` |
| 18 | `theorem` | [nonarchimedean_aux](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/nonarchimedean-aux.md) | 156 | `result-track:0ba29b49f2eda7922cc80927c41c3f304218ba031bcfa111ca892272a9e87d71` |
| 19 | `theorem` | [nonarchimedean](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/nonarchimedean.md) | 178 | `result-track:134f8ca481c483c794e43e97bb585b4efeaa273e4ffb8aa264fb73dd160a44c0` |
| 20 | `theorem` | [triangle_ineq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/triangle-ineq.md) | 187 | `result-track:de1b2368dfb2d693d68f707cbdd8dc96a26a0c336e37610c09bb7061be8aa789` |
| 21 | `theorem` | [sub](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/sub.md) | 195 | `result-track:91c9d762ad00d0e76d7f9a03c727d1545bc8319fb63eec3fc197d1c7574fcd85` |
| 22 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/instance.md) | 201 | `declaration-track:0af9c5dedd1584287a416671a5e8881b952af68c64630d707146f3bd4bf8a16c` |
| 23 | `theorem` | [add_eq_max_of_ne](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/add-eq-max-of-ne.md) | 209 | `result-track:d9f94a9082d07c9fccd6c18dfaed84f7dc882eb04d87352d582e3681b5be5205` |
| 24 | `theorem` | [dvd_iff_norm_le](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/dvd-iff-norm-le.md) | 213 | `result-track:066723357128a2b0eb2aaddca99987c675971343ca75cf1c7289e7a8065b8c86` |
| 25 | `theorem` | [int_eq_one_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/int-eq-one-iff.md) | 226 | `result-track:21a70798082f8cc39398775bf9badd0ef620f87d8f869dcdc3ff3e90b7f05e9b` |
| 26 | `theorem` | [int_lt_one_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/int-lt-one-iff.md) | 245 | `result-track:caaf0dff0f5d9918e6eb53d424e9ead73c19a8ebbf5efe589bc093e43ff8b24e` |
| 27 | `theorem` | [of_nat](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/of-nat.md) | 249 | `result-track:23ad50e37c600bf09e57b6a8ce34ddac236b1edb5cabec5991686f5aa5d2e5bb` |
| 28 | `theorem` | [nat_eq_one_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/nat-eq-one-iff.md) | 253 | `result-track:3121436942661741bbebdcd156dec227de1db5bf5ef3bf1d8f498d4bea4b06fa` |
| 29 | `theorem` | [nat_lt_one_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/nat-lt-one-iff.md) | 256 | `result-track:c888949b98e1fb5d8847489d7925d79c6f522820f25b7ee16aeef9b869de3bc1` |
| 30 | `theorem` | [not_int_of_not_padic_int](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/not-int-of-not-padic-int.md) | 260 | `result-track:09a09fe0adb50a30b4aa7770a546432d464812d078aa6464e0e8f67e6a6a55c0` |
| 31 | `theorem` | [sum_lt](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/sum-lt.md) | 266 | `result-track:3f50ce38300450a5af20427a3719cdb3cd5ade75668daff08ac9c43f72204abc` |
| 32 | `theorem` | [sum_le](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/sum-le-source-edition-2.md) | 271 | `result-track:c36a4f52b7e04bb9731d11fb0b1b796aea05a1d3961d8e25db34ded6f075e9d7` |
| 33 | `theorem` | [sum_lt'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/sum-lt-source-edition-2.md) | 276 | `result-track:95a65462dc628166724d07b890f244ac97b0350dcb2b4e616ef3995933bd258d` |
| 34 | `theorem` | [sum_le'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/declarations/sum-le.md) | 282 | `result-track:29e22789134ea7463d069bad2c44406e97410aa016d99cfa54bd815d534b5293` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e07429c12d1597c8fc3e44f5c0cf472d21bac83fc8ab4d8611a31a69aac4e0dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant8589f823d9853d3c62f82ebf8a574c62a5c239209632af2ab2975130292b9bd2.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant8589f823d9853d3c62f82ebf8a574c62a5c239209632af2ab2975130292b9bd2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
