# Verification target: Pythagorean Triples Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42638fd92f011c676c1fbbaa562c389d8592378c",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant01f8bb269b87848419b489cb1ac31c70cdbc30d63b3796e614c6ca6f6dd67d8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/index.md) · [Full source](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42638fd92f011c676c1fbbaa562c389d8592378c`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant01f8bb269b87848419b489cb1ac31c70cdbc30d63b3796e614c6ca6f6dd67d8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant01f8bb269b87848419b489cb1ac31c70cdbc30d63b3796e614c6ca6f6dd67d8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Int.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.NatPrime` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sq_ne_two_fin_zmod_four](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/sq-ne-two-fin-zmod-four.md) | 38 | `result-track:e539b1f148a0821949eb1f9ca2957c431196210966ab9fcda0e65e4e8d349f9b` |
| 2 | `theorem` | [Int.sq_ne_two_mod_four](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/int-sq-ne-two-mod-four.md) | 43 | `result-track:0d9cf7aee9d7a972f15615abeafec4ec027386437d35a7ef6e47f9f59ee94ada` |
| 3 | `def` | [PythagoreanTriple](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/pythagoreantriple.md) | 54 | `declaration-track:5fc12076705fe9e8dc9344b9dfa713194bbaebf6c43f8bbc8633457895de2bd5` |
| 4 | `theorem` | [pythagoreanTriple_comm](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/pythagoreantriple-comm.md) | 60 | `result-track:f720723d66d01dac09b3dd7edab35400477657006257cb5bccef34a067d9f066` |
| 5 | `theorem` | [PythagoreanTriple.zero](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/pythagoreantriple-zero.md) | 66 | `result-track:12e7de4a451c0df849ceb776e7338f935ccc0d0f3b4d458cc66d3a5cb38e2133` |
| 6 | `theorem` | [eq](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/eq.md) | 74 | `result-track:2ef0b976deec6a4019ecc90b081663f3d5fbe4cfcf0ea1418c275479136e189c` |
| 7 | `theorem` | [symm](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/symm.md) | 79 | `result-track:b5705aa5dca3995c3a301f5f3533de3e854903b3f3dfb58969b9c5e7cf86d274` |
| 8 | `theorem` | [mul](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/mul.md) | 84 | `result-track:ae3a138007ca51ba94b6b083bcb5a0a67ecc9f362f4e1082b8b8c4b3aa4bf45c` |
| 9 | `theorem` | [mul_iff](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/mul-iff.md) | 93 | `result-track:719d74486af41d1872c463e6be9037b5a301a3ba3ca87407b5a5d374139248d5` |
| 10 | `def` | [IsClassified](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/isclassified.md) | 107 | `declaration-track:49137c1e7c4cf00b7176872db35e4be623f33374c1120a28b579777543a5c625` |
| 11 | `def` | [IsPrimitiveClassified](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/isprimitiveclassified.md) | 120 | `declaration-track:fea49576feacae5fdfd7f0f751adce599a03a519a351b26d99afb91976f1f5a8` |
| 12 | `theorem` | [mul_isClassified](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/mul-isclassified.md) | 126 | `result-track:2948d6cbd72963c131577f6350f7b15df152cdfe86147cd6743731a3ac4bc1e8` |
| 13 | `theorem` | [even_odd_of_coprime](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/even-odd-of-coprime.md) | 138 | `result-track:a890cefacc1338245be045159ba82eb46921b4e2a66285a8fc6f9fce74227c6b` |
| 14 | `theorem` | [gcd_dvd](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/gcd-dvd.md) | 169 | `result-track:2274c75b0a32d09d5a01f85e6c3fd962167a677cb4890acc73153319d69867aa` |
| 15 | `theorem` | [normalize](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/normalize.md) | 190 | `result-track:46c87f4445e6ed240367aeaebe7425a267fe6c94944c45bd764566b79c8b4583` |
| 16 | `theorem` | [isClassified_of_isPrimitiveClassified](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/isclassified-of-isprimitiveclassified.md) | 215 | `result-track:afa15a7ba903b57d92d778fe6099885818781475e49889d24a6e26d7d0461096` |
| 17 | `theorem` | [isClassified_of_normalize_isPrimitiveClassified](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/isclassified-of-normalize-isprimitiveclassified.md) | 223 | `result-track:85116b23de21cd05f2660071c146dff1d5335bbc2eff5edf68058506cc6a7343` |
| 18 | `theorem` | [ne_zero_of_coprime](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/ne-zero-of-coprime.md) | 233 | `result-track:fb4d6b2b65e8546c2d90e059f55bd33d992cb87e273d6e3b9596e08f95b1dfae` |
| 19 | `theorem` | [isPrimitiveClassified_of_coprime_of_zero_left](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/isprimitiveclassified-of-coprime-of-zero-left.md) | 246 | `result-track:0d2f4bbe2857b29b8fcbf0f1de6a090d48360699e8ec259b4879a55aa7c0286d` |
| 20 | `theorem` | [coprime_of_coprime](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/coprime-of-coprime.md) | 260 | `result-track:2dea2b3988df481329c229e233f50f87f033d4112868991b5d0577055e5abc40` |
| 21 | `def` | [circleEquivGen](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/circleequivgen.md) | 286 | `declaration-track:8186c4fb44fc81e7ffb6ef26672f0844691af22afc424bdaac5b43f557e4360c` |
| 22 | `theorem` | [circleEquivGen_apply](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/circleequivgen-apply.md) | 321 | `result-track:c73fad0ce39ac472d257e69dde47610d75282e9cee86089b027228a783232cc5` |
| 23 | `theorem` | [circleEquivGen_symm_apply](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/circleequivgen-symm-apply.md) | 327 | `result-track:195a8a5610876d829a81556e080c7fe83ceb3a782720539b21ebfc915c0c93c1` |
| 24 | `theorem` | [coprime_sq_sub_sq_add_of_even_odd](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/coprime-sq-sub-sq-add-of-even-odd.md) | 335 | `result-track:3328e212b14907e9aac4e4799a79a782d0b7ef235a88cf74a90cc306503778ea` |
| 25 | `theorem` | [coprime_sq_sub_sq_add_of_odd_even](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/coprime-sq-sub-sq-add-of-odd-even.md) | 360 | `result-track:8fd5970110cee59691074ee6be187abd4b65c1be071bcc37753541e282183041` |
| 26 | `theorem` | [coprime_sq_sub_mul_of_even_odd](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/coprime-sq-sub-mul-of-even-odd.md) | 366 | `result-track:7e15f1e739ad4fbeb30d2eeec44af6420c28dd2cc6d4180b3638b8d45290daef` |
| 27 | `theorem` | [coprime_sq_sub_mul_of_odd_even](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/coprime-sq-sub-mul-of-odd-even.md) | 397 | `result-track:6d2dea0db22d05c3b1f462a92292b675fc7323fb390de81a25c363df24876464` |
| 28 | `theorem` | [coprime_sq_sub_mul](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/coprime-sq-sub-mul.md) | 403 | `result-track:0c6792e4c7ce223f0f9689f3ee35c872156cd8301ad6f4e896594596b36078f7` |
| 29 | `theorem` | [coprime_sq_sub_sq_sum_of_odd_odd](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/coprime-sq-sub-sq-sum-of-odd-odd.md) | 410 | `result-track:b919539e168c36f7cdea552e473d8c34dc0a08fc68e149d04bd82c78a246bcbb` |
| 30 | `theorem` | [isPrimitiveClassified_aux](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/isprimitiveclassified-aux.md) | 446 | `result-track:0b32432e051a37e0bebefb129dc2b619ed03c41582c619c2564a5d9fbf99e2d7` |
| 31 | `theorem` | [isPrimitiveClassified_of_coprime_of_odd_of_pos](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/isprimitiveclassified-of-coprime-of-odd-of-pos.md) | 465 | `result-track:93b6cecccc712cf3607c60192e93eb586ee5bb8540a6e2b31f8349356b69ac61` |
| 32 | `theorem` | [isPrimitiveClassified_of_coprime_of_pos](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/isprimitiveclassified-of-coprime-of-pos.md) | 566 | `result-track:5fd0231721078cd5a99d3cc2a88ae4785ed4c579ffe9e0bd3cc34b947eca08fb` |
| 33 | `theorem` | [isPrimitiveClassified_of_coprime](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/isprimitiveclassified-of-coprime.md) | 575 | `result-track:9e5b0417ac352e04304373f0bb65704e253006b6bace70964f0f864c3e8c97a1` |
| 34 | `theorem` | [classified](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/classified.md) | 584 | `result-track:1869d1f102632fa19e910f2bad8d73744e243a26409e5554125142aeb29d9a7d` |
| 35 | `theorem` | [coprime_classification](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/coprime-classification.md) | 599 | `result-track:4b8658e88c5e1696588b2d932d92795106b61bc9afd0168912c58ea980c5cab9` |
| 36 | `theorem` | [coprime_classification'](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/coprime-classification-source-edition-2.md) | 630 | `result-track:f912d1af971ff3947473f6e9656c0d6d2cb90c78f536959f3f1778f580f2ec37` |
| 37 | `theorem` | [classification](../../../../NumberTheory/PythagoreanTriplesNamespacedAligned.lean/declarations/classification.md) | 682 | `result-track:ba22a282c6c23de5e984b57fadd390424ab689a8533ac4813a96e45ce176f417` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a4516499dc06bcd9627922f12487dd78569bc52c0c57fe5647ef87b28827242 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant01f8bb269b87848419b489cb1ac31c70cdbc30d63b3796e614c6ca6f6dd67d8f.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant01f8bb269b87848419b489cb1ac31c70cdbc30d63b3796e614c6ca6f6dd67d8f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
