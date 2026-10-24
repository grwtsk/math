# Verification target: GRWTSK.Topology.GeneralTopology.Rational.Variantf3ae5dd5d428964b9d8ea6e997c15f7caff9180800702d554728658a4fac8223

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "983c403fcef41d454de18712793cfc9b60ec730b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Rational/Variantf3ae5dd5d428964b9d8ea6e997c15f7caff9180800702d554728658a4fac8223.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Rational/Variantf3ae5dd5d428964b9d8ea6e997c15f7caff9180800702d554728658a4fac8223.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Rational/Variantf3ae5dd5d428964b9d8ea6e997c15f7caff9180800702d554728658a4fac8223.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `983c403fcef41d454de18712793cfc9b60ec730b`.

Source path: `GRWTSK/Topology/GeneralTopology/Rational/Variantf3ae5dd5d428964b9d8ea6e997c15f7caff9180800702d554728658a4fac8223.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Rational/Variantf3ae5dd5d428964b9d8ea6e997c15f7caff9180800702d554728658a4fac8223.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RationalSegment](../../../../../mathematics/Topology/GeneralTopology/Rational/Variantf3ae5dd5d428964b9d8ea6e997c15f7caff9180800702d554728658a4fac8223.lean/declarations/rationalsegment--74648575ecac4dba2c8c0a5e.md) | 32 | `declaration-track:74648575ecac4dba2c8c0a5e68610d5c4dcb42e670ce96de9a1c96b97c4cbfa3` |
| 2 | `def` | [denominator](../../../../../mathematics/Topology/GeneralTopology/Rational/Variantf3ae5dd5d428964b9d8ea6e997c15f7caff9180800702d554728658a4fac8223.lean/declarations/denominator--25d12be4f21ba8acb7591629.md) | 44 | `declaration-track:25d12be4f21ba8acb75916293d80ea0a4943467619e1c32741ea0b6d28d06510` |
| 3 | `def` | [numerator](../../../../../mathematics/Topology/GeneralTopology/Rational/Variantf3ae5dd5d428964b9d8ea6e997c15f7caff9180800702d554728658a4fac8223.lean/declarations/numerator--17325fcffcf6b75452fdae63.md) | 49 | `declaration-track:17325fcffcf6b75452fdae6344e80346abc5803498479b857969d1347f51de15` |
| 4 | `theorem` | [denominator_pos](../../../../../mathematics/Topology/GeneralTopology/Rational/Variantf3ae5dd5d428964b9d8ea6e997c15f7caff9180800702d554728658a4fac8223.lean/declarations/denominator-pos--731296c34fc057122100f271.md) | 56 | `result-track:731296c34fc057122100f2719cd074f2594dac7dbab267dda8504edb1e00eccd` |
| 5 | `def` | [eval](../../../../../mathematics/Topology/GeneralTopology/Rational/Variantf3ae5dd5d428964b9d8ea6e997c15f7caff9180800702d554728658a4fac8223.lean/declarations/eval--436d34ac400552bf92a31890.md) | 79 | `declaration-track:436d34ac400552bf92a31890e6a4636ece2a9ef426f1d55a7d9418a6df9c9594` |
| 6 | `theorem` | [eval_zero](../../../../../mathematics/Topology/GeneralTopology/Rational/Variantf3ae5dd5d428964b9d8ea6e997c15f7caff9180800702d554728658a4fac8223.lean/declarations/eval-zero--65eeef4fca910295a31703ec.md) | 83 | `result-track:65eeef4fca910295a31703ec4c3cea9bd068bd32f6f7005f2d9aea05f8dd7772` |
| 7 | `theorem` | [eval_one](../../../../../mathematics/Topology/GeneralTopology/Rational/Variantf3ae5dd5d428964b9d8ea6e997c15f7caff9180800702d554728658a4fac8223.lean/declarations/eval-one--8ad0df620c5fbf9c9e8de2b2.md) | 88 | `result-track:8ad0df620c5fbf9c9e8de2b2ab6febe3cec108ec4bef2a6b36289aaa473b1780` |
| 8 | `theorem` | [continuous_denominator](../../../../../mathematics/Topology/GeneralTopology/Rational/Variantf3ae5dd5d428964b9d8ea6e997c15f7caff9180800702d554728658a4fac8223.lean/declarations/continuous-denominator--754a7246acaebfdae3f91036.md) | 93 | `result-track:754a7246acaebfdae3f9103629ce05246b23aae87e9039856a63207c2e215e2b` |
| 9 | `theorem` | [continuous_numerator](../../../../../mathematics/Topology/GeneralTopology/Rational/Variantf3ae5dd5d428964b9d8ea6e997c15f7caff9180800702d554728658a4fac8223.lean/declarations/continuous-numerator--fb3444f02660ab0b052aa8fc.md) | 102 | `result-track:fb3444f02660ab0b052aa8fc5f78193f2da396323e21dd07598897607bcdf375` |
| 10 | `theorem` | [continuous_eval](../../../../../mathematics/Topology/GeneralTopology/Rational/Variantf3ae5dd5d428964b9d8ea6e997c15f7caff9180800702d554728658a4fac8223.lean/declarations/continuous-eval--8440811674baefdbbd50a517.md) | 110 | `result-track:8440811674baefdbbd50a5172c3e392759074cf95a39eb12d570930f3041e65e` |
| 11 | `def` | [reverse](../../../../../mathematics/Topology/GeneralTopology/Rational/Variantf3ae5dd5d428964b9d8ea6e997c15f7caff9180800702d554728658a4fac8223.lean/declarations/reverse--e267562e1cf5dd5e06626162.md) | 122 | `declaration-track:e267562e1cf5dd5e0662616233b943543652a00e3b32c151eb100e8bad017753` |
| 12 | `theorem` | [reverse_control](../../../../../mathematics/Topology/GeneralTopology/Rational/Variantf3ae5dd5d428964b9d8ea6e997c15f7caff9180800702d554728658a4fac8223.lean/declarations/reverse-control--0b61d696e796f36e4e32ec54.md) | 128 | `result-track:0b61d696e796f36e4e32ec542f44e140c9e770bff17fb92993c21892282f78ee` |
| 13 | `theorem` | [reverse_weight](../../../../../mathematics/Topology/GeneralTopology/Rational/Variantf3ae5dd5d428964b9d8ea6e997c15f7caff9180800702d554728658a4fac8223.lean/declarations/reverse-weight--4ebb2de35727e4d1db7a864a.md) | 134 | `result-track:4ebb2de35727e4d1db7a864a3870c3d0d67fecee64bd21c4bb3efa42bce88acc` |
| 14 | `theorem` | [reverse_reverse](../../../../../mathematics/Topology/GeneralTopology/Rational/Variantf3ae5dd5d428964b9d8ea6e997c15f7caff9180800702d554728658a4fac8223.lean/declarations/reverse-reverse--70457cc0b6a47638d8bf6666.md) | 140 | `result-track:70457cc0b6a47638d8bf6666d99bc3cf417d92724f092a6c5b0a2b68c68dcbf4` |
| 15 | `theorem` | [denominator_reverse](../../../../../mathematics/Topology/GeneralTopology/Rational/Variantf3ae5dd5d428964b9d8ea6e997c15f7caff9180800702d554728658a4fac8223.lean/declarations/denominator-reverse--58e7c7f561b85c9a09dd44ea.md) | 146 | `result-track:58e7c7f561b85c9a09dd44eaf20d2d3826766e09128436deb29de3805d484571` |
| 16 | `theorem` | [numerator_reverse](../../../../../mathematics/Topology/GeneralTopology/Rational/Variantf3ae5dd5d428964b9d8ea6e997c15f7caff9180800702d554728658a4fac8223.lean/declarations/numerator-reverse--6e227b9fe730fb070c80c97b.md) | 158 | `result-track:6e227b9fe730fb070c80c97bce95e6063684640ecca3a15be1ecd26eccf053cf` |
| 17 | `theorem` | [eval_reverse](../../../../../mathematics/Topology/GeneralTopology/Rational/Variantf3ae5dd5d428964b9d8ea6e997c15f7caff9180800702d554728658a4fac8223.lean/declarations/eval-reverse--2840e384061c54e75819789d.md) | 173 | `result-track:2840e384061c54e75819789d85d017ed06701aa6b5f8b27b610b611a1299a3ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
