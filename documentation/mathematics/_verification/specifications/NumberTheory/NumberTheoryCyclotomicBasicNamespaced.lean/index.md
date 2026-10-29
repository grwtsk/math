# Verification target: Number Theory Cyclotomic Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0555b555990870f5bab2dac123a1dc46f5586630",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant07ebb10ecddc2cfa1d585e6033ac5efdf73cbe95ecee6adb7a68883f1b196c55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/index.md) · [Full source](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0555b555990870f5bab2dac123a1dc46f5586630`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant07ebb10ecddc2cfa1d585e6033ac5efdf73cbe95ecee6adb7a68883f1b196c55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Basic/Variant07ebb10ecddc2cfa1d585e6033ac5efdf73cbe95ecee6adb7a68883f1b196c55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Cyclotomic.Roots` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Galois` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCyclotomicExtension](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/iscyclotomicextension.md) | 90 | `declaration-track:3ba76be9beafbe3afa48bb5860a0b52f9b41ed401b3d10e06bd1a4623bdeeb07` |
| 2 | `theorem` | [iff_adjoin_eq_top](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/iff-adjoin-eq-top.md) | 102 | `result-track:6349e1b113cd19d64d691b9f69f789a6c069c38bd5203dbecc208e93f8653a67` |
| 3 | `theorem` | [iff_singleton](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/iff-singleton.md) | 111 | `result-track:e3812ada1bd2c104bd782d6a94a9f7c623ca49b7ca524dee88d9eca875944788` |
| 4 | `theorem` | [empty](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/empty.md) | 118 | `result-track:6dc73cdddb84eb09cb79616d7074be51468775c0ded8a89fe1b74689079f95cb` |
| 5 | `theorem` | [singleton_one](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/singleton-one.md) | 123 | `result-track:f944e8b8a801dab4bd7828491ce1f322f5af9c56f90b0a5f736f8cfc09df2842` |
| 6 | `theorem` | [singleton_zero_of_bot_eq_top](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/singleton-zero-of-bot-eq-top.md) | 131 | `result-track:347db7b16c85744fd833e232b294d2e0665e744a994071a674969d475a449d95` |
| 7 | `theorem` | [trans](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/trans.md) | 143 | `result-track:842b30ac1b540bafaca10125ab3f65d13d56817ed43ab06b80edd4f010d4bc6f` |
| 8 | `theorem` | [subsingleton_iff](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/subsingleton-iff.md) | 165 | `result-track:82b3ce9452f0ce15936a7cd757656e8b6444b465256af4d3a24428296d744e2f` |
| 9 | `theorem` | [union_right](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/union-right.md) | 184 | `result-track:5462453d69203dec01ef89c5fefc2208a42ee870039c54db1f90d4940fd8d81d` |
| 10 | `theorem` | [union_left](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/union-left.md) | 204 | `result-track:ea6143477db5e789c42b494624b46157dec113f2cd76fbd6833d26c0e202a4e2` |
| 11 | `theorem` | [of_union_of_dvd](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/of-union-of-dvd.md) | 219 | `result-track:318944092070d7a5b5a55b2d60ba926292ca2db942ca96d501bb6564e978c1db` |
| 12 | `theorem` | [iff_union_of_dvd](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/iff-union-of-dvd.md) | 241 | `result-track:3711292cc8ea3a029d2fd91df8062df5b938c1ecb7057a8cea113125aeab1244` |
| 13 | `theorem` | [iff_union_singleton_one](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/iff-union-singleton-one.md) | 260 | `result-track:e294117eda3b5d5f40095cf0a1eb9843a491e3b77c8b76c8612bc62292e446c5` |
| 14 | `theorem` | [singleton_one_of_bot_eq_top](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/singleton-one-of-bot-eq-top.md) | 275 | `result-track:bd9d7ab5a5ca3a3c9188aad4a625052852c1f958b3124ecb6d32f61480406dd4` |
| 15 | `theorem` | [singleton_one_of_algebraMap_bijective](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/singleton-one-of-algebramap-bijective.md) | 282 | `result-track:ab563e89dc8bfe7c031014ebf33a2cbc365cb2da8df81e46295e7d11aad9bd54` |
| 16 | `theorem` | [equiv](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/equiv.md) | 292 | `result-track:bf0143fbd4dead7c5b26b6bd8b45264a325ab81e6251ad81729152ef4ed55aed` |
| 17 | `theorem` | [neZero](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/nezero-source-edition-2.md) | 301 | `result-track:e86fdef93d8b023472501fd5775ac69a591fd1c06bd8b776aa2f0c37f062327d` |
| 18 | `theorem` | [neZero'](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/nezero.md) | 307 | `result-track:3653662eb5c0fe2e7332705f2f2825a9baa4499d37d2685e527246f7a42945d1` |
| 19 | `theorem` | [finite_of_singleton](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/finite-of-singleton.md) | 316 | `result-track:4a4a08fe14606f04c666a8f55624b6ceeb433af214b586bf174e0d76c10f80d0` |
| 20 | `theorem` | [finite](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/finite.md) | 332 | `result-track:75ec527d7f79a9f76c4212dbf598c1f20a7f1d57351b26a98b0dc383191a197c` |
| 21 | `theorem` | [numberField](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/numberfield.md) | 352 | `result-track:0456b32d5a8dfd388462943df66750ef8d78dba0c9586837964ba5e51c8eb20d` |
| 22 | `theorem` | [integral](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/integral.md) | 361 | `result-track:ca952b6f26b0d2a6b78fa384b50fd3467a6eb9eef39d48919369f4f070436b94` |
| 23 | `theorem` | [finiteDimensional](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/finitedimensional.md) | 368 | `result-track:6dc153553f56805a055299bc424ba75e49360b0b972784c008b5ee6e1f94369a` |
| 24 | `theorem` | [adjoin_roots_cyclotomic_eq_adjoin_nth_roots](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/adjoin-roots-cyclotomic-eq-adjoin-nth-roots.md) | 379 | `result-track:c77494f6412c009a1aea888061dbfb27208f55beda3c4232495b1234e6a3e064` |
| 25 | `theorem` | [adjoin_roots_cyclotomic_eq_adjoin_root_cyclotomic](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/adjoin-roots-cyclotomic-eq-adjoin-root-cyclotomic.md) | 398 | `result-track:2126b8af1813c66a6086aad658011dcb2d85216b78e093d4dd9d1bc323d068b3` |
| 26 | `theorem` | [adjoin_primitive_root_eq_top](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/adjoin-primitive-root-eq-top.md) | 413 | `result-track:e8077327821c5711893d92d45f7774d032d83953e20c2b1ff40e5699f7babd24` |
| 27 | `theorem` | [Number Theory Cyclotomic Basic Namespaced](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/root-grwtsk-numbertheory-algebraicnumbertheory-iscyclotomicextension-var.md) | 423 | `result-track:3c2ce2ba714c9eb3688fc668390531af6e18d54bbcfc00b0f57bc8c59d595100` |
| 28 | `theorem` | [splits_X_pow_sub_one](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/splits-x-pow-sub-one.md) | 451 | `result-track:34b68ad30815ea13d412d8e77e8a68c2d5c74e8aab4a91d8a788bf8f4a9e4979` |
| 29 | `theorem` | [splits_cyclotomic](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/splits-cyclotomic.md) | 461 | `result-track:37e801341f6b0f07d9c10603c0b79ffcbe32f3450f6511e4999f240f09afc675` |
| 30 | `theorem` | [isSplittingField_X_pow_sub_one](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/issplittingfield-x-pow-sub-one.md) | 475 | `result-track:135d9f0ad46e84321521551db956c14946320d49a3524ae720f7726b07aac3cc` |
| 31 | `def` | [algEquiv](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/algequiv.md) | 491 | `declaration-track:ec635b033c71569aa9f5ba7e0e8488c3a5db752ebde7b358b0004ab6860caa14` |
| 32 | `theorem` | [isGalois](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/isgalois.md) | 501 | `result-track:3fddb81740b8a18ef52afddcf9a10d19622b28d8af5a1d3fc4528c7bb8845e28` |
| 33 | `theorem` | [splitting_field_cyclotomic](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/splitting-field-cyclotomic.md) | 508 | `result-track:b919b95355e3732e0b7d25def30696f29680350bda5fa558e0c5565a3741a1fd` |
| 34 | `def` | [CyclotomicField](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/cyclotomicfield.md) | 531 | `declaration-track:396d25f7dee02edd4836a0859f790b02494efebdab44164bf148aaab76657a02` |
| 35 | `instance` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/instance-source-edition-8.md) | 538 | `declaration-track:9e0fa516fbd53070a7fb8bca65fe6befa78481c6e937e0b7ac2b96ad3d190aa0` |
| 36 | `instance` | [algebra](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/algebra.md) | 542 | `declaration-track:b276933f793c6d52c06081bb19659a3d89de8b3a979147d0ae499ddd0065214e` |
| 37 | `instance` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/instance-source-edition-10.md) | 546 | `declaration-track:dd717b4733934b9804bc104989e54675d0154c62b12bfd14a9d243f819acc886` |
| 38 | `instance` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 549 | `declaration-track:5dab557448a52e9e685d83e92674e731929fb5383024dc2cb0738b267b22e87c` |
| 39 | `instance` | [isCyclotomicExtension](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/iscyclotomicextension-source-edition-2.md) | 552 | `declaration-track:9d15550a94e2d79ebcf1980a12708d193d6d613e1648b620a3f926d94ba07ed9` |
| 40 | `instance` | [CyclotomicField.algebraBase](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/cyclotomicfield-algebrabase.md) | 582 | `declaration-track:c2dc1e4aca4837f07a341933e794e916b223549bb7aa6e5b86267d224fd03e0a` |
| 41 | `example` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/example.md) | 587 | `declaration-track:39c352f710fff5e8464707f3b2212e3bc121848233ca186fdd7af2d3910abde3` |
| 42 | `instance` | [CyclotomicField.algebra'](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/cyclotomicfield-algebra.md) | 590 | `declaration-track:3e18a1b77634fdbd966e65c26b13c9f52e463b680527efa4400d6009fed4b0e6` |
| 43 | `instance` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 595 | `declaration-track:90e0e6c518416f46416d4630bef7c74047acd5ed7b0dc29593ea20c419657b0c` |
| 44 | `instance` | [CyclotomicField.noZeroSMulDivisors](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/cyclotomicfield-nozerosmuldivisors.md) | 598 | `declaration-track:96d17008dd822ecd678a429c5bf61df23ecdf5edd4efcbd57dc71f553ff5f32c` |
| 45 | `def` | [CyclotomicRing](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/cyclotomicring.md) | 610 | `declaration-track:72b91e76978daebc7df78e92c49f934fa27f94acdcbc1081ea728fc9c397de93` |
| 46 | `instance` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 618 | `declaration-track:4b804a99c3ebb19f515cf2f7cb63b68a5c9e0227ee3fbce9859a53a5f62ee917` |
| 47 | `instance` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 622 | `declaration-track:762601a411e8b1cbb8f5c06babddb53c8aea773fbe7c0c9dda9637972f3d9fd7` |
| 48 | `instance` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/instance-source-edition-9.md) | 626 | `declaration-track:cbc0424031637d4714eb60b337c9bf216ff5c9d640fae60eb83748ddcfa62cb5` |
| 49 | `instance` | [algebraBase](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/algebrabase.md) | 630 | `declaration-track:ada1b3c21849b850f91a979f602f2f31c1e152ae23f9813a6b0afb32f6e49abd` |
| 50 | `example` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/example-source-edition-2.md) | 635 | `declaration-track:b9224f0a199156b3b12e55fdca7571ef1b198c665875d6380d58a76625b36b76` |
| 51 | `instance` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/instance-source-edition-12.md) | 638 | `declaration-track:e9aad17b3754a04307b97e5bc1e7b43c61eadb997e9e21a429ff3a123977d593` |
| 52 | `theorem` | [algebraBase_injective](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/algebrabase-injective.md) | 641 | `result-track:12781c07cb62a54e0d027c735575ec4550f742976b4d7f45c4d1727ffc08fb74` |
| 53 | `instance` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 645 | `declaration-track:7979aae79155dbda68493960a8a5a9268cab9fa9f65acc51d41dd48d66b8cc64` |
| 54 | `theorem` | [adjoin_algebra_injective](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/adjoin-algebra-injective.md) | 648 | `result-track:028daf9fbb3bd772edf7d991dd5735c7ac72944eeebef81611b810abb5bd368c` |
| 55 | `instance` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/instance-source-edition-11.md) | 653 | `declaration-track:e939e7983a9dbd33c6565041540a5bf302e897ee5ffa86a07af2dd7e0ee7b654` |
| 56 | `instance` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 656 | `declaration-track:4891637d80292efdd367631a3932a356b42ac1cb2d101298c83baa12824f2678` |
| 57 | `instance` | [isCyclotomicExtension](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/iscyclotomicextension-source-edition-3.md) | 659 | `declaration-track:d9a3c8452d5e2d47723324686bb51c70dea7b97f906563ea21d0905cc775518e` |
| 58 | `instance` | [(anonymous)](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/instance.md) | 683 | `declaration-track:04da15a7987e5a534f1413e1f0915d3985ed8f9cdbce9b20298e435b61e1b483` |
| 59 | `theorem` | [eq_adjoin_primitive_root](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/eq-adjoin-primitive-root.md) | 724 | `result-track:1f70b66cb0dfb96aeecb396f0cc5a558516fad80445488754ce3ab4b3e566fad` |
| 60 | `theorem` | [IsAlgClosed.isCyclotomicExtension](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/isalgclosed-iscyclotomicextension.md) | 743 | `result-track:01f4d953ba9187842a040c1c038766895b37a5a2601be884ab8f48453dbff9c0` |
| 61 | `instance` | [IsAlgClosedOfCharZero.isCyclotomicExtension](../../../../NumberTheory/NumberTheoryCyclotomicBasicNamespaced.lean/declarations/isalgclosedofcharzero-iscyclotomicextension.md) | 752 | `declaration-track:1c77cbbfee81061d1ac7dbb54154704b1c036520f639cc106e11305ab50e2b1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=37f1f2e83a21d91984ad7bd6ec977da1e97dc0a4f64cb96aa7a45b570bff7507 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant07ebb10ecddc2cfa1d585e6033ac5efdf73cbe95ecee6adb7a68883f1b196c55.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/Basic/Variant07ebb10ecddc2cfa1d585e6033ac5efdf73cbe95ecee6adb7a68883f1b196c55.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
