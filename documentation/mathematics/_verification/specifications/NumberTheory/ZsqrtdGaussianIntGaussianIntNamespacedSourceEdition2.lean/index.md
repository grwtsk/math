# Verification target: Zsqrtd Gaussian Int Gaussian Int Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "440bf2ea54c662836610a74824e0b023374e170f",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `440bf2ea54c662836610a74824e0b023374e170f`.

Source path: `GRWTSK/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Archimedean` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Zsqrtd.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GaussianInt](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/gaussianint.md) | 54 | `declaration-track:59f1d2b792157aa214696135641188845759f5c924b9027c8f487d1c1ad3b9e9` |
| 2 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/instance.md) | 61 | `declaration-track:0f420fe08dc775a22bf75e20a353fc4834baf07377e0b95aae36828c6a438382` |
| 3 | `instance` | [instCommRing](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/instcommring.md) | 64 | `declaration-track:49984a519c92c7505f636fc01697be11d46efac859befc0433642941a293ff43` |
| 4 | `def` | [toComplex](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/tocomplex.md) | 72 | `declaration-track:5fa9a42831166452330e4d70bd6fd37d9eb7cc831ef3a0d070fcf05952cd1700` |
| 5 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/instance-source-edition-5.md) | 77 | `declaration-track:b1b3e91deb5a6e7b4ce98a80d04a3d3515a0c434c5efda295cc18963b6833f79` |
| 6 | `theorem` | [toComplex_def](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/tocomplex-def.md) | 80 | `result-track:134f0d1fcb20c312bf26bedac75fb27f628abb22534b78b623021b69dfa0f9f1` |
| 7 | `theorem` | [toComplex_def'](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/tocomplex-def-source-edition-3.md) | 83 | `result-track:ef8dd463bfccd8e13f51ca7e45dd9f5a6eab099404dbff0d07fe07197dbc5808` |
| 8 | `theorem` | [toComplex_def₂](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/tocomplex-def-source-edition-2.md) | 85 | `result-track:eef73ebe450da0a83a3b407762045b041d84c398cf235708e018a3ddca2d4269` |
| 9 | `theorem` | [to_real_re](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/to-real-re.md) | 89 | `result-track:f2f2e05d9a1bf8469265407a601d195c98f42963747c4102720daeee09bd2949` |
| 10 | `theorem` | [to_real_im](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/to-real-im.md) | 92 | `result-track:c6707877595e09eabd03bd26632858b1a96215e1e5bbf5c4ecd3424f2c206e57` |
| 11 | `theorem` | [toComplex_re](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/tocomplex-re.md) | 95 | `result-track:0925ab1d67e45ca3127b6628507622e83ac7dd2f864d74a14e172d3a41402e75` |
| 12 | `theorem` | [toComplex_im](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/tocomplex-im.md) | 98 | `result-track:e758a8c5b54d99f61072165ae1d497a40b2c63d0aa50c5ca87c5a13d41005827` |
| 13 | `theorem` | [toComplex_add](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/tocomplex-add.md) | 100 | `result-track:2fed56ab9b28a53e530519ebb6e96e3746f5c3165a2f034353f43b2c107af25b` |
| 14 | `theorem` | [toComplex_mul](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/tocomplex-mul.md) | 103 | `result-track:f27f569122bc860071a8555b73e12c688af5be186167f788753c7dd4b6d4f687` |
| 15 | `theorem` | [toComplex_one](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/tocomplex-one.md) | 106 | `result-track:a2a886ac46133a5a9725d582ce03d4ff1e6814a3cf4302bc753b7528ddc9f141` |
| 16 | `theorem` | [toComplex_zero](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/tocomplex-zero.md) | 109 | `result-track:73b9dfefddce650f0581642baef6f074349fe801c62fb236de696ac73674ead7` |
| 17 | `theorem` | [toComplex_neg](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/tocomplex-neg.md) | 112 | `result-track:720ae04b8756dcd5de0c18d41caecad9107a5f3123cf22292a51d94e426e2db0` |
| 18 | `theorem` | [toComplex_sub](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/tocomplex-sub.md) | 115 | `result-track:06f518bcd4579b95d7097140f1953417b5e10c1cd3ef0be819f3fae8ef675e85` |
| 19 | `theorem` | [toComplex_star](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/tocomplex-star.md) | 119 | `result-track:a8086beb964275612fc79c4f944d0611779312b64146c17e17a2d5e7a7802d77` |
| 20 | `theorem` | [toComplex_inj](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/tocomplex-inj.md) | 124 | `result-track:b2d492cbfb837129301c3b8bdaa843066b2b6458243768eea4023430e111d3b4` |
| 21 | `lemma` | [toComplex_injective](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/tocomplex-injective.md) | 127 | `result-track:92b558f0596311e45dc21d3f865959eae63f417cf12badb1b256b6d39917e612` |
| 22 | `theorem` | [toComplex_eq_zero](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/tocomplex-eq-zero.md) | 131 | `result-track:ec9c27248896e4eeaa17e7069d3b8f882e8d336ba7d50282ed977715290782a6` |
| 23 | `theorem` | [intCast_real_norm](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/intcast-real-norm.md) | 135 | `result-track:c6cd7b76124639405184b2894157ad50e4cf95a3d23035a64aae3d26e27222ab` |
| 24 | `theorem` | [intCast_complex_norm](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/intcast-complex-norm.md) | 139 | `result-track:4863d679225fe1b6f5bea5e0562f1b67cdf8015aa6c226504d7f53410a5d7182` |
| 25 | `theorem` | [norm_nonneg](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/norm-nonneg.md) | 142 | `result-track:f631344cae4fef7d9f1b7613eb5e5550b944658b52f1f2ab12570a071d658552` |
| 26 | `theorem` | [norm_eq_zero](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/norm-eq-zero.md) | 146 | `result-track:e271259bf5780b42568494da904d72e9e87382fc6ef252e967afde2bb44cc935` |
| 27 | `theorem` | [norm_pos](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/norm-pos.md) | 148 | `result-track:fc5073c6087838774b5d848b2f6a33507a3abeb7aa7a4d842c15e5e9a4ad1e7a` |
| 28 | `theorem` | [abs_natCast_norm](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/abs-natcast-norm.md) | 151 | `result-track:13dc2a2ab476494c6037a1f3048f56f604b66ddcadf61be48ae9aa361bad31df` |
| 29 | `theorem` | [natCast_natAbs_norm](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/natcast-natabs-norm.md) | 155 | `result-track:abc2cff40266dffcf53760323e68b96b923041197cc7a7172ecfd1de7c47ea6b` |
| 30 | `theorem` | [natAbs_norm_eq](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/natabs-norm-eq.md) | 159 | `result-track:87669a1232bc10163d9297254e5f918b0a7ea3b6e5db0e442c540a1bd2602eda` |
| 31 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/instance-source-edition-2.md) | 163 | `declaration-track:465005d926b9f640c0849dfb7d058c029078924b9189b4a2a6a6f29a7d766dcd` |
| 32 | `theorem` | [div_def](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/div-def.md) | 169 | `result-track:f85775f9a437495a9bdb7d75f20a9938e84c364dc821b54c4c75385a4ed7e0ec` |
| 33 | `theorem` | [toComplex_div_re](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/tocomplex-div-re.md) | 173 | `result-track:63acaefe938180d5c2acb5ad8c0e2c1f985fe2d8acbba382778e598613082bf9` |
| 34 | `theorem` | [toComplex_div_im](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/tocomplex-div-im.md) | 177 | `result-track:8f9284ed20258c42d5a934cff9e4ca0baee44cddadb75e60685f9177e8dbd030` |
| 35 | `theorem` | [normSq_le_normSq_of_re_le_of_im_le](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/normsq-le-normsq-of-re-le-of-im-le.md) | 181 | `result-track:764d1b5359c280d4da8c416a377247b0326a62d7e438005ea569b24b5d6a82fb` |
| 36 | `theorem` | [normSq_div_sub_div_lt_one](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/normsq-div-sub-div-lt-one.md) | 189 | `result-track:1b70aeaee96372197264e350ff2d5845d7eb0d0a95d5b08eb73c90f226053ffd` |
| 37 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/instance-source-edition-4.md) | 204 | `declaration-track:952289b05b9165333433b0e2ed452e334fdd482ad98f7c4b5c1cbd85b7b0f643` |
| 38 | `theorem` | [mod_def](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/mod-def.md) | 207 | `result-track:da3e519ccca40102776ba84ff9d73025c630f76f38c8fd5cd1ae0d2dbe91ae8f` |
| 39 | `theorem` | [norm_mod_lt](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/norm-mod-lt.md) | 210 | `result-track:c0fef7bbc100754ba879e8f620d11ebb67470e95a7b117bb569c7abeb5f3a9af` |
| 40 | `theorem` | [natAbs_norm_mod_lt](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/natabs-norm-mod-lt.md) | 221 | `result-track:0376469ea442083ccefea8e34412bcdaeb088912be964d9e436cc7604b8e3f12` |
| 41 | `theorem` | [norm_le_norm_mul_left](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/norm-le-norm-mul-left.md) | 225 | `result-track:dfbed5428c1dafadaf9230331b3e8802d19f603b7839329033dc61ee5f246783` |
| 42 | `instance` | [instNontrivial](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/instnontrivial.md) | 232 | `declaration-track:eb0581a1140268946bde4a1ee6aed14550a607b984a2e9dfa9df3a73f4186d60` |
| 43 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/instance-source-edition-3.md) | 235 | `declaration-track:677e36c508e711905c0454c5f951e81b832b7c9e1196e9dd9f26e1ab9e8199ff` |
| 44 | `theorem` | [sq_add_sq_of_nat_prime_of_not_irreducible](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition2.lean/declarations/sq-add-sq-of-nat-prime-of-not-irreducible.md) | 249 | `result-track:68849b9afc83f88b2ed632d8d37aad4b5c032b877d935fa0906fbe7a49fcb6ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=30962c40ce57e7e7b8061444495bda5489163a7d12ea58eb099e73fdfbd1dc68 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean","GRWTSK/_verification/specifications/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
