# Verification target: To Nat Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa4e803f2d89ec10e87082cb0064723226e38a04",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa4e803f2d89ec10e87082cb0064723226e38a04`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.Iterate` — import line 14; external provider; requires a separately pinned dependency.
- `Std.Tactic.Do` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.Sublist` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NoRepetition](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/norepetition.md) | 20 | `declaration-track:7bc256984c7be9d2538cfb966dc4bc2c6359217398c25df194480a77c44061d8` |
| 2 | `theorem` | [noRepetition_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/norepetition-iff.md) | 23 | `result-track:f1173fb82fc88e4c8957682855dca890a7eb7ac8d87ac5a10bc46b199e92a46a` |
| 3 | `theorem` | [NoRepetition.right_of_append](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/norepetition-right-of-append.md) | 26 | `result-track:29e1b1a0095dd593f5486653f98ffce519565311b0364fb8fc8fbc1b533e5972` |
| 4 | `theorem` | [NoRepetition.left_of_append](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/norepetition-left-of-append.md) | 30 | `result-track:72912cc42f7382cb99c524560d910ad69820b582a008224ebc55f89544086354` |
| 5 | `theorem` | [not_noRepetition_append_of_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/not-norepetition-append-of-right.md) | 34 | `result-track:d3f0ee0015a825e26ff011c47bd5bafe5156caf5e2ab7d8fa3a87902a1c488ab` |
| 6 | `theorem` | [not_noRepetition_append_of_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/not-norepetition-append-of-left.md) | 38 | `result-track:eb9f65932a75ea8f083b86d86afa07011f2eaad19c4c1efd86900465eda3e599` |
| 7 | `theorem` | [not_noRepetition_append_singleton_of_suffix](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/not-norepetition-append-singleton-of-suffix.md) | 42 | `result-track:c3d0a2cdce70b997aa43c8e7dbdac19664eb3a13261b305e55d354b3c99e23d8` |
| 8 | `theorem` | [NoRepetition.not_isSuffix_of_append_singleton](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/norepetition-not-issuffix-of-append-singleton.md) | 46 | `result-track:b16fab621bbc1673f94763ffdb23b4d5996aeac50b6fb41d7a4b2bc27c51edee` |
| 9 | `theorem` | [NoRepetition.append_singleton_of_not_suffix](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/norepetition-append-singleton-of-not-suffix.md) | 50 | `result-track:a250b2032b9bc14cd1f47d4b62310b81b62ad633e4200b2a4c396d3ffdb2f083` |
| 10 | `theorem` | [NoRepetition.append_singleton_of_ne](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/norepetition-append-singleton-of-ne.md) | 55 | `result-track:05927dfe1fafd2aa93bc74577da562b91e1e911ff32333247646289b3edd542d` |
| 11 | `theorem` | [noRepetition_singleton](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/norepetition-singleton.md) | 63 | `result-track:7bfc45bb33e7c4da63b8841063e636efd266d92fe29285b6bba59d4980602a35` |
| 12 | `theorem` | [noRepetition_cons_append_append_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/norepetition-cons-append-append-iff.md) | 66 | `result-track:77fcb1d80cc292dab009cf7743812eaec328ba974abb74f27bf9264f41b4c324` |
| 13 | `theorem` | [noRepetition_append_cons_of_noRepetition_append_singleton](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/norepetition-append-cons-of-norepetition-append-singleton.md) | 79 | `result-track:ff972cce6358bfce3283fc9da2633181d1c435fae4c83e7bffed253d4b11afa0` |
| 14 | `theorem` | [isNat_iff'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/isnat-iff-source-edition-2.md) | 100 | `result-track:a9de2d36794ed59fbd7ff60f2c6b41f5a79d16ea9c134156ffa600fff5baf115` |
| 15 | `theorem` | [isNat_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/isnat-iff-source-edition-3.md) | 166 | `result-track:b2190e71e6fc7fe7ec392fdc80057c88ff1b9ec06641dadcffc9cfa22f6fc3c8` |
| 16 | `theorem` | [isNat_of_isDigit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/isnat-of-isdigit.md) | 175 | `result-track:22daad48a20950b8de3c44daf7a4695f0d6c62afa9ade73a2b695fed0d5c6ff8` |
| 17 | `theorem` | [isSome_toNat?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/issome-tonat.md) | 187 | `result-track:b046b04878b4b51ed9966c750c602d65a2b291c62479a3565be91fb8378e9e57` |
| 18 | `theorem` | [isNat_of_toNat?_eq_some](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/isnat-of-tonat-eq-some.md) | 191 | `result-track:0d02017e49bc085efa0c727d933601bbc7d269bf8876e24ae3991cbdeedec24c` |
| 19 | `theorem` | [toNat?_eq_none_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/tonat-eq-none-iff-source-edition-2.md) | 195 | `result-track:fe129f2d42e978931b2fc1c0d73ae617c71f1cbaa8961fc3c530c9a2f890ed5e` |
| 20 | `theorem` | [toNat?_eq_none](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/tonat-eq-none.md) | 198 | `result-track:6ca518275a3518ad4974b3fad950e440e505cb01517c8a93b980ee58ac9630fb` |
| 21 | `theorem` | [toNat?_eq_some_ofDigitChars](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/tonat-eq-some-ofdigitchars-source-edition-2.md) | 201 | `result-track:f8490dd691caf398a63b1005f3fe784c93cde40b352e02d147520c176fc08028` |
| 22 | `theorem` | [isNat_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/isnat-congr.md) | 207 | `result-track:4e5887302930dfce71a7000d1e94918e7f77a4940059b24b9e59489c82101ad2` |
| 23 | `theorem` | [toNat?_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/tonat-congr.md) | 211 | `result-track:9039d0f071d4c2ce8ade6b6c54d4499730175ebc445a9a4219d09cd9e60acdf3` |
| 24 | `theorem` | [isNat_toSlice](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/isnat-toslice.md) | 221 | `result-track:e52b0c97c7b196d65369bc8bfad1b7db6ca9e20f7ad80eb4ad3d5a2d8fd8173a` |
| 25 | `theorem` | [isNat_comp_toSlice](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/isnat-comp-toslice.md) | 225 | `result-track:98c761d604b0b390804229441e7d5465dee9e16839187cc66b5699d9c1bb373b` |
| 26 | `theorem` | [toNat?_toSlice](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/tonat-toslice.md) | 229 | `result-track:d49ac1fbedb411a5d7a62c01a2fb2e12c1be1d61d5166edbcdec2f3edd05860a` |
| 27 | `theorem` | [toNat?_comp_toSlice](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/tonat-comp-toslice.md) | 233 | `result-track:b7b0a809e8de14148199d7ec01bd0a5c82076657893aed536d04e8a081ff1cd7` |
| 28 | `theorem` | [Slice.isNat_copy](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/slice-isnat-copy.md) | 237 | `result-track:7e489f255aea94851fb57719df77e44bc7b990e5e6a933ce825751c785736f8f` |
| 29 | `theorem` | [Slice.isNat_comp_copy](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/slice-isnat-comp-copy.md) | 241 | `result-track:7ad9e7abaa1568e2a356a8e139c19a12420acfda33f3738d1ebd901d957405bb` |
| 30 | `theorem` | [Slice.toNat?_copy](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/slice-tonat-copy.md) | 245 | `result-track:26a1ffc7f4dda70a03078e23f313b2811087cd5cd05e64add03a258d7f78818f` |
| 31 | `theorem` | [Slice.toNat?_comp_copy](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/slice-tonat-comp-copy.md) | 249 | `result-track:11e06f91d58ace75358b3c501708517dc940829c602eb1a5c9ff3bf2e9b7071d` |
| 32 | `theorem` | [isNat_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/isnat-iff.md) | 252 | `result-track:71c0e34fb9bba5da556e287b33bf1f69da094e5d31935decbfe5281dfda63384` |
| 33 | `theorem` | [isNat_of_isDigit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/isnat-of-isdigit-source-edition-2.md) | 261 | `result-track:371eed5a4d21e2d5410519e40a44a2eb918e89e564a0c54b6d8d0bf3eb00078e` |
| 34 | `theorem` | [isSome_toNat?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/issome-tonat-source-edition-2.md) | 266 | `result-track:b6581805c31449e1848ae21fe2f352cee99f057a327163a49b9dc01032693d5d` |
| 35 | `theorem` | [isNat_of_toNat?_eq_some](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/isnat-of-tonat-eq-some-source-edition-2.md) | 269 | `result-track:857eeee43fc7df484d18b1bf48ad412c34e9aa6e34ba99f24b1c5b031b2cf5a5` |
| 36 | `theorem` | [toNat?_eq_none_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/tonat-eq-none-iff.md) | 273 | `result-track:83299e91876cd134909cd917dab8495e40fc445730eb2a75e68acbee63845439` |
| 37 | `theorem` | [toNat?_eq_none](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/tonat-eq-none-source-edition-2.md) | 276 | `result-track:b286a5b43467af73cdb3b16f1ae151295a4c5b24625a94e2989de88e718997ea` |
| 38 | `theorem` | [toNat?_eq_some_ofDigitChars](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/tonat-eq-some-ofdigitchars.md) | 279 | `result-track:c336053f5a7ab32bf3a00acc49f6350dc71a85e5e62d5c0125bcaa3896f23122` |
| 39 | `theorem` | [isNat_append_underscore_append](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/isnat-append-underscore-append.md) | 283 | `result-track:9de92213913bd1a1b7a585fd0d81725236858fb5642e56983a22b9149b05da72` |
| 40 | `theorem` | [toNat?_append_underscore_append_eq_some](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/tonat-append-underscore-append-eq-some.md) | 296 | `result-track:c0ff4f8e9a8624a7eebec70588e905db2164621f64bcacf8ab881bdc7c522bcd` |
| 41 | `theorem` | [isNat_repr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/isnat-repr.md) | 315 | `result-track:6f151fef56f59bc96026004d2fae2a186ba3649c32621216bb97a553f8a9bff7` |
| 42 | `theorem` | [toNat?_repr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/tonat-repr.md) | 320 | `result-track:56af9995ce897e512c22adba7c0b78e28ad5792263742862aa569995c13affca` |
| 43 | `theorem` | [repr_injective](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/repr-injective.md) | 326 | `result-track:98d9e48cb0de492c534e6f498971d046a786ab2af2086923de54bc966b6cfcd1` |
| 44 | `theorem` | [repr_inj](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatPublic.lean/declarations/repr-inj.md) | 330 | `result-track:4aeefec0d20639735445dfee773356d07642e7f1fb2cfaa28de9d0b0d045bf58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=30b1ab42b89bb5196a64d2596c09d2e6615ce3d48dd9564da385bd94ed69c2b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
