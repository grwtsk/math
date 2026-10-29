# Verification target: Number Theory Cyclotomic Basic Exists Prim Root

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c04b79552195d58566ee5f066c8dabc47ce044c",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/index.md) · [Full source](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c04b79552195d58566ee5f066c8dabc47ce044c`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Cyclotomic.Roots` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Galois.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCyclotomicExtension](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/iscyclotomicextension.md) | 72 | `declaration-track:30f2d882cec19fa7d28655596b1f1a404b8762c36142f61a0c99bd40c40ad5b6` |
| 2 | `theorem` | [exists_prim_root](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/exists-prim-root.md) | 90 | `result-track:1699112b048af4e1fa4d1e49a13c43de621328fa5d205aac9369c1c8017c4829` |
| 3 | `theorem` | [iff_adjoin_eq_top](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/iff-adjoin-eq-top.md) | 95 | `result-track:811e00d6dd2f274d7ce29d74f51da4034c4816cd54de3b9217632ae53a714d3b` |
| 4 | `theorem` | [iff_singleton](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/iff-singleton.md) | 103 | `result-track:f591c8b2682a2cb2fd4379811d824ed33aad43642855f849e97386393eb797ed` |
| 5 | `theorem` | [empty](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/empty.md) | 109 | `result-track:39e5b0edb74ffbc5345daf887eae3415aa0913c9bba47dd5710658cc2dfbe5e3` |
| 6 | `theorem` | [singleton_one](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/singleton-one.md) | 113 | `result-track:552352192c871d0683ff80ec748185a9559cbbfd524902be7beb143e1370c3e0` |
| 7 | `theorem` | [singleton_zero_of_bot_eq_top](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/singleton-zero-of-bot-eq-top.md) | 120 | `result-track:7d026b7a2cb29988cf816dde5b0deabffa9557f47dde23e9163e07a8fac5c2ff` |
| 8 | `theorem` | [trans](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/trans.md) | 130 | `result-track:caaec26f1106ee9bb4e14511794c75d2b08813ddece7fb55195b2bd51abc5897` |
| 9 | `theorem` | [subsingleton_iff](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/subsingleton-iff.md) | 152 | `result-track:1b8b898aeecb8c03248a256a8efd24f8655a5e09ea290fe624c47b83cae99f5b` |
| 10 | `theorem` | [union_right](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/union-right.md) | 170 | `result-track:924f3cda1226daafcb530bd4d390de191d5e6be7249dc8a231e45c93841decc5` |
| 11 | `theorem` | [union_left](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/union-left.md) | 189 | `result-track:10356fc7b6757a17a556c879deb742b683ab9a42e389a6d07721a0cdb80ad5b8` |
| 12 | `theorem` | [of_union_of_dvd](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/of-union-of-dvd.md) | 203 | `result-track:acfc340a05fa7a47605a479733ee0c1cc60ef62b7852616ea6f11312bde10e59` |
| 13 | `theorem` | [iff_union_of_dvd](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/iff-union-of-dvd.md) | 224 | `result-track:1e690accf6e94ca36aadc8ff6d7c40d9d987b300d1d7a4e0876c5f9a69991fdf` |
| 14 | `theorem` | [iff_union_singleton_one](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/iff-union-singleton-one.md) | 242 | `result-track:7dcdb6bf169d4c8180dc455ce936de5acf8bdcd6fde8acf8adece654ef8c791f` |
| 15 | `theorem` | [singleton_one_of_bot_eq_top](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/singleton-one-of-bot-eq-top.md) | 256 | `result-track:e31a9f9553eb1539bb0c0ab132852c6b6369edebf1baff2ffd34ea11f0c583e3` |
| 16 | `theorem` | [singleton_one_of_algebraMap_bijective](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/singleton-one-of-algebramap-bijective.md) | 262 | `result-track:e017dafc5f5012b535bdcb2e1aa3f7dfadb8a92b60d97b679b68badfd0cd7545` |
| 17 | `theorem` | [equiv](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/equiv.md) | 271 | `result-track:ee3c477f4e62a566f2ea36c293e0971142e33997558ba7912707478c9dced29e` |
| 18 | `theorem` | [neZero](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/nezero.md) | 279 | `result-track:02d5532aabc6bf1753a75b3685489b89abf3d87df91bb546c67800ed409a42f0` |
| 19 | `theorem` | [neZero'](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/nezero-source-edition-2.md) | 284 | `result-track:c3aa05d113735ca7ac116f73084e482aba16e3986ee7d70c648555b64db1baf7` |
| 20 | `theorem` | [finite_of_singleton](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/finite-of-singleton.md) | 292 | `result-track:f0c32ff779fc53f16deb0e3b9819367ab9f6a2dad915e640832bc1302ae54004` |
| 21 | `theorem` | [finite](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/finite.md) | 306 | `result-track:1830d473fd6bdeba30444609ae1e3d7a962d385185eafe975e77efb913acb4d7` |
| 22 | `theorem` | [numberField](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/numberfield.md) | 324 | `result-track:c69da027228b33da23f1f928dec0193bfbf5883a49c6e8529ceb2c4c7422c9e2` |
| 23 | `theorem` | [integral](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/integral.md) | 332 | `result-track:f8878dc8f57671fa529e63cff9ebae72425bdbfe93b51b6afe0bf70c774eb9c8` |
| 24 | `theorem` | [finiteDimensional](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/finitedimensional.md) | 338 | `result-track:f325e81ba85c1b499a79a94d504f7c3e2098446e41ab8dc95b241e9c7b64db54` |
| 25 | `theorem` | [adjoin_roots_cyclotomic_eq_adjoin_nth_roots](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/adjoin-roots-cyclotomic-eq-adjoin-nth-roots.md) | 348 | `result-track:165a9d5c6c3bb6cb8697ae85071c5af5bfe19c24384ca71b04811ff39e1df9b4` |
| 26 | `theorem` | [adjoin_roots_cyclotomic_eq_adjoin_root_cyclotomic](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/adjoin-roots-cyclotomic-eq-adjoin-root-cyclotomic.md) | 366 | `result-track:036537915599594ca73e4a0a3323130c7b5edd1cfbcb2b3e12c62d4a531deca7` |
| 27 | `theorem` | [adjoin_primitive_root_eq_top](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/adjoin-primitive-root-eq-top.md) | 380 | `result-track:85c9eecc617afb1d3cdf90557e2864245cef6d748650e2b1df312456a3b4e2af` |
| 28 | `theorem` | [_root_.IsPrimitiveRoot.adjoin_isCyclotomicExtension](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/root-isprimitiveroot-adjoin-iscyclotomicextension.md) | 389 | `result-track:3406da64d4d104da32838747296cc2a21b1275d0a5b53d4283db74dae37f859b` |
| 29 | `theorem` | [splits_X_pow_sub_one](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/splits-x-pow-sub-one.md) | 416 | `result-track:bd1e9f3b7aa43fefcddad582695a3aa253e7dc8355564ac2a50568ae7769d791` |
| 30 | `theorem` | [splits_cyclotomic](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/splits-cyclotomic.md) | 424 | `result-track:94608699175f162cd268f9d4e7f8de7b03cd0241b41fae25797ddf3676d731e8` |
| 31 | `theorem` | [isSplittingField_X_pow_sub_one](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/issplittingfield-x-pow-sub-one.md) | 437 | `result-track:d32e8f3797fd1d9060febf6d068b34f813ec4835aa011d44a3293c51657b8cc1` |
| 32 | `def` | [algEquiv](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/algequiv.md) | 450 | `declaration-track:88d236de30ac91fcab9fd7e7aeeb5a278c695108ede4bbeaccd49dfb1e5f8f5c` |
| 33 | `theorem` | [isGalois](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/isgalois.md) | 460 | `result-track:4ed0370887f32c04370d6e6f6ebca007707fa465a3faa499b7486d5828af2aad` |
| 34 | `theorem` | [splitting_field_cyclotomic](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/splitting-field-cyclotomic.md) | 466 | `result-track:e209e025ec950216b28719aa8effcae990e18de2d1170f1ff0f7005ad40333e5` |
| 35 | `def` | [CyclotomicField](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/cyclotomicfield.md) | 487 | `declaration-track:2894bda3c0439cdc6b4f3ac63a41356a322db5830aa9bda91342c32327215927` |
| 36 | `instance` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/instance-source-edition-4.md) | 492 | `declaration-track:74dd4d22d3fed2e2fc6a5ab5aa4a65105532285a38fe9ea4088606339a0837b3` |
| 37 | `instance` | [algebra](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/algebra.md) | 495 | `declaration-track:70f08444e2d31e7e4b2c22a2c75ba69fb3a7532ad13cb4dc26b253d2935ddc11` |
| 38 | `instance` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/instance-source-edition-12.md) | 498 | `declaration-track:d2e2c554b349972481075ef7743871b0df04f8ffc3993f154f4eb9bd27389d50` |
| 39 | `instance` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/instance-source-edition-10.md) | 501 | `declaration-track:b5f72e0b0ac6b9fa510a63d59c83b0817eb6a557ae6bc2cd2487587cb767fa92` |
| 40 | `instance` | [isCyclotomicExtension](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/iscyclotomicextension-source-edition-3.md) | 504 | `declaration-track:783fa9d3be7adc2393bb11d3c688a532ba99e86a838841a3e134c1131b38f63c` |
| 41 | `instance` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/instance-source-edition-7.md) | 519 | `declaration-track:8f82515e4bdfaacf5f9c78c60eac9dc00a1fe24aafee38c8a663ba3fc21b260a` |
| 42 | `instance` | [CyclotomicField.algebraBase](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/cyclotomicfield-algebrabase.md) | 535 | `declaration-track:331cbb7ec870580bcd9353662c62397e5e95b9e483c47da2c4aa221a30a5ab39` |
| 43 | `example` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/example.md) | 539 | `declaration-track:5a796606c02bcbb85aaf84579c3ed8e462529e6f1af84f4e9b75381a71c64a5e` |
| 44 | `instance` | [CyclotomicField.algebra'](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/cyclotomicfield-algebra.md) | 541 | `declaration-track:6a7d3389cbe956ace52710ecdaa4f54f086f01b244a79d59c3df3ea6b7849a63` |
| 45 | `instance` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/instance-source-edition-8.md) | 545 | `declaration-track:a17fefbb01a541a7810c0f66e8d1cc0dbfbd40fd8a08d10aa7af97914ec610ee` |
| 46 | `instance` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/instance-source-edition-13.md) | 548 | `declaration-track:dc7ca3fd49510b781f3159400f5d63fdb025e38150c4f46485a190457200760b` |
| 47 | `def` | [CyclotomicRing](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/cyclotomicring.md) | 559 | `declaration-track:eaad7de6fd834b771b3879613778b2105db9107775e6ac4b98f483df70cf8bb4` |
| 48 | `instance` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/instance.md) | 564 | `declaration-track:1011b04bb5edc3520b5ccf7ae2d99cd6212321eec76805b0b097216339344325` |
| 49 | `instance` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/instance-source-edition-11.md) | 567 | `declaration-track:cb753c2f1228cee7ace0bce1939f05a4b403d55c3d7c21ff5a3ff9a278149e4d` |
| 50 | `instance` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/instance-source-edition-6.md) | 570 | `declaration-track:7803a9ede3e012e1fe2b4f32e8c1e46225fea48d6220f00fec3d08f65acd0693` |
| 51 | `instance` | [algebraBase](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/algebrabase.md) | 574 | `declaration-track:452643f9274c765b7e4cc870e9dc73285897bd13970ed8d84cafea125564a246` |
| 52 | `example` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/example-source-edition-2.md) | 579 | `declaration-track:fc692ea8e89c83a9fcaa84ecd4ecadb7d14b91a728cc8c56743e47518c4320b3` |
| 53 | `instance` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/instance-source-edition-2.md) | 581 | `declaration-track:143b4f2ae2976e8c3a74eaa96dc8c4708950b7bbfa90d662ae0104e598dfc1d5` |
| 54 | `theorem` | [algebraBase_injective](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/algebrabase-injective.md) | 585 | `result-track:dbeee5fc9294037c23ae6daab0a6cd3bc3e54d54a2255199836357529d8c37e0` |
| 55 | `instance` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/instance-source-edition-9.md) | 589 | `declaration-track:ada5a36c3fd92555ce22e549c7ba121802f8f8a5a36ced77a70fff854bf727fc` |
| 56 | `theorem` | [adjoin_algebra_injective](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/adjoin-algebra-injective.md) | 592 | `result-track:f7002f0be86094d45c05ae5714dd824d05d06307e676feb2f0eb0e03c1fdfb92` |
| 57 | `instance` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/instance-source-edition-3.md) | 596 | `declaration-track:3d1923c22816e6db47bca7b2cb07cbaa47475f99765eba6826a99ebec6cc781a` |
| 58 | `instance` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/instance-source-edition-14.md) | 599 | `declaration-track:e6306d8e229f8b6659672fa4ff27d0b2184bd4c5f58571281ae2e7d3b05940ad` |
| 59 | `instance` | [isCyclotomicExtension](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/iscyclotomicextension-source-edition-2.md) | 602 | `declaration-track:57111f47037743d71cb6e3ac2e601257d4bcf69c3a4c53e4843e0dbe82d5ee5a` |
| 60 | `instance` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/instance-source-edition-5.md) | 628 | `declaration-track:779109e7e809ab89bff42df7a4c101495745f677bcf4feb2786a1b80253ce910` |
| 61 | `theorem` | [eq_adjoin_primitive_root](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/eq-adjoin-primitive-root.md) | 665 | `result-track:8711f86f2614da1c45ab1e4e111c9c94092fd9a9dd7482e86a72dd10f55f4738` |
| 62 | `theorem` | [IsAlgClosed.isCyclotomicExtension](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/isalgclosed-iscyclotomicextension.md) | 683 | `result-track:2618600f2613190f8aed768f5c901c25d18d66df439d14b48708dc6df65a39ac` |
| 63 | `instance` | [IsAlgClosedOfCharZero.isCyclotomicExtension](../../../../NumberTheory/NumberTheoryCyclotomicBasicExistsPrimRoot.lean/declarations/isalgclosedofcharzero-iscyclotomicextension.md) | 691 | `declaration-track:012e6501c21187b2124fc51fd64c25c373096d770e79c08bf2ab011ed0334584` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=27433785ce2bb4d8282d8de049f76ac6864838174646186579475ed89eeaf867 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
