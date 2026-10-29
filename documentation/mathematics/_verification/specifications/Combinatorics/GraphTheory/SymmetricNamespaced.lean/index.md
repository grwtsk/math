# Verification target: Symmetric Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "daeb9d7620254683e9028c563cfc79d3dd07f1d5",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantd6b4950db462d40039f09b2d4088b9fd74368491a18f32f85c7feb807c63a150.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `daeb9d7620254683e9028c563cfc79d3dd07f1d5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantd6b4950db462d40039f09b2d4088b9fd74368491a18f32f85c7feb807c63a150.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantd6b4950db462d40039f09b2d4088b9fd74368491a18f32f85c7feb807c63a150.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.Path` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Push` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Symmetrify](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/symmetrify.md) | 37 | `declaration-track:648a2dab8f18a4e5d4e5b4507db0affc8d2012cb38ae560e8363b488f17f22fa` |
| 2 | `instance` | [symmetrifyQuiver](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/symmetrifyquiver.md) | 39 | `declaration-track:9552af3b4dd67e091c47c122e19d7b381837fdcc2280478ddbc8f429cb63119e` |
| 3 | `class` | [HasReverse](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/hasreverse.md) | 46 | `declaration-track:0bdc28db834f5dedf9836705a77a520613c6532eaef70cbb5abb1f067d60760e` |
| 4 | `def` | [reverse](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/reverse.md) | 51 | `declaration-track:931a7636e34f9f3e9f6e5f5029a738909bec3cdff73a9db5718a4f35b10d3f54` |
| 5 | `class` | [HasInvolutiveReverse](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/hasinvolutivereverse.md) | 55 | `declaration-track:11eeac09ab3c1f570eb336dfc7e0db9e76853be9b6d86ebea573f4f6b6aa5ea2` |
| 6 | `theorem` | [reverse_reverse](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/reverse-reverse.md) | 62 | `result-track:54a53721c74b95d90a3b9f85ae27614ea7932d9359e72fda327ed8068090d490` |
| 7 | `theorem` | [reverse_inj](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/reverse-inj.md) | 66 | `result-track:04924c178c2d16b4fe6ccfcc942dabca72b0d600c8bf3b2730f06e0a995c4fcb` |
| 8 | `theorem` | [eq_reverse_iff](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/eq-reverse-iff.md) | 74 | `result-track:34e37cf3175cb08b4150a969c7fd4c7e5195f6f557b685a9173a5eb80c6f78c0` |
| 9 | `class` | [Symmetric Namespaced](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-graphtheory-hasreverse-v-source-edition-4.md) | 83 | `declaration-track:772b9828c58e68b982356e209329e71eb9ffa8c69513ef138a16168c06feaae2` |
| 10 | `theorem` | [Symmetric Namespaced](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-graphtheory-hasreverse-v-source-edition-5.md) | 88 | `result-track:bb6872a53e5fef872fa32ff4864dd8eed931721911915df6105890cc9e7bad4c` |
| 11 | `instance` | [Symmetric Namespaced](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-graphtheory-hasreverse-v-source-edition-6.md) | 92 | `declaration-track:ea45e81bb9c56674bde95dfb6e270f0e9f2122f94e4f8d4281997c3b728ba459` |
| 12 | `instance` | [Symmetric Namespaced](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-graphtheory-hasreverse-v.md) | 98 | `declaration-track:1c99efc0fd878d204513e1f90195520f902c18ddea75fa3e3b5b17caac820c80` |
| 13 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/instance.md) | 104 | `declaration-track:23636451aa5827baa1083d9c743888768c3434ecf92ab29db3a980c4d5fea15a` |
| 14 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/instance-source-edition-2.md) | 107 | `declaration-track:2696794b04fecd3bbea8e5ee18ea9a9b6176b76855b46d2dd6a98895a3d4702c` |
| 15 | `theorem` | [symmetrify_reverse](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/symmetrify-reverse.md) | 114 | `result-track:a3eb84f5700172d77c4a4e7acad590618e8692838435a0b0ccdbc9c18874396a` |
| 16 | `abbrev` | [Hom.toPos](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/hom-topos.md) | 120 | `declaration-track:4aca20dbc3ea7aa56f9e18e98e7f67d14b4e2172691dbdfa7f9c1d6b09cfe2c1` |
| 17 | `abbrev` | [Hom.toNeg](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/hom-toneg.md) | 124 | `declaration-track:0bb608734d5a0e718b2ca80fe4a6c3cb1084f5193ce3f589aff7454e53a1b73e` |
| 18 | `def` | [Path.reverse](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/path-reverse.md) | 129 | `declaration-track:3cbb93fd2a94462c3ee6e014fb7d59b04046756daf555f79d76649c343e0df8f` |
| 19 | `theorem` | [Path.reverse_toPath](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/path-reverse-topath.md) | 134 | `result-track:8b3fa53aa13dfab6a40349110b25d6223110110cdf5bd80c6ee8c6b825026b7d` |
| 20 | `theorem` | [Path.reverse_comp](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/path-reverse-comp.md) | 139 | `result-track:ea37c5d772c4102f01a7b737c7ea2258b588fe0da9f3beb5529d04550482472f` |
| 21 | `theorem` | [Path.reverse_reverse](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/path-reverse-reverse.md) | 146 | `result-track:8fbbf4742cc6c12ea201f64a8d75965ebd79bf2f9b6835e087f07d29af432a66` |
| 22 | `def` | [of](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/of.md) | 160 | `declaration-track:802197b5fc7f265dcc8d06d8a3cf4155b54cffde7e4c1ecf777386ecb5ad2e48` |
| 23 | `def` | [lift](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/lift.md) | 168 | `declaration-track:7152c73ab64c7a816901b3c3372ac9cd6454ece4d4954861070a1cc8552c7359` |
| 24 | `theorem` | [lift_spec](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/lift-spec.md) | 175 | `result-track:59f07a518d25b64c849521eb129fcc33617470179445a9d500e260a723afa12c` |
| 25 | `theorem` | [lift_reverse](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/lift-reverse.md) | 183 | `result-track:6e22f3799af5d3db460e1c3b44884b628391e15bc7c4e1c450a74b64dae7df26` |
| 26 | `theorem` | [lift_unique](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/lift-unique.md) | 193 | `result-track:99c5a374557ce112c32efc9b3f74c8b5c21423f3c6526919e375c9fe79716c76` |
| 27 | `def` | [Symmetric Namespaced](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-graphtheory-hasreverse-v-source-edition-2.md) | 208 | `declaration-track:20eab312a50804d82e9723596ad35e6578857bd93af62d219423d22a0968f055` |
| 28 | `instance` | [Symmetric Namespaced](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-graphtheory-hasreverse-v-source-edition-3.md) | 212 | `declaration-track:65f57341640442795ca4f5db31395363ba796d7ea8adbc59efb92c1eaa6d64d5` |
| 29 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/instance-source-edition-3.md) | 222 | `declaration-track:3ea80efe36053c92f6842bd187bb6b7e45b5dd068f26a5a638a006b2f90bce74` |
| 30 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/instance-source-edition-4.md) | 226 | `declaration-track:f90e6d10980b6f31df5e735dfbee07dceacc7ef23a77885bcb344450a5731358` |
| 31 | `theorem` | [of_reverse](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/of-reverse.md) | 233 | `result-track:f504c9edc1a428bfd4614cf1f7d98f3162ab73357e12cef155b6904552389929` |
| 32 | `instance` | [ofMapReverse](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/ofmapreverse.md) | 237 | `declaration-track:e56559e802a536f3f1d8072c06f4a62c186b9e5e1a7ed4b8c6f809f95e7fc462` |
| 33 | `def` | [IsPreconnected](../../../../../Combinatorics/GraphTheory/SymmetricNamespaced.lean/declarations/ispreconnected.md) | 248 | `declaration-track:9f3009c2e287d678b775d14f50f9b740be2fa4c080b180046f2bde6f8d5b3af9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f4cf6d7f868b8ce56fe625bf98588adf25822089e7b7481cd517ff85b94cbb6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantd6b4950db462d40039f09b2d4088b9fd74368491a18f32f85c7feb807c63a150.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantd6b4950db462d40039f09b2d4088b9fd74368491a18f32f85c7feb807c63a150.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
