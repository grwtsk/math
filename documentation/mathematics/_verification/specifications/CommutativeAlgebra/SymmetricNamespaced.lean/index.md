# Verification target: Symmetric Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31a783c78c2dd71a1ec7ce3d520a74f9a83e197d",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Symmetric/Variantb2cec25bc5d101292111d6881b7fcf93af3096175f66786d6666a9360734a8f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31a783c78c2dd71a1ec7ce3d520a74f9a83e197d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Symmetric/Variantb2cec25bc5d101292111d6881b7fcf93af3096175f66786d6666a9360734a8f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Symmetric/Variantb2cec25bc5d101292111d6881b7fcf93af3096175f66786d6666a9360734a8f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.MvPolynomial.Rename` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.CommRing` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [esymm](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/esymm.md) | 69 | `declaration-track:1aa42a39bceb5046ec3cf1fcdf699ec08df571c90a9bbe21c8e0c8247561dd14` |
| 2 | `theorem` | [Symmetric Namespaced](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/esymm-map-val.md) | 73 | `result-track:ff5f7121b50fc07d9a16a1692680c786f9edf650b6f33fdaaae71dc88648dcd8` |
| 3 | `def` | [IsSymmetric](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/issymmetric.md) | 89 | `declaration-track:27dc8a8f45e1de36b26deaa8ffaaf4bc6525b2a8a88d089e49845b202b457aea` |
| 4 | `def` | [symmetricSubalgebra](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/symmetricsubalgebra.md) | 96 | `declaration-track:b0e42c5cb0ff35361d95301f28d5c2060ba648eb9c8d151619939accaadb7ee8` |
| 5 | `theorem` | [mem_symmetricSubalgebra](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/mem-symmetricsubalgebra.md) | 106 | `result-track:bff2fec9739c32392f9c17541c4accda9623ea63fc7f59ee964f2e2310e11f1c` |
| 6 | `theorem` | [C](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/c.md) | 118 | `result-track:bfabe3a637d76a45bcd8ab02b97d24e36101a30680c8357f6f2dc4614108cbb6` |
| 7 | `theorem` | [zero](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/zero.md) | 124 | `result-track:166c0b33c62ea54edeb945c7d88c9fa616e8671aaa364f30b02fd850a8c0560c` |
| 8 | `theorem` | [one](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/one.md) | 129 | `result-track:0f7e34fdde728f4934919aaa68dba141f42a0826c2aeae76e70ed9a73553383c` |
| 9 | `theorem` | [add](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/add.md) | 133 | `result-track:ab2c7ba22cc981471b5aa3bcd20bd8d6c208e72dfa53bb7b8b14759b53ed941f` |
| 10 | `theorem` | [mul](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/mul.md) | 137 | `result-track:f676fbf9ae0a1cc77726a04f776cf48cc8021c80fd400d883a8857d01b27333c` |
| 11 | `theorem` | [smul](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/smul.md) | 141 | `result-track:102b5f06fc0bc75c71854fb5a41bfe215452034cbea7741db73dcc81c2153a49` |
| 12 | `theorem` | [map](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/map.md) | 146 | `result-track:19d799282f4971c26bcfe467cbbf1da510a7f035ea70be8aeba7a140503d3771` |
| 13 | `theorem` | [neg](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/neg.md) | 156 | `result-track:29a4f2ee78bbe959936437c48afe847f2c7589feb6aa4b0a4830195ca92b3c3e` |
| 14 | `theorem` | [sub](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/sub.md) | 160 | `result-track:af6f597b910a66f22c7e98d44ae30bdaa3ed0d83dec759b32d4adaaa29aa112c` |
| 15 | `def` | [esymm](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/esymm-source-edition-2.md) | 175 | `declaration-track:dee712dbdf76caa5c6c7bbf132e90d18d1d4d56eec72623c540de62ebc9a6528` |
| 16 | `theorem` | [esymm_eq_multiset_esymm](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/esymm-eq-multiset-esymm.md) | 181 | `result-track:554c67b85371e0bc3cd5582f1c69fb6c9f03ce4e2a71ae4cb1fcd3f3b2dd6388` |
| 17 | `theorem` | [aeval_esymm_eq_multiset_esymm](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/aeval-esymm-eq-multiset-esymm.md) | 185 | `result-track:2ee868cc78985c572aff5b94bd441f98079e47d204a7148ec977812b6d366270` |
| 18 | `theorem` | [esymm_eq_sum_subtype](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/esymm-eq-sum-subtype.md) | 191 | `result-track:ba3291d6c0ce01a645f3e7ee5998c1b6fe5748165545febac0b7c786eeaa3566` |
| 19 | `theorem` | [esymm_eq_sum_monomial](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/esymm-eq-sum-monomial.md) | 197 | `result-track:13916914690d1ca565f9cbad7665ca0e9e68656f1aacf638445d65305be36239` |
| 20 | `theorem` | [esymm_zero](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/esymm-zero.md) | 204 | `result-track:df2fb9888ec88aa549cf1dc512ca9aa73e28d3b5512c61fc337d15f58990a054` |
| 21 | `theorem` | [map_esymm](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/map-esymm.md) | 208 | `result-track:9b5b370d583b9fe8fa8abf5773ae9a905693baf8be257497c1afd1a2ff74e6d4` |
| 22 | `theorem` | [rename_esymm](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/rename-esymm.md) | 212 | `result-track:897d0a9028a26853bdd0f4082ca3edb6a9b166b78054fed22be41054e68f42f8` |
| 23 | `theorem` | [esymm_isSymmetric](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/esymm-issymmetric.md) | 224 | `result-track:b27fef91f945f2354431c87ddf7ad82de54164787b7d99747b2de0459032f361` |
| 24 | `theorem` | [support_esymm''](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/support-esymm-source-edition-3.md) | 229 | `result-track:a8513d32534b33506c6a1e8b9b0cc7d32eec89c9ca65eb7a714782df1407244b` |
| 25 | `theorem` | [support_esymm'](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/support-esymm.md) | 254 | `result-track:53482549c8cd24b904922949ee8316ec51c6fc24d04867eb057dc7dae32a730d` |
| 26 | `theorem` | [support_esymm](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/support-esymm-source-edition-2.md) | 263 | `result-track:8f7d340254e7554f5a6b11175843a24b78cd3a79c0425f5e0f9796b8878ab4f2` |
| 27 | `theorem` | [degrees_esymm](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/degrees-esymm.md) | 270 | `result-track:9fd216f30e005bb24d6929d856d8faf420c5b80e0056aa15f95309df1473016f` |
| 28 | `def` | [psum](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/psum.md) | 299 | `declaration-track:8727bfa494647fad980f62935f2fde5ef1627c0f80c845f6f01864faa1374e2d` |
| 29 | `lemma` | [psum_def](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/psum-def.md) | 301 | `result-track:89cc15ca2e8031880de4eb8814170b9f81eec6cb29d919797160d8a0aca1ceeb` |
| 30 | `theorem` | [psum_zero](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/psum-zero.md) | 304 | `result-track:80da0c981b14582abd085ce01ff1c1ec0017a990e99115ab1c3bb53a11557661` |
| 31 | `theorem` | [psum_one](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/psum-one.md) | 309 | `result-track:f49f9c2813cfaed4894c25e5681ab0699ae89461de43078bfe58bd92b365c671` |
| 32 | `theorem` | [rename_psum](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/rename-psum.md) | 313 | `result-track:0eacba01f49aaedaddb433ad5e6efa4efadb34e9d50a4601a61116b180e05b59` |
| 33 | `theorem` | [psum_isSymmetric](../../../../CommutativeAlgebra/SymmetricNamespaced.lean/declarations/psum-issymmetric.md) | 316 | `result-track:856c79442c21b7b512473fdad4983cde38da4734abb39a422cce27ccfb40e6d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c9f2659b3d317c1b4dc7a1949dbbe9385f080da59a434f591682b05e510b7cf0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Symmetric/Variantb2cec25bc5d101292111d6881b7fcf93af3096175f66786d6666a9360734a8f2.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Symmetric/Variantb2cec25bc5d101292111d6881b7fcf93af3096175f66786d6666a9360734a8f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
